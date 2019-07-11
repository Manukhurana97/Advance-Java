<%@ page import="java.sql.*"%>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<%		response.setContentType("text/html");
		
		String from1=(String)session.getAttribute("email");
		String mid=request.getParameter("mid");
		boolean valid=false;
		String status="true";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
			ps=con.prepareStatement("update messdetail set status=? where messid=? and to1=?");
			ps.setString(1,status);
			ps.setInt(2,Integer.parseInt(mid));
			ps.setString(3,from1);
			ps.executeUpdate();
			ps=con.prepareStatement("select * from messdetail");
			rs=ps.executeQuery();
			
%>
<form method="POST" action="--WEBBOT-SELF--">
			
			
<%			
			while(rs.next())
			{
				if(from1.equals(rs.getString("to1")) && mid.equals(rs.getInt("messid")+""))
				{
%>					
					<table width="619" cellspacing="0" cellpadding="0">
					<tr><td bgcolor="#FFFFFF" ><b>From</b></td>
						<td bgcolor="#FFFFFF"><%= rs.getString("from1") %></td></tr>
				<tr><td bgcolor="#FFFFFF" ><b>Subject</b></td>
					<td bgcolor="#FFFFFF"><%= rs.getString("subject") %></td></tr>
				
				<tr><td bgcolor="#FFFFFF"  ><b>Date</b></td>
					<td bgcolor="#FFFFFF"><%= rs.getString("date") %></td></tr>
				<tr>	
				<td bgcolor="#FFFFFF" colspan="2"><b>Message</b></td></tr>
				<tr>	
				<td bgcolor="wheat" colspan="2"><b><font color=#000066><pre><%= rs.getString("message") %></pre></font></b></td></tr>
				</table>
<%				
				}
			}
					
			
			
		}
		catch(Exception e)
		{
			out.print(e);
		}
	%>