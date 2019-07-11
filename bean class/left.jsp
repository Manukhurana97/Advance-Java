<html>
<%@ page import="java.sql.*"%>
<%
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Compose</title>
</head>

<body>
<%		response.setContentType("text/html");
		
		String count=(String)session.getAttribute("email");
		
		String status1="false";
		
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
			ps=con.prepareStatement("select count(status) from messdetail where status=? and to1=?");
			ps.setString(1,status1);
			ps.setString(2,count);
			rs=ps.executeQuery();
			rs.next();
%>
<table border="0" width="115" height="325">
	<tr>
		<td height="32" width="115"><a href="compose1.jsp" style="text-decoration:none">Compose</a></td>
	</tr>
	<tr>
		<td height="28" width="115"><a href="inbox1.jsp" style="text-decoration:none">Inbox
		(<%= rs.getString(1) %>)
		
		</a></td>
	</tr>
	<tr>
		<td height="26" width="115"><a href="sent1.jsp" style="text-decoration:none">Sent</a></td>
	</tr>
	<tr>
		<td height="19" width="115"><a href="draft1.jsp" style="text-decoration:none">Draft</a></td>
	</tr>
	<tr>
		<td height="27" width="115">&nbsp;</td>
	</tr>
	<tr>
		<td height="21" width="115">&nbsp;</td>
	</tr>
	<tr>
		<td height="19" width="115">&nbsp;</td>
	</tr>
	<tr>
		<td height="25" width="115">&nbsp;</td>
	</tr>
	<tr>
		<td height="87" width="115">&nbsp;</td>
	</tr>
</table>

</body>

</html>