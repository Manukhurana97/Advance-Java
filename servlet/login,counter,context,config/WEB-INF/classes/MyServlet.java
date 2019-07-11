package pack;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class MyServlet extends HttpServlet
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String driver=getServletContext().getInitParameter("driver");
		String connect=getServletContext().getInitParameter("connect");
		String username=getServletContext().getInitParameter("username");
		String pwd=getServletContext().getInitParameter("pwd");
		boolean valid=false;
		try
		{
			Class.forName(driver);
			con=DriverManager.getConnection(connect,username,pwd);
			ps=con.prepareStatement("select email,password from userdetails");
			rs=ps.executeQuery();
			while(rs.next())
			{
				if(email.equals(rs.getString("email")) && pass.equals(rs.getString("password")))
				{
					valid=true;
					break;
				}
			}
			if(valid)
			{
				HttpSession session= req.getSession();
				req.setAttribute("email",email);
				RequestDispatcher rd= req.getRequestDispatcher("in");
				rd.forward(req,res);
			}
			else
			{
				out.print("<html><font color=red><b>email or password entered wrong</b></font></html>");
				RequestDispatcher rd= req.getRequestDispatcher("index.html");
				rd.include(req,res);
		
			}
		}
		catch(Exception e)
		{
			out.print(e);
		}
		
	}
}
