package utility;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;

public class Function {
	
	public final String name;
	public final String label;
	public List<String> args = new ArrayList<String>();
	public List<String> locals = new ArrayList<String>();
	public Map<String, String> stringMap = new TreeMap<String, String>();
	
	public Token content;

	private static long uuid = 1;
	public Function(String name)
	{
		this.name = name;
		this.label = "f_" + uuid;
		uuid++;
	}
	
	public static Function parseFunction(Iterator<Token> tokenIter)
	{
		Token token = tokenIter.next();
		
		if(token.type != TOKEN_TYPE.IDENTIFIER)
			Logger.failToken("expects " + TOKEN_TYPE.IDENTIFIER + " as function name", token);
		
		Function function = new Function(token.text);
		
		if(!tokenIter.hasNext())
			Logger.failToken("ran out of tokens after parsing function name", token);
		
		token = tokenIter.next();
		
		while(token.type != TOKEN_TYPE.BLOCK_START)
		{
			if(token.type != TOKEN_TYPE.IDENTIFIER)
				Logger.failToken("expects " + TOKEN_TYPE.IDENTIFIER + " as function argument", token);
			
			String name = token.text;
			if(function.args.contains(name))
				Logger.failToken("duplicate argument name: \"" + name + "\"", token);
			
			if(!tokenIter.hasNext())
				Logger.failToken("ran out of tokens after parsing function arguments", token);
			
			token = tokenIter.next();
			
			function.args.add(name);
			function.locals.add(name);
		}
		
		if(!tokenIter.hasNext())
			Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.BLOCK_START, token);
		
		token = tokenIter.next();
		
		function.content = token;
		Stack<List<Token>> blockStack = new Stack<List<Token>>();

		while(true)
		{
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
				String value = token.text;
				function.stringMap.put(token.label, value);
			}
			else if(type == TOKEN_TYPE.LET)
			{
				if(!tokenIter.hasNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.LET, token);
				
				Token nextToken = tokenIter.next();
				
				if(nextToken.type != TOKEN_TYPE.IDENTIFIER)
					Logger.failToken("expects " + TOKEN_TYPE.IDENTIFIER + " after " + TOKEN_TYPE.LET, nextToken);
				
				token.text = nextToken.text;
				
				if(function.locals.indexOf(nextToken.text) == -1)
					function.locals.add(nextToken.text);
				
			}
			else if(type == TOKEN_TYPE.ASM)
			{
				if(!tokenIter.hasNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.ASM, token);
				
				Token nextToken = tokenIter.next();
				
				if(nextToken.type != TOKEN_TYPE.STRING)
					Logger.failToken("expects " + TOKEN_TYPE.STRING + " after " + TOKEN_TYPE.ASM, nextToken);
				
				token.text = nextToken.text;
			}
			else if(type == TOKEN_TYPE.INTRINSIC)
			{
				if(!tokenIter.hasNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.INTRINSIC, token);
				
				Token nextToken = tokenIter.next();
				
				if(nextToken.type != TOKEN_TYPE.STRING)
					Logger.failToken("expects " + TOKEN_TYPE.STRING + " after " + TOKEN_TYPE.INTRINSIC, nextToken);
				
				token.text = nextToken.text;
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
					break;
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
			
			if(!tokenIter.hasNext())
				Logger.failToken("ran out of tokens parsing function body", token);
			
			
			Token newToken = tokenIter.next();
			token.next = newToken;
			token = newToken;
			
		}
		
		return function;
	}
}
