 
<html>
<head>
<title>Cookie Input Form</title>
</head>
<body>
<%!
	String uname,pass;
%>	
<%
	Cookie cookies [] = request.getCookies ();
	 
	
	out.print("<html><head><title>Show Saved Cookie</title>");
	if (cookies != null)
	{
			uname=cookies[0]+"";
			pass=cookies[1]+"";
	}
	if(uname != null && pass!=null)
	{
		response.sendRedirect("sc?username="+uname+"&pass="+pass);
	}
	else
	{
%>
<form method="get" action="sc">
<p><b>Enter Your Name: </b><input type="text" name="username"><p>
Enter Your Password: </b><input type="password" name="pass"><p>


<input type="submit" value="Submit">
</form>
<a href="http://www.google.com/search?q=india">Click</a>
</body>
<%
	}
%>	