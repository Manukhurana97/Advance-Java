 
<%		response.setContentType("text/html");
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
%>
<jsp:useBean id="ub" class="pack.UserBean">
<jsp:setProperty name="ub" property="email" value="<%= email %>" />
<jsp:setProperty name="ub" property="pass" value="<%= pass %>" />
<jsp:setProperty name="ub" property="address" value="<%= address %>" />
<jsp:setProperty name="ub" property="phone" value="<%= phone %>" />
</jsp:useBean>
<%		
		 
		 
			
			if(ub.getUser())
			{
%>				
	<html><font color=red><b>email already exist!!!</b></font></html>
	<jsp:include page="newuser.html"/>
	<%
			}
			else
			{
				 
				response.sendRedirect("index.html");
			}
		 
	%>
