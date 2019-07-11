<%@ page import="java.sql.*" %>
<%
	String uname;
	
	uname = request.getParameter("query");
	try
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql:///ajaxdata","root","root123");
		Statement stmt = con.createStatement();
		String sqlquery = "select uname from userdetail where uname like'%"+uname+"%'";
		ResultSet rs = stmt.executeQuery(sqlquery);
		boolean valid=false;
		String str="";
		while(rs.next())
		{
				str=str+""+rs.getString(1)+"<br>";
				
	 	}
			out.println("Result: <br>"+str+"<br>") ;
			
		
		
		

	}
	catch(Exception e)
	{
		out.println("Error : " + e);
	}
%>