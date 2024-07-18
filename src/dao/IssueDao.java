package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conn.Myconn;
import dto.Issue;

public class IssueDao {
	private Connection con;
	public int issueUpdate(Issue issue)
	{
		int i=0;
		try{
			con=new Myconn().getMyConn();
			PreparedStatement ps=con.prepareStatement
					("insert into issue(usrname,usremail,lname,subject,date,time,email,description) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, issue.getUsrname());
			ps.setString(2, issue.getUsremail());
			ps.setString(3, issue.getLname());
			ps.setString(4, issue.getSubject());
			ps.setString(5, issue.getDate());
			ps.setString(6, issue.getTime());
			ps.setString(7, issue.getEmail());
			ps.setString(8, issue.getDescription());
			i=ps.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
}
