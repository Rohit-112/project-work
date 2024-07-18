<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.Myconn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <%
   int i=0;
   	String password=request.getParameter("password");
   	String email=request.getParameter("email");
   	try{
   		Connection con=new Myconn().getMyConn();
   		PreparedStatement ps=con.prepareStatement("update registration set password=? where email=?");
   		ps.setString(1, password);
   		ps.setString(2, email);
   		i=ps.executeUpdate();
   	}catch(Exception e)
   	{
   		e.printStackTrace();
   	}
   	if(i>0)
   	{
   		response.sendRedirect("Login.jsp");
   	}else{
   		response.sendRedirect("changePassword");
   	}
   
   
   %> 