<%@page import="java.sql.*,java.util.Date" %>

<%!
	String str;
	Connection con;
%>
	
	
<%		
		String from1 = "kc@gmail.com";
		String to1 = "vc@gmail.com";
		String subject[] = {"hello","hi","bye","Good Morning","Good Afternoon","Good Evening","Good Night","hello12","hi34","hello34"};
		String message[] = {"It is during our darkest moments that we must focus to see the light.","To the mind that is still, the whole universe surrenders.","We must let go of the life we have planned, so as to accept the one that is waiting for us.","I can't change the direction of the wind, but I can adjust my sails to always reach my destination.","The best preparation for tomorrow is doing your best today.","The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.","Age is something that doesn't matter, unless you are a cheese.","Behind every great man is a woman rolling her eyes.","There are only three things women need in life: food, water, and compliments.","I found there was only one way to look thin: hang out with fat people."};
		String date = "Fri23/2/2018,12:40:58";
		int status = 0;
		System.out.println(subject.length);
		System.out.println(message.length);
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
	
		for(int k=1;k<=10;k++)
		{
			int i = (int)(10*Math.random());
			PreparedStatement st = con.prepareStatement("insert into messdetail(from1,to1,subject,message,date) values(?,?,?,?,?)");
			st.setString(1,from1);
			st.setString(2,to1);
			st.setString(3,subject[i]);
			st.setString(4,message[i]);
			st.setString(5,date);
			int j = st.executeUpdate();
			System.out.println("Successful "+j);
		}
		}
			catch(Exception e){
			System.out.println(e);
		}
		
		response.sendRedirect("readinbox.jsp");
%>

<%--<jsp:forward page="readinbox.jsp" />--%>