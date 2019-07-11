<html>

<head>

<title>To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subject</title>
</head>

<body>

<table border="0" width="624" height="325" bgcolor="#FF6600">
	<tr>
		<td height="319" width="614">
		<form method="GET" action="mail_send.jsp">
			<!--webbot bot="SaveResults" U-File="C:\Tomcat 7.0\webapps\AProject\_private\form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
			<p><input type="submit" value="send" name="send1">
			<input type="reset" value="draft" name="draft1">
			<input type="reset" value="discard" name="discard1"></p>
			To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%@include file="DropDownTextBox.jsp"%><br>
			Subject <input type="text" name="subject" size="40"><br>
			<textarea rows="9" name="message" cols="69"></textarea>
		<p><input type="submit" value="send" name="send2">
		<input type="reset" value="draft" name="draft2">
		<input type="reset" value="discard" name="discard2">
		<input type="text" name="filename" value="<%=request.getAttribute("saveFile")%>">
		</form>
		</td>
	</tr>
</table>

</body>

</html>