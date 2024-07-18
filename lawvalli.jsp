<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String firstname=request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String name=firstname+" "+lastname;
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	String email=request.getParameter("email");
	String p1=request.getParameter("p1");
	String p2=request.getParameter("p2");
	String p3=request.getParameter("p3");
	String p4=request.getParameter("p4");
	String p5=request.getParameter("p5");
	String p6=request.getParameter("p6");
	int i=0;
	public int lawDetails()
	{
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor_project2","root","prince@123");
			PreparedStatement ps=con.prepareStatement
					("insert into lawyer details(name,phone,p1,p2,p3,p4,p5,p6,address,email) values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, p1);
			ps.setString(4, p2);
			ps.setString(5, p3);
			ps.setString(6, p4);
			ps.setString(7, p5);
			ps.setString(8, p6);
			ps.setString(9, address);
			ps.setString(10, email);
			i=ps.executeUpdate();
			return i;x
						
		}catch(Exception e)
		{
			
		}
			}
	if(i>0)
	{
		response.sendRedirect("lawyer_details.jsp");
	}else
	{
		response.sendRedirect("lawyer_details_filler.jsp");
	}
	





%>