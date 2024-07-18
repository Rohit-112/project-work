<%-- 
    Document   : stuIssue
    Created on : Feb 27, 2024, 12:53:10 AM
    Author     : admi-n
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width , initial-scale=1">
	<title>Lawyer Details Filler Page</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/glyphicon.css">
	<link rel="stylesheet" type="text/css" href="css/panel.css">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
	 <link rel = "icon" type = "image/png" href = "logo.png">
	<style type="text/css">
		label
		{
			font-weight: bold;
		}
	</style>
</head>
<body>
<%@include file="header3.jsp" %>


<!--Grievance Heading-->
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
<h1 style="align-content: center;font-weight: bold; padding-left: 15px;">Hello</h1><br>
<!--Registrtion Jumbotron-->
<div class="bg-img">
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				
			</div>
			<div class="col-sm-8">
				<div class="jumbotron" style="padding-top: 10px; text-align: center; background-color: #008080; color: white;">
					<h3>Lawyer Details form</h3>
                                        <form action="lawVailidation.jsp" method="post">
						        			<br>
                                                                                <p>Issue form</p>
						        			
						        		<div class="form-group">
						        				<label>First Name:</label>
						        				<input type="text" name="firstname"  class="form-control disabled" value="">
						        			</div>
						        			<div class="form-group">
						        				<label>Last Name:</label>
						        				<input type="text" name="lastname"  class="form-control disabled" value="">
						        			</div>
						        			<div class="form-group">
						        				<label>Phone Number:</label>
						        				<input type="text" name="phone"  class="form-control disabled" value="">
						        			</div>
						        			<div class="form-group">
						        				<label>Email:</label>
						        				<input type="text" name="email"  class="form-control disabled" value="">
						        			</div>
						        			
						        			
						        			<div class="form-group">
						        				<label>Address:</label>
						        				<textarea name="address" placeholder="Write your problems..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			
						        			<div class="form-group">
						        				<label>p1:</label>
						        				<textarea name="p1" placeholder="Write your problems..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			
						        			<div class="form-group">
						        				<label>p2:</label>
						        				<textarea name="p2" placeholder="Write your problems..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			
						        			<div class="form-group">
						        				<label>p3:</label>
						        				<textarea name="p3" placeholder="Write your problems..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			<div class="form-group">
						        				<label>p4:</label>
						        				<textarea name="p4" placeholder="Write your problems..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			<div class="form-group">
						        				<label>p5:</label>
						        				<textarea name="p5" placeholder="Write your problems..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			<div class="form-group">
						        				<label>p6:</label>
						        				<textarea name="p6" placeholder="Write your problems..." rows="10" cols="20" class="form-control"></textarea>
						        			</div>
                                                                                <p style="font-size: 10px; color: red; " id="parentValidationMsg"></p><br>
						        			<br>
						        			<div class="form-group">
						        				<input type="submit" name="signup" value="Submit" style="width: 100%; background-color: orange;  font-size: 18px; cursor: pointer; color: white;">
						        			</div>
						        			
						        		</form>
				</div>
			</div>
			
		</div>
	</div>
</div>

<%@include file="footer.jsp" %>
</body>
</html>