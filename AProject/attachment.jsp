<HTML>
<HEAD><TITLE>Display file upload form to the user</TITLE></HEAD> 
<BODY> <FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
<br><br><br>
<center>
<table border="0" bgcolor=#ccFDDEE>
<tr><center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td></tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td><b>Choose the file To Upload:</b></td><td><INPUT NAME="file" TYPE="file"></td></tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Send File"> </td></tr>
<table>
</center> 
</FORM>
<a href='./uploaded/<%= request.getAttribute("saveFile")%>'><%= request.getAttribute("saveFile")%></a>
<img src='./uploaded/<%= request.getAttribute("saveFile")%>'>
</BODY>
</HTML>
