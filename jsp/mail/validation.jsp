<%@ page import="java.sql.*" %>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>	
<%	response.setContentType("text/html");
	
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	boolean valid=false;
	try
	{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
			ps=con.prepareStatement("select email,password from userdetails");
			rs=ps.executeQuery();
			while(rs.next())
			{
				if(email.equals(rs.getString("email")) && pass.equals(rs.getString("password")))
				{
					valid=true;
					break;
				}
			}
			if(valid)
			{
				session.setAttribute("email",email);
				out.println("ID " + session.getId());
			%>
			<jsp:forward page="mainpage.jsp" />
		<%	
			}
			else
			{
		%>		
			<div style="position:absolute;top:80px;left:650px"><html><font color=red><b>email or password entered wrong</b></font></html></div>
			<jsp:include page="index.html" />
		<%	
		
			}
		}
		catch(Exception e)
		{
			out.print(e);
		}
	%>	
		
