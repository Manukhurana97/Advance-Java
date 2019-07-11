package pack;
import java.sql.*;
public class DataConnect
{
	Connection con;
	public static Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
		}
		catch(Exception e){}
		
		return con;
	}
}