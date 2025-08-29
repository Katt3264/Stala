package utility;

import java.util.ArrayList;
import java.util.List;

public class Function {
	
	public String name;
	public String label = getLabel();
	public List<String> args = new ArrayList<String>();
	public List<String> locals = new ArrayList<String>();
	public Token content;

	
	private static long uid = 0;
	private static String getLabel()
	{
		uid++;
		return "f" + uid;
	}
}
