<html>

<body>



<%
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	out.print("hello "+name);
%>



<p>

You login at -> <%= java.util.Calendar.getInstance().getTime() %>
</p> 
 
 
 
 
 <p> 
 <%! int a=10; %> 
 <%=" value of a square is: " +a*a %>
</p>




<% 
	response.sendRedirect("http://www.google.com/search?q="+name );
%>  
 
    
 
</body>
</html>
