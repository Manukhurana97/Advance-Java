<%@page session="false"%>
<%
	Cookie c [] = request.getCookies();
%>
<%
	
	response.setHeader("Cache-control","no-store,no-cache");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires",0);
	
	try{
		for(int i=0;i<c.length;i++)
		{
			if(c[i].getName().equals("email"))
			{
			response.sendRedirect("test.jsp?email="+c[i].getValue()+"&password="+c[i+1].getValue());
			out.print(" "+c[i].getValue());
			}
		}
	}
	catch(Exception e){
		out.print(e);
	}
	
	
%>

	
<html>
  <head>
    

  </head>
  <body>
   <center><h1>ONLINE MAILING SYSTEM</h1></center>
    <table border="0" width="1072" height="251">
	 <tr>
		<td height="251" width="259"><img src="images/mail.png"></td>
		<td height="251" width="429" valign="top" bgcolor="#FFFF00">
		<form method="POST" action="test.jsp">
			&nbsp;<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<center>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" name="email" size="20"><br>Password
			<input type="password" name="password" size="20"><br>
			<input type="submit" value="Login" name="login"><br>
			<a href="newuser.jsp" style="text-decoration:none">New User</a></center>  
			</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			</form>
		</td>
		<td height="251" width="362">&nbsp;</td>
	 </tr>
    </table>
  </body>
</html>
