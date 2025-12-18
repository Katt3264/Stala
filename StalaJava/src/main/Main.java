package main;

import java.io.File;
import java.io.FileNotFoundException;
import compiler.CompilerMacOSx86_64;
import utility.FileCharacterIterator;
import utility.Program;

public class Main {
	
	public static String input = "";
	public static String output = "";
	public static String sources = "../:../stdlib:stdlib";
	
	public static boolean run = false;
	public static String[] progArgs = new String[0];
	
	public static void main(String[] args) throws FileNotFoundException
	{
		//String progIn = "stala ../examples/syntax.stala -out ../outputs/output";
		//String progIn = "stala ../examples/helloworld.stala -out ../outputs/output";
		//String progIn = "stala ../examples/0to99.stala -out ../outputs/output";
		//String progIn = "stala ../examples/primes.stala -out ../outputs/output";
		//String progIn = "stala ../examples/fibonacci.stala -out ../outputs/output";
		//String progIn = "stala ../examples/factorial.stala -out ../outputs/output";
		//String progIn = "stala ../examples/args.stala -out ../outputs/output";
		
		//String progIn = "stala ../compiler.stala -out ../outputs/output";
		//progArgs = new String[]{"arg1 arg2 arg3 arg4 arg5"};
		
		//args = progIn.split(" ");
		
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
		
		if(input.equals("") || output.equals(""))
		{
			System.out.println("invalid arguments, use:");
			System.out.println("stala <Input> -out <Output>");
			System.out.println("-src <source1:source2:...>");
			return;
		}
		
		Program prog = Program.parseProgram(new Tokenizer(new FileCharacterIterator(new File(input)), input), input, sources.split(":"));
		
		try {
			CompilerMacOSx86_64.compile(prog);
			
			if(run)
				CompilerMacOSx86_64.run();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
