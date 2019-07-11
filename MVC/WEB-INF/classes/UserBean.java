package pack;
import java.sql.*;
public class UserBean
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	private String email;
	private String pass;
	private String address;
	private String phone;
	boolean valid=false;
	public void setEmail(String email)
	{
		this.email=email;
	}
	public void setPass(String pass)
	{
		this.pass=pass;
	}
	public void setAddress(String address)
	{
		this.address=address;
	}
	public void setPhone(String phone)
	{
		this.phone=phone;
	}
	
	public String getEmail()
	{
		return email;
	}
	public String getPass()
	{
		return pass;
	}
	public String getAddress()
	{
		return address;
	}
	public String getPhone()
	{
		return phone;
	}
	public boolean getUser()
	{
		try
		{
			con=DataConnect.getConnection();
			ps=con.prepareStatement("select email from userdetails");
			rs=ps.executeQuery();
			while(rs.next())
			{
				if(email.equals(rs.getString("email")))
				{
					valid=true;
					break;
				}
			}
		
			if(!valid)
			{
			
				ps=con.prepareStatement("insert into userdetails values(?, ?, ?, ?)");
				ps.setString(1,email);
				ps.setString(2,pass);
				ps.setString(3,address);
				ps.setInt(4,Integer.parseInt(phone));
				ps.executeUpdate();
				con.close();
				
			}
		}
		catch(Exception e)
		{
		}
		return valid;
		
	}
	
	public boolean getLogin()
	{
		try
		{
			con=DataConnect.getConnection();
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
		}
		catch(Exception e)
		{
			 
		}
		return valid;
	}
		
	
}