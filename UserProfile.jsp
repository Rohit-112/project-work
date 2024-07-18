<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%

    String email=(String)session.getAttribute("emailPre");
    //String studentSem=(String)session.getAttribute("studentSem");
    /*String firstName=(String)session.getAttribute("studentFirstName");
    String lastName=(String)session.getAttribute("studentLastName");
    String studentBranch=(String)session.getAttribute("studentBranch");
    String studentPhone=(String)session.getAttribute("studentPhone");
    String studentYear=(String)session.getAttribute("studentYear");
    String studentEmail=(String)session.getAttribute("studentEmail");
    String studentPass=(String)session.getAttribute("studentPass");*/
    
    
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor_project2","root","rohit@123");
    PreparedStatement st=con.prepareStatement("select * from registration where email=?");
    st.setString(1, email);
    ResultSet rs=st.executeQuery();
    
    rs.next();
    String firstname=rs.getString(1);
    String lastname=rs.getString(2);
    String mobile=rs.getString(4);
    String imgPath=rs.getString(9);
    
    String password=rs.getString(7);
    
    
    String location=rs.getString(6);
    String age=rs.getString(10);
    
    
    int count = 0;  
          String newPass="";
        //Counts each character except space  
        for(int i = 0; i < password.length(); i++) {  
            if(password.charAt(i) != ' ')  
                count++;  
        }
        for(int j=0; j<count; j++)
        {
             newPass+="*";
        }
        session.setAttribute("NewPass", newPass);
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width , initial-scale=1">
	<title>Personal Info</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/glyphicon.css">
	<link rel="stylesheet" type="text/css" href="css/panel.css">
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel = "apple-touch-icon" type = "image/png" href = ""/>
        <link rel = "icon" type = "image/png" href = "logo.png">
	<style type="text/css">
		label
		{
			font-weight: bold;
		}
		.section:hover
		{
			background-color: gray;
		}

		.td_css
		{
			font-size:12px;
			font-weight:bold;
			color: #808080;
		}

		.table td a
		{
			text-decoration:none;
			color: inherit;
		}

		.td_bold
		{
			font-weight: bold;
			font-family: Arial, Helvetica, sans-serif;
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
				<h1>LAWYER SEEKER</h1>
			</div>
		</div>
	</div>
</div>
<br>

<!--Personal Info-->
<div class="container">
	<div class="row" >
		<h3 style="position:absolute; left:50%; transform: translate(-50%); text-align:center;">Personal Info</h3>
	</div><br><br>
	<div class="row">
		<h5 style="text-align: center; position:absolute; color:gray; font-weight:40px; left:50%; transform: translate(-50%);">Basic info, like your name and id, that you use on our website</h5>
	</div><br><br>	
	<div class="row">
			<div class="container">
					<div class="jumbotron border" style="background-color:white; padding-top:20px; padding-bottom:0px;">
						<h4>Profile</h4>
						<input type="button" onclick="window.location.href = 'Logout.jsp';" value="Logout" class="btn btn-primary"><br><br>
						<table class="table table-hover">
							<tbody>
								<tr>
									<td class="td_css">NAME</td>
                                                                        <td class="td_bold"><%=firstname.concat(" ").concat(lastname).toUpperCase()%></td>
                                      <%
                                      
                                      	String url="Editing.jsp?firstname="+firstname+"&lastname="+lastname+"&email="+""+"&contact="+""+"&location="+""+"&password="+""+"&age="+""+"&imgPath="+"";
                                      
                                      %>                                  
									<td><a href=<%=url %>><span class="glyphicon glyphicon-chevron-right"></span></a></td>
								</tr>
								<tr>
									<td class="td_css">AGE</td>
									<td class="td_bold"><%=age %></td>
									 <%
                                      
                                      	String url7="Editing.jsp?firstname="+""+"&lastname="+""+"&email="+""+"&contact="+""+"&location="+""+"&password="+""+"&age="+age+"&imgPath="+"";
                                      
                                      %> 
									<td><a href=<%=url7 %>><span class="glyphicon glyphicon-chevron-right"></span></a></td>
								</tr>
								<tr>
									<td class="td_css">Profile_url</td>
									<td class="td_bold"><%=imgPath %></td>
									<%
                                     
                                      	String url2="Editing.jsp?firstname="+""+"&lastname="+""+"&email="+""+"&contact="+""+"&location="+""+"&password="+""+"&age="+""+"&imgPath="+imgPath;
                                      
                                      %>
									<td><a href=<%=url2 %>><span class="glyphicon glyphicon-chevron-right"></span></a></td>
								</tr>
                                     
                                                                
								
                                                                <tr>
                                                                    
                                                                        <td class="td_css">PASSWORD</td>
									<td class="td_bold"><%=newPass%><br><span class="td_css"></span></td>
									<%
                                      
                                      	String url3="Editing.jsp?firstname="+""+"&lastname="+""+"&email="+""+"&contact="+""+"&location="+""+"&password="+newPass+"&age="+""+"&imgPath="+"";
                                      
                                      %>
									<td><a href=<%=url3 %>><span class="glyphicon glyphicon-chevron-right"></span></a></td>
                                                                        
								</tr>
                                                                
							</tbody>
						</table>
					</div>
			</div>
	</div>
	<div class="row">
			<div class="container">
					<div class="jumbotron border" style="background-color:white; padding-top:20px; padding-bottom:0px;">
						<h4>Contact info</h4><br><br>
						<table class="table table-hover">
							<tbody>
								<tr>
									<td class="td_css">EMAIL</td>
									<td class="td_bold"><%=email%></td>
									<%
                                      
                                      	String url4="Editing.jsp?firstname="+""+"&lastname="+""+"&email="+email+"&contact="+""+"&location="+""+"&password="+""+"&age="+""+"&imgPath="+"";
                                      
                                      %>
									<td><a href=<%=url4 %>><span class="glyphicon glyphicon-chevron-right"></span></a></td>
								</tr>
								<tr>
									<td class="td_css">CONTACT</td>
									<td class="td_bold"><%=mobile%></td>
									<%
                                      
                                      	String url5="Editing.jsp?firstname="+""+"&lastname="+""+"&email="+""+"&contact="+mobile+"&location="+""+"&password="+""+"&age="+""+"&imgPath="+"";
                                      
                                      %>
									<td><a href=<%=url5 %>><span class="glyphicon glyphicon-chevron-right"></span></a></td>
								</tr>
								<tr>
									<td class="td_css">LOCATION</td>
									<td class="td_bold"><%=location%></td>
									<%
                                      
                                      	String url6="Editing.jsp?firstname="+""+"&lastname="+""+"&email="+""+"&contact="+""+"&location="+location+"&password="+""+"&age="+""+"&imgPath="+"";
                                      
                                      %>
									<td><a href=<%=url6 %>><span class="glyphicon glyphicon-chevron-right"></span></a></td>
								</tr>
							</tbody>
						</table>
					</div>
			</div>
	</div>
</div>

</body>
</html>