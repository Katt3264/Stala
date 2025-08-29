package main;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

import utility.Function;
import utility.Program;
import utility.SourceFile;
import utility.StringUtill;
import utility.TOKEN_TYPE;
import utility.Token;
import utility.Logger;

public class TokenParse {
	
	public static Program parseProgram(File file)
	{
		Program program = new Program();
		parseSourceFile(file, program);
		program.main = program.sourceMap.get(file.getName());
		return program;
	}
	
	private static void parseSourceFile(File file, Program p)
	{
		Tokenizer t = new Tokenizer(file);
		SourceFile s = new SourceFile();
		s.name = file.getName();
		
		
		p.sourceMap.put(s.name, s);
		
		while(t.hasToken())
		{
			if(t.getToken().type == TOKEN_TYPE.FUNCTION)
			{
				Function func = parseFunction(t, s, p);
				if(!s.functionMap.containsKey(func.name))
					s.functionMap.put(func.name, func);
				else
					throw new RuntimeException("duplicate function name");
			}
			else if(t.getToken().type == TOKEN_TYPE.INCLUDE)
			{
				if(!t.moveNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.INCLUDE, t.getLastToken());
				
				if(t.getToken().type != TOKEN_TYPE.STRING)
					Logger.failToken("expects " + TOKEN_TYPE.STRING + " after " + TOKEN_TYPE.INCLUDE, t.getToken());
				
				String name = StringUtill.unEscapeString(t.getToken().value);
				if(!p.sourceMap.containsKey(name))
					if(!parseIncludeSourceFile(p, name))
						Logger.failToken("no file found with name: " + name, t.getToken());
				
				s.includesMap.put(name, p.sourceMap.get(name));
				t.moveNext();
			}
			else
				Logger.failToken("unexpected token", t.getToken());
		}
	}
	
	//TODO: duplication check
	private static boolean parseIncludeSourceFile(Program p, String name)
	{
		File f = new File(name);
		if(f.exists() && !f.isDirectory()) 
		{
			parseSourceFile(f, p);
			return true;
		}
		
		String[] paths = Main.sources.split(":");
		for(String str : paths)
		{
			f = new File(str + "/" + name);
			if(f.exists() && !f.isDirectory()) 
			{
				parseSourceFile(f, p);
				return true;
			}
		}
		return false;
	}

	private static Function parseFunction(Tokenizer t, SourceFile s, Program p)
	{
		Function function = new Function();
		if(!t.moveNext())
			Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.FUNCTION, t.getLastToken());
		if(t.getToken().type != TOKEN_TYPE.IDENTIFIER)
			Logger.failToken("expects " + TOKEN_TYPE.IDENTIFIER + " as function name", t.getToken());
		function.name = t.getToken().value;
		if(s.functionMap.containsKey(function.name))
			Logger.failToken("duplicate function name: \"" + function.name + "\"", t.getToken());
		if(!t.moveNext())
			Logger.failToken("ran out of tokens after parsing function name", t.getLastToken());
		
		
		while(t.getToken().type != TOKEN_TYPE.BLOCK_START)
		{
			if(t.getToken().type != TOKEN_TYPE.IDENTIFIER)
				Logger.failToken("expects " + TOKEN_TYPE.IDENTIFIER + " as function argument", t.getToken());
			String name = t.getToken().value;
			if(function.args.contains(name))
				Logger.failToken("duplicate argument name: \"" + name + "\"", t.getToken());
			if(!t.moveNext())
				Logger.failToken("ran out of tokens after parsing function arguments", t.getLastToken());
			function.args.add(name);
			function.locals.add(name);
		}
		
		if(!t.moveNext())
			Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.BLOCK_START, t.getLastToken());
		function.content = parseFunctionBody(t, s, p, function);
		return function;
	}

	private static Token parseFunctionBody(Tokenizer t, SourceFile s, Program p, Function f)
	{
		Token first = null;
		Token prev = null;
		Stack<List<Token>> blockStack = new Stack<List<Token>>();
		
		while(true)
		{
			Token token = t.getToken();
			
			if(prev != null) {prev.next = token; prev = token;}
			if(first == null) {first = token; prev = token;}
			
			TOKEN_TYPE type = token.type;
			//String value = token.right;
			
			if(type == TOKEN_TYPE.NUMBER 
					|| type == TOKEN_TYPE.IDENTIFIER
					|| type == TOKEN_TYPE.RETURN
					)
			{
			}
			else if(type == TOKEN_TYPE.STRING)
			{
				String value = token.value;
				s.stringMap.put(token.label, value);
			}
			else if(type == TOKEN_TYPE.LET)
			{
				if(!t.moveNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.LET, t.getLastToken());
				Token nextToken = t.getToken();
				if(nextToken.type != TOKEN_TYPE.IDENTIFIER)
					Logger.failToken("expects " + TOKEN_TYPE.IDENTIFIER + " after " + TOKEN_TYPE.LET, t.getToken());
				token.value = nextToken.value;
				if(f.locals.indexOf(nextToken.value) == -1)
				{
					f.locals.add(nextToken.value);
				}
			}
			else if(type == TOKEN_TYPE.ASM)
			{
				if(!t.moveNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.ASM, t.getLastToken());
				Token nextToken = t.getToken();
				if(nextToken.type != TOKEN_TYPE.STRING)
					Logger.failToken("expects " + TOKEN_TYPE.STRING + " after " + TOKEN_TYPE.ASM, t.getToken());
				token.value = nextToken.value;
			}
			else if(type == TOKEN_TYPE.INTRINSIC)
			{
				if(!t.moveNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.INTRINSIC, t.getLastToken());
				Token nextToken = t.getToken();
				if(nextToken.type != TOKEN_TYPE.STRING)
					Logger.failToken("expects " + TOKEN_TYPE.STRING + " after " + TOKEN_TYPE.INTRINSIC, t.getToken());
				token.value = nextToken.value;
			}
			else if(type == TOKEN_TYPE.WHILE)
			{
				List<Token> chain = new ArrayList<Token>();
				chain.add(token);
				blockStack.push(chain);
			}
			else if(type == TOKEN_TYPE.IF)
			{
				List<Token> chain = new ArrayList<Token>();
				if(blockStack.size() != 0)
					if(blockStack.peek().size() == 1)
						if(blockStack.peek().get(0).type == TOKEN_TYPE.WHILE)
							chain = blockStack.pop();
				chain.add(token);
				blockStack.push(chain);
			}
			else if(type == TOKEN_TYPE.ELIF)
			{
				if(blockStack.isEmpty())
					Logger.failToken(TOKEN_TYPE.ELIF + " can not be the start of a chain", token);
				Token lastToken = blockStack.peek().get(blockStack.peek().size() - 1);
				if(lastToken.type != TOKEN_TYPE.ELSE)
					Logger.failToken(TOKEN_TYPE.ELIF + " can only come after " + TOKEN_TYPE.ELSE, token);
				List<Token> chain = blockStack.peek();
				chain.add(token);
			}
			else if(type == TOKEN_TYPE.ELSE)
			{
				if(blockStack.isEmpty())
					Logger.failToken(TOKEN_TYPE.ELSE + " can not be the start of a chain", token);
				Token lastToken = blockStack.peek().get(blockStack.peek().size() - 1);
				if(lastToken.type != TOKEN_TYPE.IF && lastToken.type != TOKEN_TYPE.ELIF)
					Logger.failToken(TOKEN_TYPE.ELSE + " can only come after " + TOKEN_TYPE.IF + " or " + TOKEN_TYPE.ELIF + " not: " + lastToken.type, token);
				if(blockStack.peek().get(0).type == TOKEN_TYPE.WHILE)
					Logger.failToken(TOKEN_TYPE.ELSE + " can not be part of a chain begining with " + TOKEN_TYPE.WHILE, token);
				List<Token> chain = blockStack.peek();
				chain.add(token);
			}
			else if(type == TOKEN_TYPE.BLOCK_END)
			{
				// end of function
				if(blockStack.size() == 0)
				{
					//TODO: check elements in data stack
					t.moveNext();
					return first;
				}
				else
				{
					List<Token> chain = blockStack.pop();
					
					if(chain.get(0).type == TOKEN_TYPE.WHILE)
					{
						if(chain.size() == 2)
						{
							if(chain.get(1).type == TOKEN_TYPE.IF)
							{
								chain.get(1).conditionalNext = token;
								token.conditionalNext = chain.get(0);
							}
							else
								throw new RuntimeException("invalid chain sequence");
						}
						else
							Logger.failToken(TOKEN_TYPE.WHILE + " must be followed by " + TOKEN_TYPE.IF, token);
					}
					else
					{
						for(int i = 0; i < chain.size(); i++)
						{
							Token chainToken = chain.get(i);
							
							// set the next token to end or next
							Token nextChainToken = token;
							if(i < chain.size() - 1)
								nextChainToken = chain.get(i+1);
							
							if(chainToken.type == TOKEN_TYPE.ELSE)
							{
								chainToken.conditionalNext = token;
							}
							else if(chainToken.type == TOKEN_TYPE.IF
									&&(nextChainToken.type == TOKEN_TYPE.ELSE || nextChainToken.type == TOKEN_TYPE.BLOCK_END))
							{
								chainToken.conditionalNext = nextChainToken;
							}
							else if(chainToken.type == TOKEN_TYPE.ELIF
								&& (nextChainToken.type == TOKEN_TYPE.ELSE || nextChainToken.type == TOKEN_TYPE.BLOCK_END))
							{
								chainToken.conditionalNext = nextChainToken;
							}
							else
								throw new RuntimeException("invalid chain sequence");
						}
					}
				}
			}
			else
				Logger.failToken("invalid token in function body", token);
			
			if(!t.moveNext())
				Logger.failToken("ran out of tokens parsing function body", t.getLastToken());
			
		}
	}
}