<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/bootstrap.min.css">
<link rel = "icon" type = "image/png" href = "logo.png">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	function validation(){
		var firstname = document.getElementById('first_name').value;
		var lastname = document.getElementById('last_name').value;
		var mobileNumber = document.getElementById('mobile').value;
		var emails = document.getElementById('email').value;
		var pass = document.getElementById('password').value;
		var confirmpass = document.getElementById('password2').value;
		var location = document.getElementById('location').value;
		
		
		if(firstname == ""){
			document.getElementById('firstname').innerHTML =" ** Please fill the firstname field";
			return false;
		}
		if((firstname.length <= 2) || (firstname.length > 20)) {
			document.getElementById('firstname').innerHTML =" ** Firstname lenght must be between 2 and 20";
			return false;	
		}
		if(!isNaN(firstname)){
			document.getElementById('firstname').innerHTML =" ** only characters are allowed";
			return false;
		}
		
		if(lastname == ""){
			document.getElementById('lastname').innerHTML =" ** Please fill the lastname field";
			return false;
		}
		if((lastname.length <= 2) || (lastname.length > 20)) {
			document.getElementById('lastname').innerHTML =" ** Lastname lenght must be between 2 and 20";
			return false;	
		}
		if(!isNaN(lastname)){
			document.getElementById('lastname').innerHTML =" ** only characters are allowed";
			return false;
		}
		
		if(mobileNumber == ""){
			document.getElementById('mobileno').innerHTML =" ** Please fill the mobile NUmber field";
			return false;
		}
		if(isNaN(mobileNumber)){
			document.getElementById('mobileno').innerHTML =" ** user must write digits only not characters";
			return false;
		}
		if(mobileNumber.length!=10){
			document.getElementById('mobileno').innerHTML =" ** Mobile Number must be 10 digits only";
			return false;
		}
		
		if(emails == ""){
			document.getElementById('emailids').innerHTML =" ** Please fill the email idx` field";
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
		
		if(location == ""){
			document.getElementById('location').innerHTML =" ** Please fill the Location field";
			return false;
		}
		
		
	}
	
	</script>
</head>

<body>
<%@include file="header3.jsp" %>
	<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10"><h1>Create Account</h1></div>
    	
    </div>
    <div class="row">
  		
    	<div class="col-sm-9">
            

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                
                  <form class="form" action="UserVerification.jsp" method="post" id="registrationForm" >
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="firstname" id="first_name" placeholder="first name" title="enter your first name if any.">
                            <span id="firstname" class="text-danger font-weight-bold"> </span>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="lastname" id="last_name" placeholder="last name" title="enter your last name if any.">
                              <span id="lastname" class="text-danger font-weight-bold"> </span>
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number" title="enter your mobile number if any.">
                              <span id="mobileno" class="text-danger font-weight-bold"> </span>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                              <span id="emailids" class="text-danger font-weight-bold"> </span>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                              <input type="text" class="form-control" name="location" id="location" placeholder="somewhere" title="enter a location">
                              <span id="location" class="text-danger font-weight-bold"> </span>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                              <span id="passwords" class="text-danger font-weight-bold"> </span>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
                              <span id="confrmpass" class="text-danger font-weight-bold"> </span>
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<input type="submit" value="Submit" class="btn btn-lg btn-success">
                              	   <button type="submit" class="btn btn-lg btn-success">create</button><br><br>
                               	
                            </div>
                      </div>
              	</form>
              
             
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
    <br>
    <br>
</body>
<%@include file="footer.jsp" %>
</html>