<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	HttpSession sesion=request.getSession(false);
	
	String email=(String)session.getAttribute("emailPre");
	String password=(String)session.getAttribute("password");
	if(email!=null && password!=null)
	{
		response.sendRedirect("UserProfile.jsp");
	}else{
		response.sendRedirect("Login.jsp");
	}
%>