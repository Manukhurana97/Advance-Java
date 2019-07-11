<%@page import="java.sql.*"%>
<html>
	<head>
		<style>
			input::-webkit-calendar-picker-indicator 
			{
				display: none;
			}
		</style>
	</head>
	<body>
	<input list="suggestions" name="to1" size="40">
	<datalist id="suggestions">
   
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from userdetails");
	while(rs.next())
	{
%>
	 
    <option value=<%= rs.getString("email") %>>
<%
	}
	rs.close();
	st.close();
	con.close();
%>
	</datalist>

</body>
</html>
