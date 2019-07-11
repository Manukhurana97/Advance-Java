<table border="0" width="773" height="298" cellspacing="0" cellpadding="0">
<%@page import="java.sql.*" %>
<%
	String id =request.getParameter("messid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root123");
	PreparedStatement ps = con.prepareStatement("select * from messdetail");
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
%>
<%
		if((rs.getString("messid").equals(id)))
		{
%>
	<tr>
		<td height="31" width="773" bgcolor="#00FFFF">From: <%= rs.getString("from1") %> </td>
	</tr>
	<tr>
		<td height="30" width="773" bgcolor="#00FFFF">Date: <%= rs.getString("date") %> </td>
	</tr>
	<tr>
		<td height="26" width="773" bgcolor="#00FFFF">Subject: <%= rs.getString("subject") %> </td>
	</tr>
	<tr valign="top" >
		<td height="199" width="773" bgcolor="#FFFF66">Message: <%= rs.getString("message") %> </td>
	</tr>
<%		
		if(rs.getInt("status") == 0)
		{
			PreparedStatement ps2 = con.prepareStatement("update messdetail set status = 1 where messid = "+id);
			ps2.executeUpdate();
		}
		}
	}
 %>
</table>