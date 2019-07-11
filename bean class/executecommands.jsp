<%@ page import="java.sql.*" %>
<%
	String uname;
	
	uname = request.getParameter("query");
	try
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
		PreparedStatement stmt = con.prepareStatement("select email from userdetails");
		
		ResultSet rs = stmt.executeQuery();
		boolean valid=false;
		String str="";
		while(rs.next())
		{
			if(uname.equals(rs.getString("email")))
			{	
				valid=true;
			}
		}
		if(valid)
		{
			out.println("<font color=red><b>Email already exist!!</b></font>"); ;
				
	 	}
		else
		{
			out.println("<font color=blue><b>Email avalaible!!</b></font>");
		}	
		
		
		

	}
	catch(Exception e)
	{
		out.println("Error : " + e);
	}
%>