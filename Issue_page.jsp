<%-- 
    Document   : stuIssue
    Created on : Feb 27, 2024, 12:53:10 AM
    Author     : admi-n
--%>
<%          
				String firstname=request.getParameter("firstname");    
				String lastname=request.getParameter("lastname");
				String lname=firstname+" "+lastname;
				
				String usrFirstname=(String)session.getAttribute("firstname");
				String usrLastname=(String)session.getAttribute("lastname");
                String userName=usrFirstname+" "+usrLastname;
                String emailPro=(String)session.getAttribute("emailPre");
				
             String capsName=userName.concat(" !").toUpperCase();
            Date date=new Date();
            Date time=new Date();
            SimpleDateFormat sdf= new SimpleDateFormat("dd/MM/yy");
            SimpleDateFormat sdf1= new SimpleDateFormat("HH:mm:ss aa");
            String sd=sdf.format(date);
            String tt=sdf1.format(time);
        %>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width , initial-scale=1">
	<title>Student Issue Page</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/glyphicon.css">
	<link rel="stylesheet" type="text/css" href="css/panel.css">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		label
		{
			font-weight: bold;
		}
	</style>
</head>
<body>
<%@include file="header3.jsp" %>

<!--Slider-->
<div class="jumbotron" style="padding: 0px; margin: 0px;" >
	<div class="container">
		<div class="row"> 
			<div class="col-sm-12" style="padding-top: 20px; text-align: center;">
				<marquee direction="left"><h4 style="color:#E74C3C;">Lawyer enquiry form details: please enter your subject topic and write a 
				short description related to your problem</h4></marquee>
			</div>
		</div>
	</div>
</div>
<br>

<!-- Hello User-->
<h1 style="align-content: center;font-weight: bold; padding-left: 15px;">Hello <%=capsName%></h1><br>
<!--Registrtion Jumbotron-->
<div class="bg-img">
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				
			</div>
			<div class="col-sm-8">
				<div class="jumbotron" style="padding-top: 10px; text-align: center; background-color: #008080; color: white;">
					<h1>Issue Form</h1>
                                        <form action="Issue_page_valli.jsp" method="post">
						        			<br>
                                            <div class="form-group">
						        				<label>Your Name:</label>
						        				<input type="text" name="usrname" readonly="readonly" class="form-control disabled" value="<%=userName%>">
						        			</div>      
                                                                                						        			
						        			<div class="form-group">
						        				<label>Lawyer Name:</label>
						        				<input type="text" name="lname" readonly="readonly" class="form-control disabled" value="<%=lname%>">
						        			</div>
						        			<div class="form-group">
						        				<label>Date:</label>
						        				<input type="text" name="date" readonly="readonly" class="form-control disabled" value="<%=sd%>">
						        			</div>
						        			<div class="form-group">
						        				<label>Time:</label>
						        				<input type="text" readonly="readonly" name="time" class="form-control disabled" value="<%= tt%>">
						        			</div>
						        			<div class="form-group">
						        				<label>Email Id:</label>
						        				<input type="email" readonly="readonly" placeholder="Email ID" name="email" class="form-control" value="<%= emailPro%>">
						        			</div>
						        			
						        			
						        			<div class="form-group">
						        				<label>Issue:</label>
						        				<input type="text" name="subject" placeholder="Subject" class="form-control">
						        			</div>
						        			<div class="form-group">
						        				<label>Description:</label>
						        				<textarea name="description" placeholder="Write your issue..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			<div class="form-group">
						        				<input type="submit" name="signup" value="Submit" style="width: 100%; background-color: orange;  font-size: 18px; cursor: pointer; color: white;">
						        			</div>
						        		</form>
				</div>
			</div>
			<div class="col-sm-2">
				
			</div>
		</div>1
	</div>
</div>

<%@include file="footer.jsp" %>
</body>
</html>