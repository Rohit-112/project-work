<%@page import="dao.RegisterDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:useBean id="register" class="dto.Register" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="register"/>
<%

RegisterDao reg=new RegisterDao();
int i=reg.registration(register);
if(i>0)
{
	response.sendRedirect("Login.jsp");
}else{
	response.sendRedirect("Create_account.jsp");
}


%>