<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="signup.css">
</head>
<body>
<div class = "box" style="width: 750px;margin-left: 350px;margin-top: 25px">
	<form action="CheckLogin" method="post" style="border:1px solid #ccc">
  	<div class="container">

    <h1>Login</h1>
    
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

   
    
    <p>Don't Have an Account? <a href="SignupDetails.jsp" style="color:dodgerblue">Signup</a></p>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Login</button>
    </div>
  </div>
</form>
</div>
</body>
</html>