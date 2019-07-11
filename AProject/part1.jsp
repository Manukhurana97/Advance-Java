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
