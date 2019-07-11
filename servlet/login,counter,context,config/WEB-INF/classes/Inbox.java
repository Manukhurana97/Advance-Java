package pack;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Inbox extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession();
		String email=(String)session.getAttribute("email");
		if(session.isNew())
		{
			res.sendRedirect("index.html");
		}
		String address=getServletContext().getInitParameter("address");
		String phone=getServletConfig().getInitParameter("phone");
		out.print("<html><font color=blue><b>Hello "+email);
		out.print("Address: "+address+" phone: "+phone+" its your Inbox<br>");
		out.print(session.getId()+"</b></font></html>");
		
	}
}
