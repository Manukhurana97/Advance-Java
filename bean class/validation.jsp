	
<%	response.setContentType("text/html");
	
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
%>
<jsp:useBean id="ub" class="pack.UserBean">
<jsp:setProperty name="ub" property="email" value="<%= email %>" />
<jsp:setProperty name="ub" property="pass" value="<%= pass %>" />
</jsp:useBean>	
	 <%
	 
			if(ub.getlogin())
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
			<jsp:include page="index.html" />
		<%	
		
			}
		
	%>	
		