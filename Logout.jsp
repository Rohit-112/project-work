<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean flag = false;

if(session!=null)
{
    session.invalidate();
    flag=true;
}

if(flag){
    response.sendRedirect("Login.jsp");
}else{
    response.sendRedirect("UserProfile.jsp");
}

%>