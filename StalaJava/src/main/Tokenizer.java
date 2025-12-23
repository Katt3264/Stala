package main;

import java.util.Iterator;

import utility.Logger;
import utility.TOKEN_TYPE;
import utility.Token;
import utility.StringUtill;

public class Tokenizer implements Iterator<Token> {
	
	private Token next;
	private final String sourceName;
	private int row = 1;
	private int col = 1;
	private final Iterator<Character> charIter;
	
	private static String spacer = " \n\t";
	private static String lowerCase = "abcdefghijklmnopqrstuvwxyz";
	private static String upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	private static String alpha = upperCase + lowerCase;
	private static String number = "0123456789";
	private static String alphaNum = alpha + number;
	private static String identifierFirstChar = alpha + "_";
	private static String identifierOtherChar = alphaNum + "_";
	
	private static String[] specialIdentifiers = new String[] 
			{
					"+", "++", "-", "--", "*", "/", "%",
					">>", "<<",
					">", ">=", "<", "<=", "=", "!=", 
					"!8", "!ptr", "?8", "?ptr",
					"sizeof(ptr)",
			};
	
	public Tokenizer(Iterator<Character> charIter, String sourceName)
	{
		this.charIter = charIter;
		this.sourceName = sourceName;
		tryTokenizeNext();
	}
	
	@Override
	public boolean hasNext() 
	{
		if(next == null)
			tryTokenizeNext();
		
		return next != null;
	}

	@Override
	public Token next() 
	{
		Token ret = next;
		next = null;
		return ret;
	}
	
	/*public boolean hasToken()
	{
		return next != null;
	}
	
	public Token getToken()
	{
		if(next == null)
			throw new RuntimeException("no token");
		
		return next;
	}
	
	public Token getLastToken()
	{
		if(last == null)
			throw new RuntimeException("no token");
		
		return last;
	}
	
	public boolean moveNext()
	{
		last = next;
		next = null;
		tryTokenizeNext();
		
		if(next != null)
			last = null;
		
		return next != null;
	}*/
	
	// row col is one char ahead
	private int readNextChar()
	{
		if(!charIter.hasNext())
			return -1;
		
		char c = charIter.next();
		
		if(!StringUtill.validSourceFileCharacter(c))
			Logger.failTokenize("invalid character", sourceName, row, col);
		
		if(c == '\n')
		{
			col = 1;
			row++;
		}
		else
		{
			col++;
		}
		
		return c;
	}
	
	private void tryTokenizeNext()
	{
		String tok = "";
		int ch = readNextChar();
		
		boolean comment = false;
		boolean string = false;
		boolean escaped = false;
		
		int t_row = row;
		int t_col = col;
		
		// consume pre-token spacers and comments
		while(true)
		{
			if(ch == -1)
			{
				next = null;
				return;
			}
			
			if((char)ch == '#')
				comment = true;
			
			if((char)ch == '\n')
				comment = false;
			
			if(!isCharInString((char) ch, spacer) && !comment)
			{
				break;
			}
			t_row = row;
			t_col = col;
			ch = readNextChar();
		}
		
		// consume token text
		while(true)
		{
			if(ch == -1)
			{
				next = buildToken(tok, t_col, t_row);
				return;
			}
			if(isCharInString((char) ch, spacer) && string == false)
			{
				next = buildToken(tok, t_col, t_row);
				return;
			}
			if((char)ch == '\"' && !escaped)
			{
				string = !string;
			}
			if((char)ch == '\\' && !escaped)
			{
				escaped = true;
			}
			else
			{
				escaped = false;
			}
			tok += ((char)ch);
			ch = readNextChar();
		}
	}
	
	private Token buildToken(String text, int t_col, int t_row)
	{
		Token t = new Token();
		t.text = text;
		t.type = evaluateOp(text);
		t.source = sourceName;
		t.column = t_col;
		t.row = t_row;
		
		return t;
	}
	
	private TOKEN_TYPE evaluateOp(String tok)
	{
		try {
			Long.decode(tok);
			
			if(tok.matches("0[0-7]+"))
				Logger.failTokenize("Octal numbers are not supported: " + tok, sourceName, row, col);
			
			return TOKEN_TYPE.NUMBER;
		} catch(NumberFormatException e) {};
		
		if(tok.startsWith("\""))
		{
			return TOKEN_TYPE.STRING;
		}
		
		if(tok.equals("include"))
		{
			return TOKEN_TYPE.INCLUDE;
		}
		
		if(tok.equals("func"))
		{
			return TOKEN_TYPE.FUNCTION;
		}
		
		if(tok.equals("while"))
		{
			return TOKEN_TYPE.WHILE;
		}
		
		if(tok.equals("if"))
		{
			return TOKEN_TYPE.IF;
		}
		
		if(tok.equals("elif"))
		{
			return TOKEN_TYPE.ELIF;
		}
		
		if(tok.equals("else"))
		{
			return TOKEN_TYPE.ELSE;
		}
		
		if(tok.equals("do"))
		{
			return TOKEN_TYPE.DO;
		}
		
		if(tok.equals("end"))
		{
			return TOKEN_TYPE.BLOCK_END;
		}
		
		if(tok.equals("ret"))
		{
			return TOKEN_TYPE.RETURN;
		}
		
		if(tok.equals("let"))
		{
			return TOKEN_TYPE.LET;
		}
		
		if(tok.equals("asm"))
		{
			return TOKEN_TYPE.ASM;
		}
		
		if(tok.equals("intrinsic"))
		{
			return TOKEN_TYPE.INTRINSIC;
		}
		
		if(isIdentifier(tok) || isSpecialIdentifier(tok))
		{
			return TOKEN_TYPE.IDENTIFIER;
		}
		
		Logger.failTokenize("Invalid token: " + tok, sourceName, row, col);
		return null;
	}
	
	private boolean isSpecialIdentifier(String s)
	{
		for(String str : specialIdentifiers)
		{
			if(s.equals(str))
				return true;
		}
		return false;
	}
	
	private boolean isIdentifier(String s)
	{
		char [] ch = s.toCharArray();
		for(int i = 0; i < ch.length; i++)
		{
			char c = ch[i];
			if(!(
				(i == 0 && isCharInString(c, identifierFirstChar)) || 
				(i != 0 && isCharInString(c, identifierOtherChar))))
				return false;
		}
		return true;
	}
	
	private boolean isCharInString(char ch, String s)
	{
		for(char c : s.toCharArray())
		{
			if(c == ch)
				return true;
		}
		return false;
	}

	

}
