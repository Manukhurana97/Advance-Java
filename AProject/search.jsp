<%@page import="java.sql.*"%>
<html>
	<head>
	<script>
			
			var i=0;
			var j=0;
			var str="delete.jsp?";
			var a = document.getElementsByName("cb");
			function selectAll()
			{
				var s=document.getElementById("select_All");
				if(s.value=="select All")
				{
				for(i=0;i<a.length;i++)
				{
					a[i].checked = true;
				}
				s.value=("Deselect All");
				}
				else
				{
				for(i=0;i<a.length;i++)
				{
					a[i].checked = false;
				}
				s.value=("select All");
				}
			}
			function cbfunction(b,me)
			{
				if(me.checked == true)
				{	
					if(str=="delete.jsp?1")
					{
						str=str+"id"+j+"="+b;
						j++;
					}
					else
					{
						str=str+"&id"+j+"="+b;
						j++;
					}
				}
			
			}
			function delete1()
			{
				window.open(str,"_self");
			}
		</script>	
	</head>
	<body>
<table border="0" width="796" height="64" cellpadding="0" cellspacing="0">
	<tr>
		<td height="16" width="132" bgcolor="#000080">&nbsp;</td>
		<td height="16" width="132" bgcolor="#000080"><font color="#FFFFFF">From</font></td>
		<td height="16" width="119" bgcolor="#000080"><font color="#FFFFFF">
		Subject</font></td>
		<td height="16" width="301" bgcolor="#000080"><font color="#FFFFFF">
		Message</font></td>
		<td height="16" width="216" bgcolor="#000080"><font color="#FFFFFF">Date</font></td>
	</tr>
<%
	String text1 = request.getParameter("tweb");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
	PreparedStatement ps = con.prepareStatement("select * from messdetail where from1 like '%"+text1+"%' or to1 like '%"+text1+"%' or subject like '%"+text1+"%' or message like '%"+text1+"%' or date like '%"+text1+"%'");
	ResultSet rs = ps.executeQuery();
	String email = (String)session.getAttribute("emailS");
%>
<form action="delete.jsp">
<%
	while(rs.next())
	{
		if((rs.getString("to1")).equals(email))
		{
			String id = rs.getString("messid");
			if (rs.getInt("status") == 0)
			{
%>		
	<tr>
		<td height="38" width="132" bgcolor="#CCFF33"><input type="checkbox" name="cb" value="<%=id%>" onchange="cbfunction(<%=id%>,this)"></td>
		<td height="38" width="132" bgcolor="#CCFF33"><%= rs.getString("from1") %></td>
		<td height="38" width="119" bgcolor="#CCFF33"><a href="mainmessage.jsp?messid=<% out.print(id); %>"><%= rs.getString("subject") %></a></td>
		<td height="38" width="301" bgcolor="#CCFF33">
		<%
			String subj = rs.getString("message");
			int i = subj.length();
			if(i>=4)
				out.print(subj.substring(0,4));
			else
				out.print(subj.substring(0,i));
		%></td>
		<td height="38" width="216" bgcolor="#CCFF33"><%= rs.getString("date") %></td>
	</tr>

<%
			}
			else
			{

%>
	<tr>
		<td height="38" width="132" bgcolor="#FFFF00"><input type="checkbox" name="cb" value="<%=id%>" onchange="cbfunction(<%=id%>,this)"></td>
		<td height="38" width="132" bgcolor="#FFFF00"><%= rs.getString("from1") %></td>
		<td height="38" width="119" bgcolor="#FFFF00"><a href="mainmessage.jsp?messid=<% out.print(id); %>"><%= rs.getString("subject") %></a></td>
		<td height="38" width="301" bgcolor="#FFFF00"><%
			String subj = rs.getString("message");
			int i = subj.length();
			if(i>=4)
				out.print(subj.substring(0,4));
			else
				out.print(subj.substring(0,i));
		%></td>
		<td height="38" width="216" bgcolor="#FFFF00"><%= rs.getString("date") %></td>
	</tr>
<%
	
			}
		}
	}
%>
<%-- 0 for unread --> green --%>
<input type="button" value="select All" id="select_All" onclick="selectAll()">
<input type="submit" value="delete" >
</form>
</table>
</body>
</html>