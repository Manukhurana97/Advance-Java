<html>
  <head>
   <title>Create Your Account</title>
   <script>
   var xhttp = new XMLHttpRequest();
   function ajax(a)
   {
	   if(f1.email.value.length>1)
	   {
	   xhttp.open("get","ajax_newuser.jsp?a="+a);
	   xhttp.onreadystatechange=handler;
	   xhttp.send();
	   }
	   else
	   {
			document.getElementById("ip").innerHTML="";
	   }
   }
   function handler()
   {
	   if(xhttp.readyState == 4)
	   {
		   if(xhttp.status == 200)
		   {
			   document.getElementById("ip").innerHTML = xhttp.responseText;
		   }
		   else
		   {
				alert("Error during ajax call. Try again");
		   }
	   }
	   
   }
   
   </script>
  </head>
  <body>
   <center>
     <h1>Create Your Account</h1><br>
	  <form name="f1" method="post" action="store.jsp">
       Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" name="email" size="20" onblur="ajax(this.value)"><span id="ip" style="position:absolute;"></span><br>
	   Password<input type="password" name="password" size="20"><br>
	   Address&nbsp; <input type="text" name="address" size="20"><br>
	   Phone&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="phone" size="20"><br>
	   <input type="submit" value="create account"><br>
	  </form>
	  <a href="index.jsp" style="text-decoration:none">Home</a>
   </center>
  </body>
</html>

