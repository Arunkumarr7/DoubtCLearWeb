<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("studentlogin.jsp");
	}
%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html lang="en">
<head>
<title>Doubt Clear</title>
<meta charset="UTF-8">
<link rel="shortcut icon" type="x-icon" href="DClear-tab.png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}

      input[type=text],
      select,textarea{
       
        padding:8px;
        border: 1px solid #5A5A5A;
        border-radius: 24px;
        box-sizing: size="25";
        margin-top: 8px;
        margin-bottom: 8px;
        resize: vertical;
      }
      
	  
      input[type=submit] {
        background-color: w3-red;
        color: #5A5A5A;
        padding: 12px 20px;
        border: none;
        border-radius: 7px;
        cursor: pointer;
      }
      input[type=submit]:hover {
        background-color: lightcoral;
      }
      .container {
        border-radius: 24px;
        background-color: #808080;
        padding: 24px;
      }
tr#element:hover{
    background-color: coral;
    cursor: pointer;

}

</style>
</head>
<body>
	
<nav>
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="#3" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Doubt</a>
    <a href="#1" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Contact</a>
    <a href="logout" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"><%=session.getAttribute("name") %></a>
	<a href="index.html" ><img align="right" src="DClear-logo.png" height="77" width="277"></a>
  </div>
</nav>
  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#2" class="w3-bar-item w3-button w3-padding-large">About</a>
    <a href="#1" class="w3-bar-item w3-button w3-padding-large">Contact</a>
    <a href="logout" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>
    <a href="" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"><%=session.getAttribute("name") %></a>
	<a href="index.html" ><img align="right" src="DClear-logo.png" height="77" width="277"></a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">Welcome  <i class="fa fa-handshake-o" style="font-size:48px"></i>  <%=session.getAttribute("name")%> <i class="fa fa-heart-o" style="font-size:48px"></i> </h1>
  <p class="w3-xlarge">Hope! Your day going well! <i class="fa fa-thumbs-o-up" style="font-size:40px"></i></p>
  
</header>

<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-newspaper-o w3-padding-64 w3-text-red" style="font-size:177px;color:red"></i>
      
    </div>

    <div class="w3-twothird">
      <h1><%=session.getAttribute("name") %> feel free to do what you want... do folowing guid to come back</h1>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;Take just a minute break if your in hurry mood, dont go with your mood</h3>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;Give some gap to mind while you finish some topics. </h3>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;Come back again and learn.</h3>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;If you get bore while learning, feel free to <a href="#1">reach to get motivation.</a></h3>
    </div>
  </div>
</div>

<section id=3>
<div class="w3-row-padding w3-sand w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-onethird w3-center">
      
      
    </div>
    <div class="w3-onethird">
      <h1><i class="fa fa-arrow-circle-down" style="font-size:48px;color:red"></i>&nbsp;&nbsp; <%=session.getAttribute("name")%>&nbsp;&nbsp;please select the class which you have doubt and get tutor details.</h1>
      <form action="studentHome.jsp" method="GET"> 
        <label for="class" class="w3-large">Class</label>
        <select id="name" name="tclasses" >
        <option value="">Please Choose...</option>
         <option value="10th">10th</option>
 		<option value="11th">11th</option>
 		<option value="12th">12th</option>
 		<option value="B.tech">B.tech</option>
 		<option value="M.tech">M.tech</option>
		<option value="BSC">BSC</option>
 		<option value="BCOM">BCOM</option>
 		<option value="Arts">Arts</option>
 		<option value="COMMERCE">COMMERCE</option>
		<option value="SCIENCE">SCIENCE</option>
 		<option value="Phd">Phd</option>
 		<option value="govt">govt exams</option>
 		<option value="Others">Others</option>
        </select></br>
        
        <label for="photo" class="w3-large">Upload captured photo.</label></br>
        <input type="file" name="photo"  style="height:50px" size="25"></input></br>
        
        <label for="message" class="w3-large">Mention Your topics which you have doubt.</label></br>
        <textarea id="message" name="message" placeholder="Type your topics.." style="height:100px" size="25"></textarea></br>
        <input type="submit" value="search" class="w3-red">
      </form>
    </div>
    </div>
    </div>
</section>
<!-- Second Grid -->
<section>
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-address-card w3-padding-64 w3-text-red" style="font-size:177px;color:red"></i>
      
    </div>

    <div class="w3-twothird">
      <h1><%=session.getAttribute("name")%>&nbsp;&nbsp; below are the selected class tutor. please contact anyone you want</h1>
      <table style="border-collapse: collapse;width: 100%;" >
<tr class="w3-pale-red">
<td style="padding: 8px;
  text-align: left;
  border-bottom: 2px solid #ddd; color:">name</td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"> speaking language</td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;">email</td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;">phone</td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;">class</td>

</tr>
<%
	String tclasses=request.getParameter("tclasses");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://dclear.c6oihiaxexbs.eu-north-1.rds.amazonaws.com/dclear","arunkumar","Arunr!90085");
	PreparedStatement ps = con.prepareStatement("select * from tutor_user where tclasses=?");
	ps.setString(1,tclasses);
	ResultSet rs=ps.executeQuery();

while(rs.next()){
%>
<tr id="element">
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><%=rs.getString("firstname") %></td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><%=rs.getString("language") %></td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><a href="mailto:abc@gmail.com?subject = Feedback&body = Message"><%=rs.getString("email") %></a></td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><%=rs.getString("phone") %></td>
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><%=rs.getString("tclasses") %></td>


</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>     
      
      
    </div>
  </div>
</div>
</section>
<section id="1">
<div class="w3-row-padding  w3-dark-grey w3-padding-24 w3-container">

	<center><h2><%=session.getAttribute("name")%> &nbsp; have any doubt ? Feel free to reach us</h2></center>
	<div class="w3-content">
    
    <div class="w3-third" >
 	
   
      <form action="studentFeedback" method="POST"> 
        <label for="fname" class="w3-large">Your good Name</label></br>
        <input type="text" id="name" name="name" placeholder="Type your name.." size="25"></br>
        
        <label for="email" class="w3-large">Gmail Address</label></br>
        <input type="email" id="mail" name="email" placeholder="Type your Gmail.." size="25"></br>
        
        <label for="message" class="w3-large">feedback Message</label></br>
        <textarea id="message" name="message" placeholder="Type your feedback.." style="height:100px" size="25"></textarea></br>                                                                                             
        <input type="submit" value="Send" class="w3-red">
      </form>
    
    </div>
    <div class="w3-twothird w3-center">
		<table border="0">
    	<tr>
			<th><i class="fa fa-phone w3-padding-24 w3-text-red" style="font-size:50px;color:red"></i></th> 
    		<th class="w3-large">+91 7019232355</th>
    	</tr>
    	<tr>
   			<th><a href="https://web.telegram.org/a/"><i class="fa fa-paper-plane-o w3-padding-18 w3-text-red" style="font-size:50px;color:red"></i></a></th>
   			<th class="w3-large"><a href="https://web.telegram.org/a/">Teligram</a></th>
   		</tr>
   		<tr>
			 <th><a href="#"><i class="fa fa-map-marker w3-padding-24 w3-text-red" style="font-size:50px;color:red"></i></a></th>
			 <th class="w3-large"><a href="#">Rajankunte Yelahanka</br>Bengaluru Karnataka-560064</a></th>
		</tr>
		<tr>
			<th><a href="mailto:doubtclearweb@gmail.com?subject = Feedback&body = Message"><i class="fa fa-envelope-o w3-padding-24 w3-text-red" style="font-size:50px;color:red"></i></a></th>
			<th class="w3-large"><a href="mailto:arunr90085@gmail.com?subject = Feedback&body = Message">Gmail</br>doubtclearweb@gmail.com</a></th>
		</tr>	
			   
	</table>    
</div>
 </div>
</div>
</section>
<!-- Footer -->
<footer class="w3-container w3-padding-24 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-18">
  <h1>Please support us on</h1>
	<a href="https://github.com/Arunkumarr7"><i class="fa fa-github w3-hover-opacity" style="font-size:50px" title="github"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.instagram.com/arun__ramsagar/"><i class="fa fa-instagram w3-hover-opacity" style="font-size:50px" title="instagram"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.facebook.com/arunkumar.yash.581/"><i class="fa fa-facebook-official w3-hover-opacity" style="font-size:50px" title="facebook"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://twitter.com/Arunkum00793483"><i class="fa fa-twitter w3-hover-opacity" style="font-size:50px" title="twitter"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://www.linkedin.com/in/arun-kumar-r-b9a5aa230"><i class="fa fa-linkedin w3-hover-opacity" style="font-size:50px" title="linkedin"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
 </div>
 <h3><span class="fa fa-copyright" style="font-size:24px"></span>Arun Kumar R, All rights reserved </h3>
</footer>



</body>
</html>
