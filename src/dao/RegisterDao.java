package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conn.Myconn;
import dto.Register;

public class RegisterDao {
	private Connection con;
	public int registration(Register register)
	{
		int i=0;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement
("insert into registration(firstname,lastname,phone,mobile,email,location,password) values(?,?,?,?,?,?,?)");
			ps.setString(1, register.getFirstname());
			ps.setString(2, register.getLastname());
			ps.setString(3, register.getPhone());
			ps.setString(4, register.getMobile());
			ps.setString(5, register.getEmail());
			ps.setString(6, register.getLocation());
			ps.setString(7, register.getPassword());
			i=ps.executeUpdate();
		}catch(Exception e)
		{
			
		}
		return i;
		
		
	}
	
	public boolean isUser(String user,String password)
	{
		boolean flag=false;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement
					("select *from registration where email=? and password=?");
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				flag=true;
			}
			
		}catch(Exception e)
		{
			
		}
		return flag;
	}
	public boolean isAdmin(String username,String password)
	{
		boolean flag=false;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement("select *from owner where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				flag=true;
			}
		}catch(Exception e)
		{
			
		}
		return flag;
		
	}
}
