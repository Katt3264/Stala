package byteCompile;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map.Entry;

import main.Main;

import utility.Function;
import utility.Logger;
import utility.Program;
import utility.SourceFile;
import utility.StringUtill;
import utility.TOKEN_TYPE;
import utility.Token;

public class CompilerStalaBytes {
	
	private static InstructionAccumulator ia;
	
	public static void compile(Program program) throws IOException
	{
		
		try {
			ia = new InstructionAccumulator();
			PrintWriter pw = new PrintWriter(new File(Main.output + ".txt"));
			printStalaBytes(program);
			ia.print(pw);
			pw.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	
	private static void printStalaBytes(Program program)
	{
		ia.instructionCall(program.main.functionMap.get("main").label);
		ia.instructionExit();
		
		for(Entry<String, SourceFile> nameSource : program.sourceMap.entrySet())
		{
			for(Entry<String, Function> nameFunction : nameSource.getValue().functionMap.entrySet())
			{
				printFunctionStalaBytes(nameFunction.getValue(), nameSource.getValue(), program);
			}
		}
		
		for(Entry<String, SourceFile> nameSource : program.sourceMap.entrySet())
		{
			for(Entry<String, String> nameString : nameSource.getValue().stringMap.entrySet())
			{
				ia.labelHere(nameString.getKey());
				byte[] bytes = StringUtill.unEscapeString(nameString.getValue()).getBytes();
				for(byte b : bytes)
				{
					ia.dataByte(b);
				}
				ia.dataByte((byte)0);
			}
		}
		
	}
	
	private static void printFunctionStalaBytes(Function function, SourceFile s, Program p)
	{
		ia.labelHere(function.label);
		ia.instructionLocals(function.locals.size());
		for(int i = function.args.size() - 1; i >= 0; i--)
		{
			int index = i;
			ia.instructionPopLocal(index);
		}
		printTokensStalaBytes(function, s, p);
		ia.instructionLocals(-function.locals.size());
		ia.instructionReturn();
	}
	
	private static void printTokensStalaBytes(Function f, SourceFile s, Program p)
	{
		Token token = f.content;
		
		while(token != null)
		{
			TOKEN_TYPE type = token.type;
			String value = token.value;
			
			if(type == TOKEN_TYPE.NUMBER)
			{
				ia.instructionPush(value);
			}
			else if(type == TOKEN_TYPE.STRING)
			{
				ia.instructionPushLabel(token.label);
			}
			else if(type == TOKEN_TYPE.INTRINSIC)
			{
				ia.instructionIntrinsic(value);
			}
			else if(type == TOKEN_TYPE.IF)
			{
				Token toToken = token.conditionalNext;
				String toLable = toToken.label;
				ia.instructionJumpZero(toLable);
			}
			else if(type == TOKEN_TYPE.ELIF)
			{
				Token toToken = token.conditionalNext;
				String toLable = toToken.label;
				ia.instructionJumpZero("jz " + toLable);
			}
			else if(type == TOKEN_TYPE.ELSE)
			{
				Token toToken = token.conditionalNext;
				String toLable = toToken.label;
				ia.instructionJump(toLable);
				String lable = token.label;
				ia.labelHere(lable);
			}
			else if(type == TOKEN_TYPE.BLOCK_END)
			{
				if(token.conditionalNext != null)
				{
					Token toToken = token.conditionalNext;
					String toLable = toToken.label;
					ia.instructionJump(toLable);
				}
				String lable = token.label;
				ia.labelHere(lable);
			}
			else if(type == TOKEN_TYPE.WHILE)
			{
				String toLable = token.label;
				ia.labelHere(toLable);
			}
			else if(type == TOKEN_TYPE.RETURN)
			{
				ia.instructionReturn();
			}
			else if(type == TOKEN_TYPE.LET)
			{
				int index = f.locals.indexOf(value);
				ia.instructionPopLocal(index);
			}
			else if(type == TOKEN_TYPE.ASM)
			{
				Logger.failToken("asm not allowed", token);
			}
			else if(type == TOKEN_TYPE.IDENTIFIER)
			{
				//TODO: check call stack limit not exceeded
				//TODO: check for ambiguity for function, local
				
				// Is a local variable
				if(f.locals.indexOf(value) != -1)
				{
					int index = f.locals.indexOf(value);
					ia.instructionPushLocal(index);
				}
				// Is a file local function
				else if(s.functionMap.containsKey(value))
				{
					ia.instructionCall(s.functionMap.get(value).label);
				}
				// Is function in external file
				else if(p.getExternalFunction(s, p, value, token) != null)
				{
					Function fn = p.getExternalFunction(s, p, value, token);
					ia.instructionCall(fn.label);
				}
				else
					Logger.failToken("undefined identifier", token);
			}
			else
				Logger.failToken("unimplemented token", token);
			token = token.next;
		}
	}
}
