<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<style type="text/css">

     nav{
      height: 80px;
     }
     
    .navbar .nav-item:not(:last-child) {
 body {
  background: #f2f2f2;
}

.navbar .nav-item:not(:last-child) {
  margin-right: 35px;
}

.dropdown-toggle::after {
   transition: transform 0.15s linear; 
}

.show.dropdown .dropdown-toggle::after {
  transform: translateY(3px);
}

.dropdown-menu {
  margin-top: 0;
}


</style>
</head>
<body>

		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      Career Guide
      </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item" style="margin-right: 20px">
          <a class="nav-link" href="admin_home.jsp" >HOME</a>
        </li>

         <li class="nav-item dropdown" style="margin-right: 20px">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ADD NEW
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
            <a class="dropdown-item" href="stu_registration.jsp">ADD STUDENT</a>
              <div class="dropdown-divider"></div>    
            <a class="dropdown-item" href="add_exam.jsp">ADD EXAM</a>
              <div class="dropdown-divider"></div>
<!--             <a class="dropdown-item" href="#">ADD COURCE</a> -->
<!--               <div class="dropdown-divider"></div> -->
<!--             <a class="dropdown-item" href="add_exam.jsp">ADD EXAM</a> -->
<!--               <div class="dropdown-divider"></div> -->
            <a class="dropdown-item" href="add_question.jsp">ADD QUESTION</a>
<!--               <div class="dropdown-divider"></div> -->
<!--             <a class="dropdown-item" href="add_question(img).jsp">ADD QUESTION(IMAGE)</a> -->
          </div>
        </li> 

        <li class="nav-item dropdown" style="margin-right: 20px">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          REPORT
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
            <a class="dropdown-item" href="user_report.jsp">SYSTEM USER REPORT</a>
              <div class="dropdown-divider"></div>    
<!--             <a class="dropdown-item" href="#">STUDENT REPORT</a> -->
<!--               <div class="dropdown-divider"></div> -->
            <a class="dropdown-item" href="exam_report.jsp">EXAM REPORT</a>
              <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="question_report.jsp">QUESTION REPORT</a>
          </div>
        </li> 

         <li class="nav-item" style="margin-right: 100px">
          <a class="nav-link" href="#">ABOUT</a>
        </li>       
 <!--       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>   
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li> -->
      </ul>
    </div>
  </div>
</nav>


 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>