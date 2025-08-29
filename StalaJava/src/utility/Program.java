package utility;

import java.util.Map;
import java.util.TreeMap;
import java.util.Map.Entry;

public class Program {
	
	public final long dataStackSize = 256*256;
	public final long variableStackSize = 256*256;
	public final long memorySize = 256*256*256;
	
	public SourceFile main;
	
	public Map<String, SourceFile> sourceMap = new TreeMap<String, SourceFile>();
	
	
	
	public Function getExternalFunction(SourceFile s, Program p, String name, Token t)
	{
		Function ret = null;
		for(Entry<String, SourceFile> ss : p.sourceMap.entrySet())
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
