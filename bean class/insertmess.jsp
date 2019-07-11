<%@ page import="java.sql.*,java.util.Date" %>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>	
<%	response.setContentType("text/html");
	
	String from1=(String)session.getAttribute("email");
	String to1=request.getParameter("to1");
	String subject=request.getParameter("subject");
	String message=request.getParameter("message");
	String status="false";
	Date d = new Date();
	String str="";
	int i = d.getDay();
	
	switch(i)
	{
		case 1: str="Mon";
		break;
		case 2: str="Tue";
		break;
		case 3: str="Wed";
		break;
		case 4: str="Thu";
		break;
		case 5: str="Fri";
		break;		
		case 6: str="Sat";
		break;
		case 7: str="Sun";
	}
	str=str+", "+d.getDate()+"/"+(d.getMonth()+1)+"/"+(d.getYear()+1900)+","+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();	
	
	try
	{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
			ps=con.prepareStatement("insert into messdetail(from1,to1,subject,message,date,status) values(?, ?, ?, ?, ?, ?)");
			ps.setString(1,from1);
			ps.setString(2,to1);
			ps.setString(3,subject);
			ps.setString(4,message);
			ps.setString(5,str);
			ps.setString(6,status);
			ps.executeUpdate();
			ps=con.prepareStatement("insert into sentdetail(from1,to1,subject,message,date,status) values(?, ?, ?, ?, ?, ?)");
			ps.setString(1,from1);
			ps.setString(2,to1);
			ps.setString(3,subject);
			ps.setString(4,message);
			ps.setString(5,str);
			ps.setString(6,status);
			ps.executeUpdate();
	%>		con.close();	
			<div style="position:absolute;top:180px;left:650px"><html><font color=blue><b>message successfully sent to <%= to1 %></b></font></html></div>
			<jsp:include page="maininbox.jsp" />
		<%	
		
			
		}
		catch(Exception e)
		{
			out.print(e);
		}
	%>	
		