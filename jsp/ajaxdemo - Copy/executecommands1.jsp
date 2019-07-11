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
		int i=1;
		while(rs.next())
		{
				
					str=str+"<tr bgcolor=red><td>"+rs.getString(1)+"</td></tr>";
				else
					str=str+"<tr bgcolor=yellow><td>"+rs.getString(1)+"</td></tr>";
			i++;	
			
	 	}
			out.println("<div style='position:absolute;top:30px;left:10px'><table border=1 width=170>"+str+"</table></div>") ;
			
		
		
		

	}
	catch(Exception e)
	{
		out.println("Error : " + e);
	}
%>