<%@ page import="java.sql.*"%>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<%		response.setContentType("text/html");
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
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
%>				
	<html><font color=red><b>email already exist!!!</b></font></html>
	<jsp:include page="newuser.html"/>
	<%
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
				response.sendRedirect("index.html");
			}
		}
		catch(Exception e)
		{
			out.print(e);
		}
	%>
