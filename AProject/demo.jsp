<%@page import="java.sql.*,java.util.Date" %>
<% 
	Date d = new Date();
	String str = d.getDate()+"/"+(d.getMonth()+1)+"/"+(d.getYear()+1900)+","+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
	out.print(str);
%>