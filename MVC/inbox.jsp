<%
		String email=(String)session.getAttribute("email");
%>		
	<html><font color=blue><b>Hello <%= email %><br>
		<%= session.getId() %></b></font></html>
