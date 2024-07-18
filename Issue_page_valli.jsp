<%@page import="dao.IssueDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="issue" class="dto.Issue" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="issue"/>

<%
IssueDao isd=new IssueDao();
int i=isd.issueUpdate(issue);
if(i>0)
{
	response.sendRedirect("MailServlet");
}else{
	response.sendRedirect("Issue_page.jsp");
}


%>