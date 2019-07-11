<%@page import="java.sql.*" %>
<html>
<head>
<title>New Page 1</title>
</head>
<body>
<%! String email; %>
<%
	try{
	int count = 0;
	email = (String)session.getAttribute("emailS");
%>

<%@include file="Connection.jsp"%>

<%	
	PreparedStatement ps1 = con.prepareStatement("select status,to1 from messdetail");
	ResultSet rs1 = ps1.executeQuery();
	while(rs1.next())
	{
		if( rs1.getInt(1) == 0 && email.equals(rs1.getString(2)))
		{
			count++;
		}
	}
%>
<table width="95" height="250">
	<tr valign="top">
		<td height="250" width="85">
		<a href="maincompose.jsp" style="text-decoration:none">Compose</a> <br>
		<p><a href="readinbox.jsp" style="text-decoration:none">Inbox
		<%
			if( count!=0 )
			{
		%>
		<%= "("+count+")" %>
		<% }%>
		</a><br></p>
		<p><a href="" style="text-decoration:none">Sent</a><br></p>
		<p><a href="" style="text-decoration:none">Draft</a><br></p>
		<p><a href="MailGenerator.jsp" style="text-decoration:none">MailGenerator</a><br></p>
		</td>
	</tr>
</table>
</body>
</html>
<%
	con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>