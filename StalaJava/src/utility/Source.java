package utility;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class Source {
	
	public String name;
	
	public Map<String, Function> functionMap = new TreeMap<String, Function>();
	public List<String> includes = new ArrayList<String>();
	
	
	public static Source parseSource(Iterator<Token> tokenIter, String sourceName)
	{
		Source source = new Source();
		source.name = sourceName;
		
		while(tokenIter.hasNext())
		{
			Token token = tokenIter.next();
			
			if(token.type == TOKEN_TYPE.FUNCTION)
			{
				if(!tokenIter.hasNext())
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.FUNCTION, token);
				
				Function func = Function.parseFunction(tokenIter);
				
				if(!source.functionMap.containsKey(func.name))
					source.functionMap.put(func.name, func);
				else
					throw new RuntimeException("duplicate function name");
			}
			else if(token.type == TOKEN_TYPE.INCLUDE)
			{
				if(!tokenIter.hasNext())
					
					Logger.failToken("ran out of tokens after parsing " + TOKEN_TYPE.INCLUDE, token);
				token = tokenIter.next();
				
				if(token.type != TOKEN_TYPE.STRING)
					Logger.failToken("expects " + TOKEN_TYPE.STRING + " after " + TOKEN_TYPE.INCLUDE, token);
				
				String name = StringUtill.unEscapeString(token.text);
				
				source.includes.add(name);
			}
			else
				Logger.failToken("unexpected token", token);
		}
		return source;
	}
}
