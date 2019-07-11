package mypack;
import java.sql.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class CopyrightTag extends TagSupport
{
	private String text="Copyright 2007-2007 BPB Publications Inc.";
	private String color="red";
	 
	public void setText(String text)
	{
		this.text=text;		
	}
	
	public void setColor(String color)
	{
		this.color=color;		
	}
	
	public int doStartTag() throws JspException
	{
		try
		{
	
			JspWriter out=pageContext.getOut();
	out.println("<Font color="+color+">"+text+"</Font>");
		}
		catch (Exception ioException)
		{
			System.err.println("IO Exception");
			System.err.println("ioException.toString()");
		}
		return SKIP_BODY;
	}
	
		
}
