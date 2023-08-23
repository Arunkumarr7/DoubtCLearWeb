<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="x-icon" href="DClear-tab.png">
<title>DClear</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="css/bootstrap.css"></link>
 <style>
 .login-form {
  background: #fee;
  width: 800px;
  margin: 10px auto;
  display: -webkit-box;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
          flex-direction: column;
          font-weight: 700;
  border-radius: 70px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
}
.login-form h1 {
  padding: 50px 50px 0 50px;
  font-weight: 500;
}
.login-form .content {
  padding: 35px;
  text-align: center;
}
 
 .container-sm {
 max-width: 700px;
 }
 .login-form a.link {
  text-decoration: none;
  color: #747474;
  letter-spacing: 0.2px;
  text-transform: uppercase;
  display: inline-block;
  margin-top: 20px;
}
 </style>
</head>
<body class="bg-danger" >

 <div class="container-sm">
 <main>
 <div class="py-5 text-center">
 
 </div>
 <div>
 <div class="my-4">
 <div class="login-form">
 
 <form action="studentRegistrationClass" method="post">
  &nbsp;&nbsp;&nbsp;&nbsp;<h2 style="font-size:34px">
    <a href="index.html" class="link">Go Back</a>
    </h2>
 <h1>Student registration form</h1>
 <p class="lead"><b><i>Please Enter You are Correct Details</i></b></p>
 <div class="row g-3">
 <div class="col-sm-6">
 
 <label  class="form-label">First name</label>
 <input type="text" class="form-control" name="firstname" placeholder="" value="" required>
 </div>
 
 <div class="col-sm-6">
 <label for="lastName" class="form-label">Last name</label>
 <input type="text" class="form-control" name="lastname" placeholder="" value="" required>
 </div>
 
 <div class="col-sm-6">
 <label for="email" class="form-label">Email</label>
 <input type="email" class="form-control" name="email" placeholder="you@example.com" 
required>
 </div>
 
 <div class="col-sm-6">
 <label for="phone" class="form-label">Phone Number <span class="textmuted"></span></label>
 <input type="tel" class="form-control" name="phone" pattern="[0-9]{10,12}" required>
 </div> 

 <div class="col-md-4">
 <label for="country" class="form-label">Country</label>
 <select class="form-select" name="country" required>
 <option value="">Choose...</option>
 <option>India</option>
 </select>
 </div>
 
 <div class="col-md-5">
 <label for="state" class="form-label">State</label>
 <select class="form-select" name="state" required>
 <option value="">Choose...</option>
  <option value="Karnataka">Karnataka</option>
 <option value="AndraPradesh">Andra Pradesh</option>
 <option value="Kerala">Kerala</option>
 <option value="Tamilnadu">Tamilnadu</option>
 <option value="Telengana">Telangana</option>
 <option value="Maharastra">Maharastra</option>
 <option value="Karnataka">Rajasthan</option>
 <option value="other">other</option>
 </select>

 </div>
 
 <div class="col-md-3">
 <label for="password" class="form-label">password</label>
 <input type="password" class="form-control" name="password" required>
 </div>
 
 <div class="col-md-6">
 <div class="form-check">
 <label>Gender</label> 
 </div>
 <div class="form-check">
 <input class="form-check-input" type="radio" name="gender" value="male" 
id="flexRadioDefault1">
 <label class="form-check-label" >Male</label>
 </div>
 <div class="form-check">
 <input class="form-check-input" type="radio" name="gender" value="female"  checked>
 <label class="form-check-label" for="flexRadioDefault2">
 Female
 </label>
</div></div>
 <div class="col-mb-6">
 <label for="plus">Current Course</label><br>
 <select class="form-select" name="coursename" aria-label="Default select example">
 <option value="10th">10th</option>
 <option value="11th">11th</option>
 <option value="12th">12th</option>
 <option value="B.tech">B.tech</option>
 <option value="M.tech">M.tech</option>
 <option value="BSC">BSC</option>
 <option value="other">other</option>
 
 </select>
 </div>
   
<button class="w-50 btn btn-primary btn-lg" type="submit">Submit</button>
</div>
 </form>
 </div>
 </div>
 </div>
 </main>
 </div>
</body>
</html>
