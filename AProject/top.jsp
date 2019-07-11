<%
	response.setHeader("Cache-control","no-store,no-cache");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires",0);
%>
<%= session+" "+session.getId()+" "+session.isNew() %>
<%
	if(session.isNew() || session.equals(null))
	{
		response.sendRedirect("index.jsp");
	}
%>
<html>
<head>
	
</head>
<body>

<%-- email = request.getParameter("email"); --%>
<%
	email = (String)session.getAttribute("emailS");
	
%>

	<table border="0" width="1100" height="185">
		<tr>
			<td height="185" width="464">
			<form method="POST" action="search1.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="text" name="tweb" size="20" onkeyup="ajax_search(this.value)">
			<input type="submit" value="web" name="web">
				<input type="submit" value="search" name="search" >
			</form></td>
			<td height="180" width="370">
			<p align="center"><b><font size="5">Welcome <%= email %></font></b>
			</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</td>
			<td height="185" width="251">
			<p align="center"><a href="signout.jsp" style="text-decoration:none">Sign out</a></p>
			<p>&nbsp;</p>
			<p>&nbsp;</td>
		</tr>
		
	</table>
</body>
</html>
