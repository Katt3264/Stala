package main;

import java.io.File;

import byteCompile.CompilerStalaBytes;
import compiler.CompilerMacOSx86_64;
import utility.Program;

public class Main {
	
	public static String output = "output";
	public static String input = "";
	public static String sources = "../:../stdlib";
	public static boolean run = false;
	public static String[] progArgs = new String[0];
	
	
	public static void main(String[] args)
	{
		String progIn = "stala ../compiler.stala -out ../outputs/stala_compiler";
		
		args = progIn.split(" ");
		
		for(int i = 0; i < args.length; i++)
		{
			//System.out.println(args[i]);
			String arg = args[i];
			
			if(arg.equals("-out"))
			{
				output = args[i+1];
				i++;
			}
			else if(arg.equals("-src"))
			{
				sources = sources + args[i+1];
				i++;
			}
			else if(i == 1) //Input file name
			{
				input = args[i];
			}
		}
		
		if(input.equals(""))
		{
			System.out.println("invalid arguments, use:");
			System.out.println("stala <Input> -out <Output>");
			System.out.println("-src <source1:source2:...>");
			return;
		}
		
		Program prog = TokenParse.parseProgram(new File(input));
		
		try {
			//Compilerx86_32.compile(prog);
			
			CompilerMacOSx86_64.compile(prog);
			//CompilerMacOSx86_64.run();
			
			//CompilerStalaBytes.compile(prog);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
