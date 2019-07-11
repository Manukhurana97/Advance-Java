<%@page import="java.util.Date,java.text.ParseException,java.text.SimpleDateFormat"%>

<%
		String str=rs.getString("date");
		String outDate=null;
		SimpleDateFormat sdf = new SimpleDateFormat("EEEdd/MM/yyyy,HH:mm:ss");
		Date d2 = sdf.parse(str);
		
		Date d1 = new Date();
		
		if(d1.getDate()==d2.getDate() && d1.getMonth()==d2.getMonth() && d1.getYear()==d2.getYear())
		{
			outDate = d2.getHours()+":"+d2.getMinutes()+":"+d2.getSeconds();
		}
		else if((d1.getTime() - d2.getTime())<=604800000)
		{
			int z = d2.getDay();
			switch(z)
			{
				case 0:
					outDate = "Sun";
					break;
				
				case 1:
					outDate="Mon";
					break;
					
				case 2:
					outDate="Tue";
					break;
				case 3:
					outDate="Wed";
					break;
				case 4:
					outDate="Thu";
					break;
				case 5:
					outDate="Fri";
					break;
				case 6:
					outDate="Sat";
			}
		}
		else
		{
			outDate = d2.getDate()+"/"+(d2.getMonth()+1)+"/"+(d2.getYear()+1900);
		}
		out.print(outDate);
%>