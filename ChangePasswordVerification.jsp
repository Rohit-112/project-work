<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.Myconn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	
	String email=request.getParameter("email");
	String url1="changePassword.jsp?email=";
	System.out.println(url1+email);
	try{
		Connection con=new Myconn().getMyConn();
		PreparedStatement ps=con.prepareStatement("select *from registration where email=?");
		ps.setString(1, email);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			response.sendRedirect(url1+email);
		}else{
			response.sendRedirect("forgotPassword.jsp");
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}


%>