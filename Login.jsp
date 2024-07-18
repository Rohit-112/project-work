<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel = "icon" type = "image/png" href = "logo.png">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
body#LoginForm{ 
background-image:url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}

.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.login-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}
.forgot {
  text-align: left; margin-bottom:30px;
}
.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}

</style>

<script type="text/javascript">
function validation(){
	var pass = document.getElementById('inputPassword').value;
	var emails = document.getElementById('inputEmail').value;



	if(emails == ""){
		document.getElementById('emailids').innerHTML =" ** Please fill the email id field";
		return false;
	}
	if(emails.indexOf('@') <= 0 ){
		document.getElementById('emailids').innerHTML =" ** @ Invalid Position";
		return false;
	}

	if((emails.charAt(emails.length-4)!='.') && (emails.charAt(emails.length-3)!='.')){
		document.getElementById('emailids').innerHTML =" ** . Invalid Position";
		return false;
	}
	
	if(pass == ""){
		document.getElementById('pass').innerHTML =" ** Please fill the password field";
		return false;
	}
}
	


</script>
</head>
<body>

<%@include file="header3.jsp" %>
<hr>
<div class="container">
<h1 class="form-heading">login Form</h1>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>User Login</h2>
   <p>Please enter your email and password</p>
   </div>
    <form id="Login" action="LoginSession.jsp" onsubmit="return validation()">

        <div class="form-group">


            <input type="email" class="form-control" id="inputEmail" placeholder="Email Address" name="email">
			<span id="emailids" class="text-danger font-weight-bold"> </span>
        </div>

        <div class="form-group">

            <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
			<span id="pass" class="text-danger font-weight-bold"> </span>
        </div>
        <div class="forgot">
        <a href="forgotPassword.jsp">Forgot password?</a><br>
         <a href="Create_account.jsp">Create Account?</a><br>
       
</div>
        <button type="submit" class="btn btn-primary">Login</button><br><br>
        <input type="button" onclick="window.location.href = 'OwnerLogin.jsp';" value="Owner Login" class="btn btn-primary">
       
    </form>
    </div>

</div></div></div>
<hr>
<br>
<%@include file="footer.jsp" %>

</body>
</html>
