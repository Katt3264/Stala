package byteCompile;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class InstructionAccumulator {
	
	private final Map<String, Long> labelMap = new TreeMap<String, Long>();
	private long labelPtr;
	
	List<String> output = new ArrayList<String>();
	// s: = string, l: = label
	
	public void instructionCall(String label)
	{
		output.add("s:call ");
		output.add("l:" + label);
		output.add("s:\n");
		labelPtr++;
	}
	
	public void instructionReturn()
	{
		output.add("s:ret\n");
		labelPtr++;
	}
	
	public void instructionExit()
	{
		output.add("s:exit\n");
		labelPtr++;
	}
	
	public void instructionPush(String value)
	{
		output.add("s:push " + value + "\n");
		labelPtr++;
	}
	
	public void instructionPushLabel(String label)
	{
		output.add("s:push ");
		output.add("l:" + label);
		output.add("s:\n");
		labelPtr++;
	}
	
	public void instructionLocals(int inc_dec)
	{
		output.add("s:local " + inc_dec + "\n");
		labelPtr++;
	}
	
	public void instructionPushLocal(int index)
	{
		output.add("s:pushl " + index + "\n");
		labelPtr++;
	}
	
	public void instructionPopLocal(int index)
	{
		output.add("s:popl " + index + "\n");
		labelPtr++;
	}
	
	public void instructionJumpZero(String label)
	{
		output.add("s:jz");
		output.add("l:" + label);
		output.add("s:\n");
		labelPtr++;
	}
	
	public void instructionJump(String label)
	{
		output.add("s:jmp");
		output.add("l:" + label);
		output.add("s:\n");
		labelPtr++;
	}
	
	public void instructionIntrinsic(String instruction)
	{
		output.add("s:intrinsic " + instruction + "\n");
		labelPtr++;
	}
	
	public void dataByte(byte b)
	{
		output.add("s:" + b + "\n");
		labelPtr++;
	}
	
	public void labelHere(String lable) 
	{
		labelMap.put(lable, labelPtr);
	}
	
	public void print(PrintWriter pw)
	{
		for(int i = 0; i < output.size(); i++)
		{
			String s = output.get(i);
			String op = s.substring(2);
			if(s.startsWith("s:"))
				pw.print(op);
			else if(s.startsWith("l:"))
				if(labelMap.containsKey(op))
					pw.print(labelMap.get(op));
				else
					throw new RuntimeException("Label not found: " + op);
			else
				throw new RuntimeException("Unknown: " + s);
		}
	}

}
