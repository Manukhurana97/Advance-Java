<%@page import="java.sql.*,java.util.Date" %>
<%!
	Connection con;
	PreparedStatement ps1,ps2,ps3;
	ResultSet rs;
	String from1,to1,subject,message,dates,str,filename;
%>

<%@include file="Connection.jsp"%>

<%
	from1 = (String)session.getAttribute("emailS");
	to1 = request.getParameter("to1");
	ps3 = con.prepareStatement("select email from userdetails");
	rs = ps3.executeQuery();
	int flag=0;
	while(rs.next())
	{
	if(to1.equals(rs.getString("email")))
	{
		flag=1;
	}
	}
	if(flag==0)
	{
%>
<jsp:forward page="notRecognised.jsp" />
<%	
	}
	else
	{

	subject = request.getParameter("subject");
	message = request.getParameter("message");
	filename = request.getParameter("filename");
	Date d = new Date();
	int i = d.getDay();
	switch(i)
	{
		case 0:
			str="Sun";
			break;
		case 1:
			str="Mon";
			break;
		case 2:
			str="Tue";
			break;
		case 3:
			str="Wed";
			break;
		case 4:
			str="Thu";
			break;
		case 5:
			str="Fri";
			break;
		case 6:
			str="Sat";
	}
	str=str+ d.getDate() + "/" + (d.getMonth()+1) + "/" + (d.getYear()+1900) + "," + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
	dates = str;
	
	ps1 = con.prepareStatement("insert into messdetail (from1,to1,subject,message,date,filename) values(?,?,?,?,?)");
	ps1.setString(1,from1);
	ps1.setString(2,to1);
	ps1.setString(3,subject);
	ps1.setString(4,message);
	ps1.setString(5,dates);
	ps1.setString(6,filename);
	int j = ps1.executeUpdate();
	
	// ps2 = con.prepareStatement("insert into sentdetail (from1,to1,subject,message,date) values(?,?,?,?,?)");
	// ps2.setString(1,from1);
	// ps2.setString(2,to1);
	// ps2.setString(3,subject);
	// ps2.setString(4,message);
	// ps2.setString(5,dates);
	// int k = ps2.executeUpdate();
	con.close();
	if(j == 1 ) //&& k == 1
	{
%>
	<h1><div style="position:absolute;top:180px;left:650px;"><font color="green"><%= "message successfully sent to "+ to1 %></font></div></h1>
	<jsp:include page="maininbox.jsp" />
<%		
	}
	}
%>