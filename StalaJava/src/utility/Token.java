package utility;

public class Token {
	public final String label = getLabel();
	
	public TOKEN_TYPE type;
	public String value;
	
	public String file;
	public int column;
	public int row;
	
	public Token next;
	public Token conditionalNext;
	
	
	private static long uid = 0;
	private static String getLabel()
	{
		uid++;
		return "t" + uid;
	}
}
