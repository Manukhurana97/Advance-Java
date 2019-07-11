<%@ page import="java.sql.*"%>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<%		response.setContentType("text/html");
		
		String from1=(String)session.getAttribute("email");
		
		boolean valid=false;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
			ps=con.prepareStatement("select * from messdetail order by messid desc");
			rs=ps.executeQuery();
%>
<form method="POST" action="--WEBBOT-SELF--">
			<table width="619" cellspacing="0" cellpadding="0">
			<tr><td bgcolor="#000080"><b><font color="#FFFFFF">From</font></b></td>
				<td bgcolor="#000080"><b><font color="#FFFFFF">Subject</font></b></td>
				<td bgcolor="#000080"><b><font color="#FFFFFF">Message</font></b></td>
				<td bgcolor="#000080"><b><font color="#FFFFFF">Date</font></b></td></tr>	
<%			
			while(rs.next())
			{
				if(from1.equals(rs.getString("to1")))
				{
					if(rs.getString("status").equals("true"))
					{
%>					
				<tr bgcolor="ffffff">
<%
					}
					else
					{
		%>
				<tr bgcolor="wheat">
		<%
					}										
					
		%>				
						<td><input type="checkbox" name="C1" value="<%= rs.getInt("messid") %>">
						<%=rs.getString("from1") %></td>
					<td><a href='readmess1.jsp?mid=<%= rs.getInt("messid") %>'><%=rs.getString("subject")%></a></td>	
				<td><%=rs.getString("message").substring(0,5)+"...." %></td>						
					<td><%=rs.getString("date")%></td></tr>
	<%				
				}
			}
	%>
		<tr><td colspan="4"><input type="submit" value="delete" name="B1"></td></tr>	
		</table>
							</form>
	<%	
			
		}
		catch(Exception e)
		{
			out.print(e);
		}
	%>