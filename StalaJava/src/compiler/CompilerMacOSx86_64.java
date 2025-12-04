package compiler;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Map.Entry;

import main.Main;
import utility.Function;
import utility.Logger;
import utility.Program;
import utility.Source;
import utility.StringUtill;
import utility.TOKEN_TYPE;
import utility.Token;

public class CompilerMacOSx86_64 {
	
	private static final int BYTES_PER_REGISTER = 8;
	
	public static void compile(Program program) throws IOException
	{
		String cmd[] = new String[] {
				"/usr/local/bin/nasm -f macho64 " + Main.output + ".asm",
				"ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o " 
				+ Main.output + " " + Main.output + ".o",
				"chmod +x " + Main.output,
		};
		
		try {
			PrintWriter progOut = new PrintWriter(new File(Main.output + ".asm"));
			printMacOSx86_64(program, progOut);
			progOut.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		for(String str : cmd)
		{
			System.out.println("[EXEC]" + str);
			Process process = Runtime.getRuntime().exec(str, null /*new String[]{"PATH=/usr/local/bin:/usr/bin:/bin"}*/);
			InputStream out = process.getInputStream();
			InputStream err = process.getErrorStream();
			
			int i = 0;
			while((i = err.read()) != -1)
			{
				System.err.print((char)i);
			}
			i = 0;
			while((i = out.read()) != -1)
			{
				System.out.print((char)i);
			}
		}
	}
	
	public static void run() throws IOException
	{
		String str = "./" + Main.output;
		for(String s : Main.progArgs)
		{
			str += " " + s;
		}
		
		System.out.println("[EXEC]" + str);
		Process process = Runtime.getRuntime().exec(str, null /*new String[]{"PATH=/usr/local/bin:/usr/bin:/bin"}*/);
		InputStream out = process.getInputStream();
		InputStream err = process.getErrorStream();
		
		while(true)
		{
			boolean action = false;
			if(System.in.available() != 0)
			{
				process.getOutputStream().write((char)System.in.read());
				process.getOutputStream().flush();
				action = true;
			}
			if(out.available() != 0)
			{
				System.out.write((char)out.read());
				System.out.flush();
				action = true;
			}
			if(err.available() != 0)
			{
				System.err.write((char)err.read());
				System.err.flush();
				action = true;
			}
			
			if(!process.isAlive() && !action)
				break;
		}
	}
	
	private static void printDataPush(PrintWriter out, String register)
	{
		out.println("mov [rbp], " + register);
		out.println("add rbp, " + BYTES_PER_REGISTER);
	}
	
	private static void printDataPop(PrintWriter out, String register)
	{
		out.println("sub rbp, " + BYTES_PER_REGISTER);
		out.println("mov " + register + ", [rbp]");
	}
	
	private static void printMacOSx86_64(Program program, PrintWriter out)
	{
		out.println("global _main");
		out.println("section .text");
		out.println("");
		
		out.println("_main:");
		out.println("mov [rel org_rsp], rsp");
		out.println("mov [rel org_rbp], rbp");
		
		out.println("lea rax, [rel mem]");
		out.println("mov [rel mem_ptr], rax");
		
		out.println("lea rbp, [rel dat_stack]");
		
		out.println("lea rax, [rel loc_stack]");
		out.println("mov [rel loc_stack_ptr], rax");
		
		out.println("mov rax, [rel org_rsp]");
		//printDataPush(out, "rax");
		
		printDataPush(out, "rdx"); // ENVP
		printDataPush(out, "rdi"); // ARGC
		printDataPush(out, "rsi"); // ARGV
		
		out.println("call " + program.main.functionMap.get("main").label);
		out.println("_exit:");
		out.println("mov rax, 0x2000001");	//TODO: OS agnostic exit
		out.println("mov rdi, 0");
		out.println("syscall");
		out.println("");
		
		for(Entry<String, Source> nameSource : program.sourceMap.entrySet())
		{
			for(Entry<String, Function> nameFunction : nameSource.getValue().functionMap.entrySet())
			{
				printFunctionMacOSx86_64(nameFunction.getValue(), nameSource.getValue(), program, out);
			}
		}
		
		out.println("section .data");
		
		for(Entry<String, Source> nameSource : program.sourceMap.entrySet())
		{
			for(Entry<String, Function> nameFunction : nameSource.getValue().functionMap.entrySet())
			{
				for(Entry<String, String> nameString : nameFunction.getValue().stringMap.entrySet())
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
		}
		out.println("");
		
		out.println("section .bss");
		out.println(";; some global vars");
		out.println("org_rsp: resq 1");
		out.println("org_rbp: resq 1");
		out.println("");
		
		out.println(";; stack for local variables");
		out.println("loc_stack_ptr: resq 1");
		out.println("loc_stack: resq " + program.variableStackSize);
		out.println("loc_stack_end:");
		out.println("");
		
		out.println(";; stack for data elements");
		//out.println("dat_stack_ptr: resq 1");
		out.println("dat_stack: resq " + program.dataStackSize);
		out.println("dat_stack_end:");
		out.println("");
		
		out.println(";; memory region");
		out.println("mem_ptr: resq 1");
		out.println("mem: resb " + program.memorySize);
		out.println("mem_end:");
		out.println("");
	}
	
	private static void printFunctionMacOSx86_64(Function function, Source s, Program p, PrintWriter out)
	{
		out.println(function.label + ":");
		out.println(";; increment local pointer");
		out.println("mov rax, [rel loc_stack_ptr]");
		out.println("add rax, " + (BYTES_PER_REGISTER*function.locals.size()));
		out.println("mov [rel loc_stack_ptr], rax");
		out.println(";; arguments to local");
		for(int i = function.args.size() - 1; i >= 0; i--)
		{
			printDataPop(out, "rax");
			out.println("mov rbx, [rel loc_stack_ptr]");
			out.println("mov [rbx - " + (BYTES_PER_REGISTER*i) + "], rax");
		}
		out.println(";; function body");
		printTokensMacOSx86_64(function, s, p, out);
		out.println(";; end function");
		out.println("end_" + function.label + ":");
		
		out.println(";; decrement local pointer");
		out.println("mov rax, [rel loc_stack_ptr]");
		out.println("sub rax, " + (BYTES_PER_REGISTER*function.locals.size()));
		out.println("mov [rel loc_stack_ptr], rax");
		out.println("ret");
		out.println("");
	}
	
	private static void printTokensMacOSx86_64(Function f, Source s, Program p, PrintWriter out)
	{
		Token token = f.content;
		
		while(token != null)
		{
			TOKEN_TYPE type = token.type;
			String value = token.text;
			
			if(type == TOKEN_TYPE.NUMBER)
			{
				out.println(";; push number");
				out.println("mov rax, " + Long.decode(value));
				printDataPush(out, "rax");
			}
			else if(type == TOKEN_TYPE.STRING)
			{
				out.println(";; push string");
				out.println("lea rax, [rel " + token.label + "]");
				printDataPush(out, "rax");
			}
			else if(type == TOKEN_TYPE.IF)
			{
				out.println(";; if");
				printDataPop(out, "rax");
				out.println("test rax, rax");
				Token toToken = token.conditionalNext;
				String toLable = toToken.label;
				out.println("jz " + toLable);
			}
			else if(type == TOKEN_TYPE.ELIF)
			{
				out.println(";; elif");
				printDataPop(out, "rax");
				out.println("test rax, rax");
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
				printDataPop(out, "rax");
				out.println("mov rbx, [rel loc_stack_ptr]");
				out.println("mov [rbx - " + (8*index) + "], rax");
			}
			else if(type == TOKEN_TYPE.ASM)
			{
				out.println(";; asm");
				out.println(StringUtill.unEscapeString(token.text));
			}
			else if(type == TOKEN_TYPE.IDENTIFIER)
			{
				// Is a local variable
				if(f.locals.indexOf(value) != -1)
				{
					int index = f.locals.indexOf(value);
					
					out.println(";; push local");
					out.println("mov rax, [rel loc_stack_ptr]");
					out.println("mov rax, [rax - " + (index * 8) + "]");
					printDataPush(out, "rax");
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
