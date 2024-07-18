<%@page import="javax.websocket.SendResult"%>
<%@page import="dao.LawDetailsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="details" class="dto.lawDetails" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="details"/>
<%

LawDetailsDao ldo=new LawDetailsDao();
int i=ldo.lawDetails(details);
if(i>0)
{
	response.sendRedirect("lawyer_details.jsp");
}else{
	response.sendRedirect("lawyer_details_filler.jsp");
}


%>