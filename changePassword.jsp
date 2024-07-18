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
	var pass = document.getElementById('inputEmail').value;
	var confirmpass = document.getElementById('inputPassword').value;

	if(pass == ""){
		document.getElementById('passwords').innerHTML =" ** Please fill the password field";
		return false;
	}
	if((pass.length <= 5) || (pass.length > 20)) {
		document.getElementById('passwords').innerHTML =" ** Passwords lenght must be between  5 and 20";
		return false;	
	}


	if(pass!=confirmpass){
		document.getElementById('confrmpass').innerHTML =" ** Password does not match the confirm password";
		return false;
	}



	if(confirmpass == ""){
		document.getElementById('confrmpass').innerHTML =" ** Please fill the confirmpassword field";
		return false;
	}
}


</script>
</head>
<body>

<%@include file="header3.jsp" %>
<% String email=request.getParameter("email"); %>
<div class="container">
<h1 class="form-heading">login Form</h1>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>Please enter your new password</h2>
   <p></p>
   </div>
    <form id="Login" action="PasswordUpdate.jsp" onsubmit="return validation()">

        <div class="form-group">

			
            <input type="password" class="form-control" id="inputEmail" placeholder="New password" name="password">
			<span id="passwords" class="text-danger font-weight-bold"> </span>
        </div>

        <div class="form-group">
			<input type="hidden" name="email" value=<%=email %>>
            <input type="password" class="form-control" id="inputPassword" placeholder="confirm password" name="confirm_password">
			<span id="confrmpass" class="text-danger font-weight-bold"> </span>
        </div>
        <div class="forgot">
        
       
</div>
        
        <input type="submit"  value="Change password" class="btn btn-primary">
       
    </form>
    </div>

</div></div></div>
<%@include file="footer.jsp" %>

</body>
</html>