<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("tutorlogin.jsp");
	}
%>
<!DOCTYPE html>
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


</style>
</head>
<>
	
<nav>
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="#2" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About</a>
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
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"><%=session.getAttribute("name") %></a>
  	<a href="index.html" ><img align="right" src="DClear-logo.png" height="77" width="277"></a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">Welcome  <i class="fa fa-handshake-o" style="font-size:48px"></i>  <%=session.getAttribute("name")%> <i class="fa fa-heart-o" style="font-size:48px"></i> </h1>
  <p class="w3-xlarge">Hope! Your day going well! <i class="fa fa-thumbs-o-up" style="font-size:40px"></i></p>
  
</header>
<section id="2">
<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
   
      <h1>Your doing great job <%=session.getAttribute("name")%> <i class="fa fa-suitcase" style="font-size:24px;color:red"></i></h1>
      <h3 class="w3-padding-top-32"><i class="fa fa-hourglass-half" style="font-size:24px;color:red"></i>&nbsp;&nbsp;&nbsp;&nbsp;Please Wait, have cup of coffee while we connecting to students.</h3>
     
      
      <h3 class="w3-padding-top-32"><i class="fa fa-smile-o" style="font-size:34px;color:red"></i>&nbsp;&nbsp;&nbsp;&nbsp;Make students happy by clearing there doubt.</h3>
      
      
      <h3 class="w3-padding-top-32"><i class="fa fa-question-circle" style="font-size:32px;color:red"></i>&nbsp;&nbsp;&nbsp;&nbsp;If you dont know topic which student asking, don't worry help them to clear the doubt by reference good website or books.</h3>
      
   
    </div>

    <div class="w3-third w3-center">
      <i class="fa fa-pencil-square-o w3-padding-64 w3-text-red" style="font-size:177px;color:red"></i>
    </div>
  </div>
</div>
</section>

<div class="w3-row-padding w3-sand w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-onethird w3-center">
      
      
    </div>
    <div class="w3-onethird">
      <h1><i class="fa fa-arrow-circle-down" style="font-size:48px;color:red"></i>Instruction to teach student with these options&nbsp;&nbsp;&nbsp;&nbsp;<span>Quick</span></h1>
      <h3 class="w3-padding-top-18"><span class="fa fa-envelope" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;you can clear the doubt in mail.</h3>
      <h3 class="w3-padding-top-18"><span class="fa fa-video-camera" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;you can clear the doubt by meeting the student through zoom</h3>
      <h3 class="w3-padding-top-18"><span class="fa fa-rss" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;you can clear the doubt by creating event in teams</h3>
      <h3 class="w3-padding-top-18"><span class="fa fa-phone" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;you can clear the doubt by in call with student permission</h3>
    </div>
    </div>
    </div>

<!-- Second Grid -->

<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-user-plus w3-padding-64 w3-text-red" style="font-size:177px;color:red"></i>
      
    </div>

    <div class="w3-twothird">
      <h1>What makes a DClear tutor?</h1>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;Approachable,supportive & patient</h3>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;Efficient & clear communicator</h3>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;Committed to helping students succeed</h3>
      <h3 class="w3-padding-top-32"><span class="fa fa-check-square-o" style="font-size:27px;color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;Experts you selected subject areas & topic</h3>
    </div>
  </div>
</div>
</section>
<section id="1">
<div class="w3-row-padding  w3-dark-grey w3-padding-24 w3-container">

	<center><h2><%=session.getAttribute("name")%> &nbsp;&nbsp;&nbsp;&nbsp;have any doubt ? Feel free to reach us</h2></center>
	<div class="w3-content">
    
    <div class="w3-third" >
 	
   
      <form action="tutorFeedback" method="POST"> 
        <label for="fname" class="w3-large">Name</label></br>
        <input type="text" id="name" name="name" placeholder="Type your name.." size="25"></br>
        
        <label for="email" class="w3-large">E-mail Address</label></br>
        <input type="email" id="mail" name="email" placeholder="Type your e-mail.." size="25"></br>
        
        <label for="message" class="w3-large">Message</label></br>
        <textarea id="message" name="message" placeholder="Type your message.." style="height:100px" size="25"></textarea></br>
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
			<th><a href="mailto:arunr90085@gmail.com?subject = Feedback&body = Message"><i class="fa fa-envelope-o w3-padding-24 w3-text-red" style="font-size:50px;color:red"></i></a></th>
			<th class="w3-large"><a href="mailto:arunr90085@gmail.com?subject = Feedback&body = Message">E-mail</br>arunr90085@gmail.com</a></th>
		</tr>	
			   
	</table>    
</div>
 </div>
</div>
</section>
<!-- Footer -->
<footer class="w3-container w3-padding-24 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
  <h1>follow us on</h1>
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
