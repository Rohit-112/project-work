<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: white;
  height: 100px;
 
}


.top a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
   text-decoration: none;
  font-size: 20px;
}
.top.active a{
  background-color: white;
  color: #000;
}

.top a:hover {
  background-color: #ddd;
  color: black;
}

.search-container {
  box-sizing: border-box;
  position: relative;
  left: 650px;
  bottom:53px;

}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 13%;
  height: 36px;
  background: #e9e9e9;
  border-radius: 10px solid;
    
  
}

form.example button {
  float: left;
  width: 3%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 15px;
  border: 1px solid grey;
  
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}

.logo {
  width: 229px;
  height: 90px;
  position: relative;
  left: 2px;
  top:5px;
}
.top
{
  position: relative;
  left: 258px;
  bottom:58px;

}

.aftersearch
{
   position: relative;
   left: 1335px;
   bottom: 138px;
}

.aftersearch a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
   text-decoration: none;
  font-size: 15px;
}
.aftersearch a:hover {
  background-color: #ddd;
  color: black;
}

</style>
</head>
<body>
	<div class="topnav">
  <a href="index.jsp"><img src="header/logo1.png" class="logo"></a>
  
  <div class="top">
  <a href="index.jsp">Home</a>
  <a href="#">Contact</a>
 
  <a href="#about">About</a>
  
  </div>
 
  <div class="search-container">
    <form class="example" action="#">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search" style="font-size:12px"></i></button>
</form>
  </div>
  <div class="aftersearch">
  	<a href="sessionValidation.jsp"><div class="cart">
  	<img src="header/pofile.png" style="width: 30px; position: relative; top:  15px;">
  	</div></a>
    <a href="">
 
  </div>
</div>
</body>
</html>