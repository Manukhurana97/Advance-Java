<%@ page import="java.sql.*" %>
<%
	response.setHeader("Cache-control","no-store,no-cache");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires",0);
%>
<%!
	String email,password;
	String test_password,test_email;
%>
<%-- Global value problem--%>
<%
	int valid = 1;
	email = request.getParameter("email");
	password = request.getParameter("password");
%>	
	
<%@include file="Connection.jsp"%>
<%
	PreparedStatement ps = con.prepareStatement("select * from userdetails");
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
		test_password = rs.getString("password");
		test_email = rs.getString("email");
		if(test_email.equals(email) && test_password.equals(password))
		{
			valid=0;
			break;
		}
	}
	if(valid==0)
	{
		
		session.setAttribute("emailS",email);
	
		Cookie cookie = new Cookie("email",email);
		cookie.setMaxAge(365*24*60*60);
		response.addCookie(cookie);
		
		Cookie cookie1 = new Cookie("password",password);
		cookie1.setMaxAge(365*24*60*60);
		response.addCookie(cookie1);
		
%>
<jsp:forward page="maininbox.jsp" />
		
<%		
	}
	else
	{
%>
<font color="red"><b><%= "Invalid Email or Invalid Password!!!" %></b></font>
<jsp:include page="index.jsp" />
<%
	}
%>