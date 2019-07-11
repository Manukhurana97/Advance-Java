<%@page import="java.sql.*"%>
<%!
	Connection con;
%>
<%
	try
	{
%>
<%--<%@include file="Connection.jsp"%>--%>
<%
	
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");

		String a[] = request.getParameterValues("cb");
		for(int i=0;i<a.length;i++)
		{
			PreparedStatement ps = con.prepareStatement("delete from messdetail where messid = "+a[i]);
			ps.executeUpdate();
		}
		response.sendRedirect("readinbox.jsp");
	}

	finally
	{
		con.close();
	}
%>