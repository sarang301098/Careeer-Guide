<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="signup.css">
</head>
<body>
<div>
		<jsp:include page="header_home.jsp" />
	</div>
	<div style="background-color: #808B96;height:640px;">
	<div class = "box" style="width: 750px;margin-left: 400px;margin-top: 0px;">
<form action="choose_stream.jsp" style="border:1px solid #ccc">
  <div class="container">

    <h1>Login</h1>
    
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="em" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="ps" required>

   
    
    <p>Don't Have an Account? <a href="signup.jsp" style="color:dodgerblue">Signup</a></p>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Login</button>
    </div>
  </div>
</form>
</div>
</div>

</body>
</html>