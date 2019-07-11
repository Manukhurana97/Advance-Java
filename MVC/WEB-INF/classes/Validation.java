package pack;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Validation extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		PrintWriter out = res.getWriter();
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		 
		
		UserBean ub= new UserBean();
		ub.setEmail(email);
		ub.setPass(pass);
		 
		if(ub.getLogin())
		{
			HttpSession session=req.getSession();
			session.setAttribute("email",email);
			RequestDispatcher rd= req.getRequestDispatcher("maininbox.jsp");
			rd.forward(req,res);
		
			}
			else
			{
				
			out.print("<div style='position:absolute;top:80px;left:650px'><html><font color=red><b>email or password entered wrong</b></font></html></div>");
			RequestDispatcher rd= req.getRequestDispatcher("index.jsp");
			rd.include(req,res);
			}
		
		
	}
}