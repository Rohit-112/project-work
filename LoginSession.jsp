<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

	String email=request.getParameter("email");
	String password=request.getParameter("password");
	boolean flag=false;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection
				("jdbc:mysql://localhost:3306/minor_project2","root","rohit@123");
		PreparedStatement ps=con.prepareStatement
				("select *from registration where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			session.setAttribute("firstname", rs.getString(1));
			session.setAttribute("lastname", rs.getString(2));
			session.setAttribute("phone", rs.getString(3));
			session.setAttribute("mobile", rs.getString(4));
			session.setAttribute("emailPre", rs.getString(5));
			session.setAttribute("location", rs.getString(6));
			session.setAttribute("password", rs.getString(7));
			session.setAttribute("fileName", rs.getString(8));
			session.setAttribute("imgPath", rs.getString(9));
			flag=true;
		}
	}catch(Exception e)
	{
		
	}
	if(flag==true)
	{
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("Login.jsp");
	}







%>