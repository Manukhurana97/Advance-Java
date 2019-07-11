import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Register extends HttpServlet {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");//it allow it user to exchange diff kind of file 
		PrintWriter out = response.getWriter();
		
		String username=request.getParameter("username");//to use the value/(String userName) to store the request in variable
		String psd=request.getParameter("pswd");//to use the value/ getParameter("pswd") to store the request in database
		
		
		out.println("hello "+username);
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///manu","root","root");
		PreparedStatement ps=con.prepareStatement("insert into registeruser values(?,?)");
		ps=con.prepareStatement("select username from servlet");
		rs=ps.executeQuery();
		
		ps=con.prepareStatement("insert into servlet values(?, ?)");
		ps.setString(1,username);
		ps.setString(2,psd);
		ps.executeUpdate();
		con.close();
		
			
		}catch (Exception e) {out.print(e);}
		
	
	}

}
