<%@page import="java.sql.*" %>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<%
	int valid=1;
	String str = request.getParameter("a");
%>
	<%@include file="Connection.jsp"%>
<%
	ps= con.prepareStatement("select email from userdetails");
	rs = ps.executeQuery();
	while(rs.next())
	{
		if((rs.getString(1)).equals(str))
		{
			valid=0;
			break;
		}
	}
	if(valid==0)
	{
		out.print("<b><font color=red>Email Already Exists!!!</font></b>");
	}
	else 
	{	
		out.print("<b><font color=green>Email Available</font></b>");
	}
	
	con.close();
%>