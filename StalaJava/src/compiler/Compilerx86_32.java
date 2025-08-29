package compiler;

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

public class Compilerx86_32 {
	
	private static final int BYTES_PER_REGISTER = 4;
	
	public static void compile(Program program) throws IOException
	{
		try {
			PrintWriter progOut = new PrintWriter(new File(Main.output + ".asm"));
			printMacOSx86_64(program, progOut);
			progOut.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

	}
	
	private static void printDataPush(PrintWriter out, String register)
	{
		out.println("mov [ebp], " + register);
		out.println("add ebp, " + BYTES_PER_REGISTER);
	}
	
	private static void printDataPop(PrintWriter out, String register)
	{
		out.println("sub ebp, " + BYTES_PER_REGISTER);
		out.println("mov " + register + ", [ebp]");
	}
	
	private static void printMacOSx86_64(Program program, PrintWriter out)
	{
		out.println("global _main");
		out.println("section .text");
		out.println("");
		
		out.println("_main:");
		out.println("mov [rel org_sp], esp");
		out.println("mov [rel org_bp], ebp");
		out.println("lea eax, [rel mem]");
		out.println("mov [rel mem_ptr], eax");
		out.println("lea ebp, [rel dat_stack]");
		out.println("lea eax, [rel loc_stack]");
		out.println("mov [rel loc_stack_ptr], eax");
		out.println("mov eax, [rel org_sp]");
		printDataPush(out, "eax");
		out.println("call " + program.main.functionMap.get("main").label);
		out.println("_exit:");
		//out.println("mov eax, 0x2000001");
		//out.println("mov edi, 0");
		//out.println("syscall");
		out.println("ret");
		out.println("");
		
		for(Entry<String, SourceFile> nameSource : program.sourceMap.entrySet())
		{
			for(Entry<String, Function> nameFunction : nameSource.getValue().functionMap.entrySet())
			{
				printFunctionMacOSx86_64(nameFunction.getValue(), nameSource.getValue(), program, out);
			}
		}
		
		out.println("section .data");
		//out.println("");
		//out.println("str_1: db \"Hello, world!\",10");
		//out.println(".len: equ $ - str_1");
		
		for(Entry<String, SourceFile> nameSource : program.sourceMap.entrySet())
		{
			for(Entry<String, String> nameString : nameSource.getValue().stringMap.entrySet())
			{
				out.print(nameString.getKey() + ": db ");
				byte[] bytes = StringUtill.unEscapeString(nameString.getValue()).getBytes();
				for(byte b : bytes)
				{
					out.print(b + ",");
				}
				out.println("0");
			}
		}
		out.println("");
		
		out.println("section .bss");
		out.println(";; some global vars");
		out.println("org_sp: resd 1");
		out.println("org_bp: resd 1");
		out.println("");
		
		out.println(";; stack for local variables");
		out.println("loc_stack_ptr: resd 1");
		out.println("loc_stack: resd " + program.variableStackSize);
		out.println("loc_stack_end:");
		out.println("");
		
		out.println(";; stack for data elements");
		out.println("dat_stack_ptr: resd 1");
		out.println("dat_stack: resd " + program.dataStackSize);
		out.println("dat_stack_end:");
		out.println("");
		
		out.println(";; memory region");
		out.println("mem_ptr: resd 1");
		out.println("mem: resb " + program.memorySize);
		out.println("mem_end:");
		out.println("");
	}
	
	private static void printFunctionMacOSx86_64(Function function, SourceFile s, Program p, PrintWriter out)
	{
		out.println(function.label + ":");
		
		// variable pointer
		out.println("mov eax, [rel loc_stack_ptr]");
		out.println("add eax, " + (BYTES_PER_REGISTER*function.locals.size()));
		out.println("mov [rel loc_stack_ptr], eax");
		
		// arguments are poped from last to first
		for(int i = function.args.size() - 1; i >= 0; i--)
		{
			int index = i;
			out.println(";; put function argument in local slot: " + i);
			printDataPop(out, "eax");
			out.println("mov ebx, [rel loc_stack_ptr]");
			out.println("mov [ebx - " + (BYTES_PER_REGISTER*index) + "], eax");
		}
		
		printTokensMacOSx86_64(function, s, p, out);
		
		out.println(";; end function");
		out.println("end_" + function.label + ":");
		
		// set variable pointer
		out.println("mov eax, [rel loc_stack_ptr]");
		out.println("sub eax, " + (BYTES_PER_REGISTER*function.locals.size()));
		out.println("mov [rel loc_stack_ptr], eax");
		
		out.println("ret");
		out.println("");
	}
	
	private static void printTokensMacOSx86_64(Function f, SourceFile s, Program p, PrintWriter out)
	{
		Token token = f.content;
		
		while(token != null)
		{
			TOKEN_TYPE type = token.type;
			String value = token.value;
			
			if(type == TOKEN_TYPE.NUMBER)
			{
				out.println(";; push number");
				out.println("mov eax, " + Long.decode(value));
				printDataPush(out, "eax");
			}
			else if(type == TOKEN_TYPE.STRING)
			{
				out.println(";; push string");
				out.println("lea eax, [rel " + token.label + "]");
				printDataPush(out, "eax");
			}
			/*else if(type == TOKEN_TYPE.MEMORY)
			{
				out.println(";; memory");
				printDataPop(out, "eax");
				out.println("mov ebx, [rel mem_ptr]");
				printDataPush(out, "ebx");
				out.println("add ebx, eax");
				out.println("mov [rel mem_ptr], ebx");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_READ_BYTE)
			{
				out.println(";; read");
				printDataPop(out, "eax");
				out.println("movzx ebx, byte [eax]");
				printDataPush(out, "ebx");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_WRITE_BYTE)
			{
				out.println(";; write");
				printDataPop(out, "ebx");
				printDataPop(out, "eax");
				out.println("mov [eax], bl");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_MINUS)
			{
				out.println(";; minus");
				printDataPop(out, "eax");
				printDataPop(out, "ebx");
				out.println("sub ebx, eax");
				printDataPush(out, "ebx");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_MULTIPLY)
			{
				out.println(";; multiply");
				printDataPop(out, "eax");
				printDataPop(out, "ebx");
				out.println("mul ebx");
				printDataPush(out, "eax");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_SHIFT_RIGHT)
			{
				out.println(";; shift right");
				printDataPop(out, "ecx");
				printDataPop(out, "eax");
				out.println("shr eax, cl");
				printDataPush(out, "eax");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_BITWISE_AND)
			{
				out.println(";; bitwise and");
				printDataPop(out, "eax");
				printDataPop(out, "ebx");
				out.println("and eax, ebx");
				printDataPush(out, "eax");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_BITWISE_NOT)
			{
				out.println(";; bitwise not");
				printDataPop(out, "eax");
				out.println("not eax");
				printDataPush(out, "eax");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_EQUALS)
			{
				out.println(";; equals");
				out.println("mov ecx, 0");
				out.println("mov edx, 1");
				printDataPop(out, "eax");
				printDataPop(out, "ebx");
				out.println("cmp ebx, eax");
				out.println("cmove ecx, edx");
				printDataPush(out, "ecx");
			}
			else if(type == TOKEN_TYPE.INTRINSIC_GREATER_THAN)
			{
				out.println(";; greater than");
				out.println("mov ecx, 0");
				out.println("mov edx, 1");
				printDataPop(out, "eax");
				printDataPop(out, "ebx");
				out.println("cmp eax, ebx");
				out.println("cmovl ecx, edx");
				printDataPush(out, "ecx");
			}*/
			else if(type == TOKEN_TYPE.IF)
			{
				out.println(";; if");
				printDataPop(out, "eax");
				out.println("test eax, eax");
				Token toToken = token.conditionalNext;
				String toLable = toToken.label;
				out.println("jz " + toLable);
			}
			else if(type == TOKEN_TYPE.ELIF)
			{
				out.println(";; elif");
				printDataPop(out, "eax");
				out.println("test eax, eax");
				Token toToken = token.conditionalNext;
				String toLable = toToken.label;
				out.println("jz " + toLable);
			}
			else if(type == TOKEN_TYPE.ELSE)
			{
				out.println(";; else");
				Token toToken = token.conditionalNext;
				String toLable = toToken.label;
				out.println("jmp " + toLable);
				String lable = token.label + ":";
				out.println(lable);
			}
			else if(type == TOKEN_TYPE.BLOCK_END)
			{
				out.println(";; end");
				if(token.conditionalNext != null)
				{
					Token toToken = token.conditionalNext;
					String toLable = toToken.label;
					out.println("jmp " + toLable);
				}
				String lable = token.label + ":";
				out.println(lable);
			}
			else if(type == TOKEN_TYPE.WHILE)
			{
				out.println(";; while");
				String toLable = token.label + ":";
				out.println(toLable);
			}
			else if(type == TOKEN_TYPE.RETURN)
			{
				out.println(";; return");
				out.println("jmp end_" + f.label);
			}
			else if(type == TOKEN_TYPE.LET)
			{
				int index = f.locals.indexOf(value);
				out.println(";; assign local");
				printDataPop(out, "eax");
				out.println("mov ebx, [rel loc_stack_ptr]");
				out.println("mov [ebx - " + (BYTES_PER_REGISTER*index) + "], eax");
			}
			else if(type == TOKEN_TYPE.ASM)
			{
				out.println(";; asm");
				out.println(StringUtill.unEscapeString(token.value));
			}
			else if(type == TOKEN_TYPE.IDENTIFIER)
			{
				// Is a local variable
				if(f.locals.indexOf(value) != -1)
				{
					int index = f.locals.indexOf(value);
					out.println(";; push local");
					out.println("mov eax, [rel loc_stack_ptr]");
					out.println("mov eax, [eax - " + (index * BYTES_PER_REGISTER) + "]");
					printDataPush(out, "eax");
				}
				// Is a file local function
				else if(s.functionMap.containsKey(value))
				{
					out.println(";; function call");
					out.println("call " + s.functionMap.get(value).label);
				}
				// Is function in external file
				else if(p.getExternalFunction(s, p, value, token) != null)
				{
					Function fn = p.getExternalFunction(s, p, value, token);
					out.println(";; function call");
					out.println("call " + fn.label);
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
