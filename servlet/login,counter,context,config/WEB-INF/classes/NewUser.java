package pack;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class NewUser extends HttpServlet
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
		String address=req.getParameter("address");
		String phone=req.getParameter("phone");
		boolean valid=false;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
			ps=con.prepareStatement("select email from userdetails");
			rs=ps.executeQuery();
			while(rs.next())
			{
				if(email.equals(rs.getString("email")))
				{
					valid=true;
					break;
				}
			}
			if(valid)
			{
				out.print("<html><font color=red><b>email already exist!!!</b></font></html>");
				RequestDispatcher rd= req.getRequestDispatcher("newuser.html");
				rd.include(req,res);
			}
			else
			{
				ps=con.prepareStatement("insert into userdetails values(?, ?, ?, ?)");
				ps.setString(1,email);
				ps.setString(2,pass);
				ps.setString(3,address);
				ps.setInt(4,Integer.parseInt(phone));
				ps.executeUpdate();
				con.close();
				res.sendRedirect("index.html");
			}
		}
		catch(Exception e)
		{
			out.print(e);
		}
	}

}
