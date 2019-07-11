	
<%	response.setContentType("text/html");
	
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	
	Cookie cookie = new Cookie ("uname",email);
	Cookie cookie1 = new Cookie ("pass",pass);
	cookie.setMaxAge(365 * 24 * 60 * 60);
	cookie1.setMaxAge(365 * 24 * 60 * 60);
	response.addCookie(cookie);
	response.addCookie(cookie1);
	
%>
<jsp:useBean id="ub" class="pack.UserBean">
<jsp:setProperty name="ub" property="email" value="<%= email %>" />
<jsp:setProperty name="ub" property="pass" value="<%= pass %>" />
</jsp:useBean>	
	 <%
	 
			if(ub.getLogin())
			{
				session.setAttribute("email",email);
			%>
			<jsp:forward page="maininbox.jsp" />
		<%	
			}
			else
			{
		%>		
			<div style="position:absolute;top:80px;left:650px"><html><font color=red><b>email or password entered wrong</b></font></html></div>
			<jsp:include page="index.jsp" />
		<%	
		
			}
		
	%>	
		