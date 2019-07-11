<html>

<head>
<script>
	function asdf()
	{
		document.f1.action="http://www.google.com/search?q=javascript";
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<form name="f1" method="POST" action="insertmess.jsp">
		
			<!--webbot bot="SaveResults" U-File="C:\Tomcat 7.0\webapps\3pmweekdays jsp\_private\form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
<table border="0" width="543" height="264" bgcolor="#C0C0C0">
	<tr>
		<td height="21" width="533">
		
			<input type="submit" value="send" name="B1">
			<input type="submit" value="draft" name="B2" onclick="asdf()">

			<input type="reset" value="discard" name="B3">

		</td>
	</tr>
	<tr>
		<td height="18" width="533">To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="to1" size="33"></td>
	</tr>
	<tr>
		<td height="14" width="533">Subject&nbsp;
		<input type="text" name="subject" size="33"></td>
	</tr>
	<tr>
		<td height="153" width="533">
		<textarea rows="8" name="message" cols="63"></textarea></td>
	</tr>
	<tr>
		<td height="26" width="533">
		
			<input type="submit" value="send" name="B4">
		<input type="reset" value="draft" name="B5">

		<input type="reset" value="discard" name="B6"></td>
	</tr>
</table>
		</form>
</body>

</html>