package main;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import utility.Logger;
import utility.TOKEN_TYPE;
import utility.Token;
import utility.StringUtill;

public class Tokenizer {
	
	private Token next;
	private Token last;
	private int row = 1;
	private int col = 1;
	private String fileName;
	private FileReader out;
	
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
	
	public Tokenizer(File source)
	{
		fileName = source.getName();
		try {
			out = new FileReader(source);
			tryTokenizeNext();
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	public boolean hasToken()
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
		try {
			tryTokenizeNext();
		} catch (IOException e) {
			next = null;
		}
		
		if(next != null)
			last = null;
		
		return next != null;
	}
	
	// row col is one char ahead
	private int readNextChar() throws IOException
	{
		int i = out.read();
		
		if(i == -1)
			return i;
		
		if(!StringUtill.validSourceFileCharacter((char)i))
			Logger.failTokenize("invalid character", fileName, row, col);
		
		if(i == '\n')
		{
			col = 1;
			row++;
		}
		else
		{
			col++;
		}
		
		return i;
	}
	
	private void tryTokenizeNext() throws IOException
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
		t.value = text;
		t.type = evaluateOp(text);
		t.file = fileName;
		t.column = t_col;
		t.row = t_row;
		
		return t;
	}
	
	private TOKEN_TYPE evaluateOp(String tok)
	{
		try {
			Long.decode(tok);
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
			return TOKEN_TYPE.BLOCK_START;
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
		
		Logger.failTokenize("Invalid token: " + tok, fileName, row, col);
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
