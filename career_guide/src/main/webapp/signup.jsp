<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  
<link rel="stylesheet" type="text/css" href="signup.css">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="702438803371-8qopbkcjf4le6dk4fq4dn3ove963rjlv.apps.googleusercontent.com">
</head>
<body style="background-color: #808B96;">
<div>
		<jsp:include page="header_home.jsp" />
	</div>
	
<div class = "box mt-4" style="width: 750px;margin-left: 350px;">
<form action="stu_registration.jsp" style="border:1px solid #ccc">
  <div class="container">
<div >
	<center>
	 <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
      <img id="myImg"><br>
      <p id="name"></p>
      <div id="status">
   </div>
<!--    <button  style="width =50%"   onclick="myFunction()">Sign Out</button> -->
   </center>

     <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    
    <p>Already Have an Account? <a href="login.jsp" style="color:dodgerblue">Login</a></p>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
</div>
</div>
<script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp?email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
   </script>
   
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>
</body>
</html>
