package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conn.Myconn;
import dto.lawDetails;
public class LawDetailsDao {
	private Connection con;
	public int lawDetails(lawDetails details)
	{
		int i=0;
		String firstname=details.getFirstname();
		String lastname=details.getLastname();
		String name=firstname+" "+lastname;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement
					("insert into lawyer_details(name,phone,p1,p2,p3,p4,p5,p6,address,email) values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, details.getPhone());
			ps.setString(3, details.getP1());
			ps.setString(4, details.getP2());
			ps.setString(5, details.getP3());
			ps.setString(6, details.getP4());
			ps.setString(7, details.getP5());
			ps.setString(8, details.getP6());
			ps.setString(9, details.getAddress());
			ps.setString(10, details.getEmail());
			i=ps.executeUpdate();
			System.out.print(i);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
}
