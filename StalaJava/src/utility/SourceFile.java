package utility;

import java.util.Map;
import java.util.TreeMap;

public class SourceFile {
	
	public String name;
	
	public Map<String, Function> functionMap = new TreeMap<String, Function>();

	public Map<String, String> stringMap = new TreeMap<String, String>();
	
	public Map<String, SourceFile> includesMap = new TreeMap<String, SourceFile>();

}
