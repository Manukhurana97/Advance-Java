<%@page import="java.sql.*"%>
<%! ResultSet rs; %>
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
	String email = (String)session.getAttribute("emailS");
%>
<%@include file="Connection.jsp"%>
<%
	PreparedStatement ps = con.prepareStatement("select * from messdetail order by status");
	rs = ps.executeQuery();
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
		<td height="38" width="132" bgcolor="#CCFF33"><input type="checkbox" name="cb" value="<%=id%>" onchange="cbfunction(<%=id%>,this)"></a></td>
		<td height="38" width="132" bgcolor="#CCFF33"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div><%= rs.getString("from1") %></div></a></td>
		<td height="38" width="119" bgcolor="#CCFF33"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div><%= rs.getString("subject") %></div></a></td>
		<td height="38" width="301" bgcolor="#CCFF33"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div>
		<%
			String subj = rs.getString("message");
			int i = subj.length();
			if(i>=4)
				out.print(subj.substring(0,4));
			else
				out.print(subj.substring(0,i));
		%></div></a></td>
		<td height="38" width="216" bgcolor="#CCFF33"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div><%@include file="DateManipulator.jsp"%></div></a></td>
	</tr>
<%
			}
			else
			{

%>
	<tr>
		<td height="38" width="132" bgcolor="#FFFF00"><input type="checkbox" name="cb" value="<%=id%>" onchange="cbfunction(<%=id%>,this)"></td>
		<td height="38" width="132" bgcolor="#FFFF00"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div><%= rs.getString("from1") %></div></a></td>
		<td height="38" width="119" bgcolor="#FFFF00"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div><%= rs.getString("subject") %></div></a></td>
		<td height="38" width="301" bgcolor="#FFFF00"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div><%
			String subj = rs.getString("message");
			int i = subj.length();
			if(i>=4)
				out.print(subj.substring(0,4));
			else
				out.print(subj.substring(0,i));
		%></div></a></td>
		<td height="38" width="216" bgcolor="#FFFF00"><a href="mainmessage.jsp?messid=<% out.print(id); %>" style="text-decoration:none;color:black;"><div><%@include file="DateManipulator.jsp" %></div></a></td>
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
