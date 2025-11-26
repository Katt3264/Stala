package utility;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.Map.Entry;

import main.Tokenizer;

public class Program {
	
	public final long dataStackSize = 256*256;
	public final long variableStackSize = 256*256;
	public final long memorySize = 256*256*256;
	
	public String[] paths;
	public Source main;
	
	public Map<String, Source> sourceMap = new TreeMap<String, Source>();
	
	
	public static Program parseProgram(Iterator<Token> source, String input, String[] paths)
	{
		Program prog = new Program();
		prog.paths = paths;
		prog.main = Source.parseSource(source, input);
		prog.sourceMap.put(input, prog.main);
		
		recursiveSourceInclude(prog.main, prog);
		
		return prog;
	}
	
	public static void recursiveSourceInclude(Source source, Program prog)
	{
		for(String include : source.includes)
		{
			if(!prog.sourceMap.containsKey(include))
			{
				Source includeSource = findSource(include, prog.paths);
				if(includeSource == null)
					Logger.fail("in source: " + source.name + " could not find include: " + include);
				
				prog.sourceMap.put(include, includeSource);
				recursiveSourceInclude(includeSource, prog);
			}
		}
	}
	
	public static Source findSource(String name, String[] searchPaths)
	{
		File f = new File(name);
		if(f.exists() && !f.isDirectory()) { 
		    try {
				return Source.parseSource(new Tokenizer(new FileCharacterIterator(f), name), name);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
		}
		
		for(String path : searchPaths) 
		{
			f = new File(path + "/" + name);
			if(f.exists() && !f.isDirectory()) { 
			    try {
					return Source.parseSource(new Tokenizer(new FileCharacterIterator(f), name), name);
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
	
	public Function getExternalFunction(Source s, Program p, String name, Token t)
	{
		Function ret = null;
		for(Entry<String, Source> ss : p.sourceMap.entrySet())
		{
			Function f = ss.getValue().functionMap.get(name);
			if(f != null)
			{
				if(ret == null)
					ret = f;
				else
					Logger.failToken("multiple external functions of name: \"" + name + "\"", t);
			}
		}
		return ret;
	}
	
}
