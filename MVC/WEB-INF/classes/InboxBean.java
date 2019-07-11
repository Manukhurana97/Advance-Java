package pack;
import java.sql.*;
public class InboxBean
{
	private String count;
	private String status;
	Connection con;
	PreparedStatement ps;
	ResultSet rs;	
	public ResultSet getCountMess(String count,String status)
	{
		this.count=count;
		this.status=status;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///kuchhbhi","root","root123");
			ps=con.prepareStatement("select count(status) from messdetail where status=? and to1=?");
			ps.setString(1,status);
			ps.setString(2,count);
			rs=ps.executeQuery();
		}
		catch(Exception e){}
			return rs;
	}
}