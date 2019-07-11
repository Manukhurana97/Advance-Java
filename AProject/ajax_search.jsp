<%@page import="java.sql.*"%>
<%
	String search = request.getParameter("a");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
	PreparedStatement ps = con.prepareStatement("select * from messdetail where from1 like '%"+search+"%' or to1 like '%"+search+"%' or subject like '%"+search+"%' or message like '%"+search+"%' or date like '%"+search+"%'");
	ResultSet rs = ps.executeQuery();
	String email = (String)session.getAttribute("emailS");
%>

<%
	while(rs.next())
	{
		if((rs.getString("to1")).equals(email))
		{
			out.print(rs.getInt("messid")+" ");
			
		}
	}
%>