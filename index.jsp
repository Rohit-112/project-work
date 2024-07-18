<%-- 
    Document   : index
    Created on : Mar 31, 2024, 3:05:53 PM
    Author     : admi-n
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width , initial-scale=1">
        <title>Home-page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/glyphicon.css">
        <link rel="stylesheet" type="text/css" href="css/panel.css">
        <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel = "icon" type = "image/png" href = "">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel = "apple-touch-icon" type = "image/png" href = ""/>
        <link rel = "icon" type = "image/png" href = "logo.png">
        
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">	</script>
  <script src="js/bootstrap.min.js"></script>s
  
        <script src="js/bootstrap.js"></script>
        <script src="main_js.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <style type="text/css">
            label
            {
                font-weight: bold;
            }
        </style>
       <script type="text/javascript">
             function m()
            {
               var x = ' <%=(String) session.getAttribute("X")%> ';
                if (x)
                {
                    alert("wrong id password");
                }

            }

        </script>
        <style>
        
        * {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}



* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}
.slideshow-container {
  max-width: 1520px;
  position: relative;
  margin: auto;
  
}
.slideshow-container-transaction   {
  max-width: 1520px;
  position: relative;
  margin: auto;
  
}

/

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 3s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}





.parabrand
{
	position: relative;
	background-color: white;
	width: 410;
	left: 500px;
	top: 3px;
	height: 100px;
}
.cart
{
	position: relative;
	bottom:  30px;
}
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 50%;
  padding: 20px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #2980B9;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
        
.container a.list-group-item {
    height:auto;
    min-height:220px;
}
.container a.list-group-item.active small {
    color:#fff;
}
.container .stars {
    margin:20px auto 1px;    
}
.container .checked {
  color: orange;
}        
        
        </style>

    </head>
    <body>
        <%

            String ff = (String) session.getAttribute("fValidationMsg");
            if (ff == null) {
                ff = " ";
            }
            String ss = (String) session.getAttribute("sValidationMsg");
            if (ss == null) {
                ss = "   ";
            }
            String pp = (String) session.getAttribute("pValidationMsg");
            if (pp == null) {
                pp = "   ";
            }
        %>
        
       <%@include file="header3.jsp" %>
        <br>

        <!--Image Silder-->
        
	<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext"></div>
    <a href="#"><img src="img/front-4.jpg" style="width:1519px; height:580px"></a>
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <a href="#"><img src="img/front-2.jpg" style="width:1519px; height: 580px"></a>
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <a href="#"><img src="img/front-3.jpg" style="width:1519px; height:580px"></a>
    <div class="text"></div>
  </div>

  <br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

</div>
	

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); 
}
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>





        <br>
        <hr>
        <br>
        <!--Information-->
        <div class="container">	
            <div class="row">	
                <div class="col-sm-8" style="text-align:justify;">
                    <img src="img/Home/front.jpg" class="img-responsive img-thumbnail" width="250" align="left" vspace="5" hspace="5">
                    <p>
                        <%=ff%>Motivation is basically motivating the employees to work in
                        favour of their workplace to increase productivity of both
                        employees and organisation. Effective grievance handling can be
                        a motivational tool to boost the productivity of both, the
                        employees and the work place. Because increasing rate of
                        grievance can decrease the motivation and productivity of	
                        employees, it affects the productivity of workplace directly.
                    </p>
                    <div class="jumbotron">
                        <div class="row">
                            <div class="col-sm-12" style="text-align: justify; background-color:#FFFFFF;" >
                             <h2>SELECT CATEGEORY</h2>
                                <div class="row">
  									<div class="column" style="background-color:#aaa;">
   									<a href="lawyer.jsp"><img src="img/Home/civil_law.jpg" style="width:270px;height:270px;"></a>
   									 
 								 </div>
 								 
 								 <div class="column" style="background-color:#bbb;">
  									  <a href="lawyer.jsp"><img src="img/Home/crime_law.jpg" style="width:270px;height:270px;"></a>
  								</div>
						</div>
						<hr>
						<div class="row">
  									<div class="column" style="background-color:#aaa;">
   									<a href="lawyer.jsp"><img src="img/Home/court_marriage.jpg" style="width:270px;height:270px;"></a>
 								 </div>
 								 
 								 <div class="column" style="background-color:#bbb;">
  									 <a href="lawyer.jsp"><img src="img/Home/cyber_law.jpg" style="width:270px;height:270px;"></a>
  								</div>
						</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4" style="text-align:justify;">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Latest News</h3>
                        </div>
                        <marquee direction="up">
                            <div class="panel-body">
                            <a style="color:blue"> check status for yur enquiry</a>
                               
                            </div>
                            <div class="panel-body">
                            <a href="#" style="color:red;">
                                Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.</a>
                            </div>
                            <div class="panel-body">
                                Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                            </div>
                            <div class="panel-body">
                                Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                            </div>
                            <div class="panel-body">
                        	<a href="#" style="color:red;">
                                Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                                </a>
                            </div>
                        </marquee>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <br>
        
       <div class="container">
    <div class="row">
		<div class="well">
        <h1 class="text-center">Best Lawyers near you</h1>
        <div class="list-group">
          <a href="#" class="list-group-item active">
                <div class="media col-md-3">
                    <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive"  src="img/lawyer/lr2.jpg" alt="placehold.it/350x250" >
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> Alok Nath </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 14240 <small> votes </small></h2>
                    <button type="button" class="btn btn-default btn-lg btn-block"> View Profile </button>
                    <div class="stars">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <p> Average 4.5 <small> / </small> 5 </p>
                </div>
          </a>
          <a href="#" class="list-group-item">
                <div class="media col-md-3">
                    <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/lr1.jpg" alt="placehold.it/350x250" >
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> Vijay Govind </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 12424 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block">View Profile</button>
                    <div class="stars">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <p> Average 3.9 <small> / </small> 5 </p>
                </div>
          </a>
          <a href="#" class="list-group-item">
                <div class="media col-md-3">
                    <figure class="pull-left">
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/lr3.jpg" alt="placehold.it/350x250">
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> Rajesh Upadhyay </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 13540 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block">View Profile</button>
                    <div class="stars">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <p> Average 4.1 <small> / </small> 5 </p>
                </div>
          </a>
        </div>
        </div>
	</div>
</div>

        <!-- Footer -->
        <hr style="color: orange;">
    

<%@include file="footer.jsp" %>
    </body>
</html>