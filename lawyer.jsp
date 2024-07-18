<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Lawyr" content="text/html; charset=ISO-8859-1">
<title>Lawyer page</title>

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
* {box-sizing: border-box}
	
        
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
	<%@include file="header1.jsp" %>
	
	  <div class="container">
    <div class="row">
		<div class="well">
        <h1 class="text-center">Our Best Lawyer List</h1>
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
                    <button type="button" class="btn btn-default btn-lg btn-block" 
                    onclick="window.location.href = 'lawyer_details.jsp?firstname=Alok&lastname=Nath&imgPath=img/lawyer/lr2.jpg';"> View Profile </button>
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
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/Mahesh-Agarwal.jpg" alt="placehold.it/350x250" >
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> Mahesh Agarwal </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 12424 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block"
                    onclick="window.location.href = 'lawyer_details.jsp?firstname=Mahesh&lastname=Agarwal&imgPath=img/lawyer/Mahesh-Agarwal.jpg';">View Profile</button>
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
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/Ashish-Ahuja.jpg" alt="placehold.it/350x250" >
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading">Ashish Ahuja.jpg</h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 12424 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block"
                    onclick="window.location.href = 'lawyer_details.jsp?firstname=Ashish&lastname=Ahuja&imgPath=img/lawyer/Ashish-Ahuja.jpg';">View Profile</button>
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
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/Pravin-Anand.jpg" alt="placehold.it/350x250" >
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> Pravin Anand </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 1050 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block"
                    onclick="window.location.href = 'lawyer_details.jsp?firstname=Pravin&lastname=Anand&imgPath=img/lawyer/Pravin-Anand.jpg';">View Profile</button>
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
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/Sanjay-Asher.jpg" alt="placehold.it/350x250" >
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> Sanjay Asher </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 13004 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block"
                    onclick="window.location.href = 'lawyer_details.jsp?firstname=Sanjay&lastname=Asher&imgPath=img/lawyer/Sanjay-Asher.jpg';">View Profile</button>
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
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/lr1.jpg" alt="placehold.it/350x250" >
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> Mr. Kapoor Upadhyay </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 12000 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block"
                    onclick="window.location.href = 'lawyer_details.jsp?firstname=Kapoor&lastname=Upadhyay&imgPath=img/lawyer/lr1.jpg';">View Profile</button>
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
                        <img class="media-object img-rounded img-responsive" src="img/lawyer/MP-Bharucha.jpg" alt="placehold.it/350x250">
                    </figure>
                </div>
                <div class="col-md-6">
                    <h4 class="list-group-item-heading"> MP Bharucha </h4>
                    <p class="list-group-item-text"> Motivation is basically motivating the employees to work in
                                favour of their workplace to increase productivity of both
                                employees and organisation.
                    </p>
                </div>
                <div class="col-md-3 text-center">
                    <h2> 13540 <small> votes </small></h2>
                    <button type="button" class="btn btn-primary btn-lg btn-block"
                    onclick="window.location.href = 'lawyer_details.jsp?firstname=MP&lastname=Bharucha&imgPath=img/lawyer/MP-Bharucha.jpg';">View Profile</button>
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

<%@include file="footer.jsp" %>
</body>
</html>