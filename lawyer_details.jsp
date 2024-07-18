<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.jdbc.Driver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>Rajesh upadhyay</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
    <link rel = "icon" type = "image/png" href = "logo.png">
    
    <style>
    	body{
  background: #DAE3E7;
}

.row{
  margin-top: 40px;
}


html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
div.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 3px 10px 0 rgba(0, 0, 0, 0.1);
}

.header {
  padding: 10px 0;
  background: #f5f5f5;
  border-top: 3px solid #3AAA64;
}

.list-group {
    list-style: disc inside;

}

.list-group-item {
    display: list-item;
}

 .find-more{
   text-align: right;
 }


.label-theme{
  background: #3AAA64;
  font-size: 14px;
  padding: .3em .7em .3em;
  color: #fff;
  border-radius: .25em;
}

.label a{
  color: inherit;
}
#about{
	background: #f5f5f5;
}
#about p{
	display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    color: #666;
    line-height: 26px;
    font-size: 16px;
    font-weight: 300;
}
    	
    
    </style>
</head>
<body>
<%@include file="header1.jsp" %>
<%
	String firstname=request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String name=firstname+" "+lastname;
	String imgPath=request.getParameter("imgPath");

%>
<%
	
	String phone="";
	String email="";
	String p1="";
	String p2="";
	String p3="";
	String p4="";
	String p5="";
	String p6="";
	String address="";
	
	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor_project2","root","prince@123");
		PreparedStatement ps=con.prepareStatement
				("select name,phone,email,p1,p2,p3,p4,p5,p6,address from lawyer_details where name=?");
		ps.setString(1, name);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			phone=rs.getString(2);
			email=rs.getString(3);
			address=rs.getString(10);
			p1=rs.getString(4);
			p2=rs.getString(5);
			p3=rs.getString(6);
			p4=rs.getString(7);
			p5=rs.getString(8);
			p6=rs.getString(9);
		}
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	




%>

<hr>
<!-- ******HEADER****** -->
  <header class="header">
    <div class="container">
      <div class="teacher-name" style="padding-top:20px;">

        <div class="row" style="margin-top:0px;">
        <div class="col-md-9">
          <h2 style="font-size:38px"><strong><%=name %></strong></h2>
        </div>
       
        </div>
      </div>

      <div class="row" style="margin-top:20px;">
        <div class="col-md-3"> <!-- Image -->
          <a href="#"> <img class="rounded-circle" src=<%=imgPath %> alt="Kamal" style="width:200px;height:200px"></a>
        </div>

        <div class="col-md-6"> <!-- Rank & Qualifications -->
          <!-- <h5 style="color:#3AAA64">Associate Professor, <small>Dept. of CSE, Jatiya Kabi Kazi Nazrul Islam University</small></h5> -->
          <h5 style="color:#3AAA64"><small><%=p1 %></small></h5>
          <p><%=p2 %></p>
          <p>Address: <%=address %></p>
        </div>

        <div class="col-md-3 text-center"> <!-- Phone & Social -->
          <span class="number" style="font-size:18px">Phone:<strong><%=phone %></strong></span>
          <div class="button" style="padding-top:18px">
          <%
          	String url="Issue_page.jsp?firstname="+firstname+"&lastname="+lastname;
          %>
            <a href=<%=url %> class="btn btn-outline-success btn-block">Send Email</a>
          </div>
          <div class="social-icons" style="padding-top:18px">
            <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
            </span></a>
            <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
            </span></a>
            <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
            </span></a>
            <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-slideshare fa-stack-1x fa-inverse"></i>
            </span></a>

          </div>
        </div>
      </div>
    </div>
  </header>
    <!--End of Header-->
    
    
    <div class="container">

<!-- Section:Biography -->
  <div class="row">
        <div class="col-md-12" id="about">
          <h3>About this pro</h3>
         <p><%=p3 %></p>
         <p><%=p4 %></p>
         <p><%=p5 %></p>
        </div>
      </div>
<!-- End:Biography -->
</div>
<br>
<br>
<%@include file="footer.jsp" %>
</body>
</html>