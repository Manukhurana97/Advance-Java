import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class ShowCookie extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out=response.getWriter();
		 
		Cookie cookies [] = request.getCookies ();
		Cookie myCookie = null;
	if (cookies != null)
	{
			for (int i = 0; i < cookies.length; i++) 
			{
				myCookie=cookies[i];
				out.print("<html><font color=blue><b>"+myCookie.getName()+" "+myCookie.getValue()+"</b></font><br>");
			}
	}
	else
	{
			out.print("No Cookie found ");
		}
	
		
		
	out.print("</html>");
	}
}	