<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>

<table border="0" width="946" height="130">
	<tr>
		<td height="52" width="142">&nbsp;</td>
		<td height="52" width="296">&nbsp;</td>
		<td height="52" width="262">
		<%
		String email=(String)session.getAttribute("email");
%>		
	<html><font color=blue><b>Welcome <%= email %><br>
		</b></font></html>

		
		
		</td>
		<td height="52" width="90"><a href="signout.jsp" style="text-decoration:none">Signout</a></td>
		<td height="52" width="130">&nbsp;</td>
	</tr>
	<tr>
		<td height="68" width="142">&nbsp;</td>
		<td height="68" width="296">
		<form method="POST" action="--WEBBOT-SELF--">
			<!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
			<p><input type="text" name="search" size="20"><input type="submit" value="web" name="B1">
			<input type="submit" value="search" name="B2"></p>
		</form>
&nbsp;</td>
		<td height="68" width="262">&nbsp;</td>
		<td height="68" width="90">&nbsp;</td>
		<td height="68" width="130">&nbsp;</td>
	</tr>
</table>

 

</body>

</html>