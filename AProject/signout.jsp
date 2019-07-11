<%
	Cookie cookie = new Cookie("email",null);
	cookie.setMaxAge(0);
	response.addCookie(cookie);
	
	Cookie cookie1 = new Cookie("password",null);
	cookie1.setMaxAge(0);
	response.addCookie(cookie1);
	session.invalidate();
	response.sendRedirect("index.jsp");
 %>
<%= cookie.getName()+" "+cookie.getValue()%>
<%= cookie1.getName()+" "+cookie1.getValue()%>

<%= session%>
<%= session.getId()%>