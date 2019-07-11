package pack;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class NewUser extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		PrintWriter out = res.getWriter();
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String address=req.getParameter("address");
		String phone=req.getParameter("phone");
		
		UserBean ub= new UserBean();
		ub.setEmail(email);
		ub.setPass(pass);
		ub.setAddress(address);
		ub.setPhone(phone);
		if(ub.getUser())
		{
			out.print("<html><font color=red><b>email already exist!!!</b></font></html>");
			RequestDispatcher rd = req.getRequestDispatcher("newuser.html");
			rd.include(req,res);
		}
		else
		{
		
			res.sendRedirect("index.html");
		}
		 
		
	}
}