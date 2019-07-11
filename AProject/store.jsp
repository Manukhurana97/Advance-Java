<%@page import="java.sql.*" %>
<%!
	String email;
	String password;
	String address,test_email;
	int phone;
	Connection con;
	PreparedStatement ps1,ps2;
	ResultSet rs;
%>
<%
	int valid=1;
	email = request.getParameter("email");
	password = request.getParameter("password");
	address = request.getParameter("address");
	phone = Integer.parseInt(request.getParameter("phone"));
%>
	<%@include file="Connection.jsp"%>
<%
	PreparedStatement ps1= con.prepareStatement("select email from userdetails");
	rs = ps1.executeQuery();
	while(rs.next())
	{
		test_email = rs.getString("email");
		if(test_email.equals(email))
		{
			valid=0;
			break;
		}
	}
	if(valid==0)
	{
%>
<font color="red"><h1><%= "email already exsists!!!" %></h1></font>
<jsp:include page="newuser.jsp" />
<%
	}
	else
	{
	ps2 = con.prepareStatement("insert into userdetails values (?,?,?,?)");
	ps2.setString(1,email);
	ps2.setString(2,password);
	ps2.setString(3,address);
	ps2.setInt(4,phone);
	ps2.executeUpdate();
	response.sendRedirect("index.jsp");
	}
%>