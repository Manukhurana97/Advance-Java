package pack;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Counter extends HttpServlet
{
	int count=0;
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		getServletContext().setAttribute("count",++count);
		out.print("<html><font color=blue><b>Visitor: "+getServletContext().getAttribute("count")+"</b></font></html>");
		
	}
}
