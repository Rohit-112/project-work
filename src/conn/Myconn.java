package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Myconn {
	private static final String Driver_class="com.mysql.cj.jdbc.Driver";
	private static final String URL="jdbc:mysql://localhost:3306/minor_project2";
	private static final String User_name="root";
	private static final String password="rohit@123";
	private Connection con;
	public Connection getMyConn()throws Exception{
		if(con==null || con.isClosed()) {
			Class.forName(Driver_class);
			con = DriverManager.getConnection(URL, User_name, password);
		}
		return con;
	}
}
