<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

	.content{
		background-color: #808B96;
		height :640px;
		
	}
	.content a{
	width: 500px;
	}
	

	
</style>
</head>
<body>


	<div>
		<jsp:include page="header_admin.jsp" />
	</div>

	 <div class="content" >
	 <center><br>
	 <fieldset>
	 	<legend >ADD SECTION</legend>
	 	<a href="stu_registration.jsp" class="btn btn-info" role="button" style="margin-top: 20px">ADD STUDENT</a><br>
	 	<a href="add_exam.jsp" class="btn btn-info" role="button" style="margin-top: 20px">ADD EXAM</a><br>
	 	
<!-- 	 	<a href="add_exam.jsp" class="btn btn-info" role="button" style="margin-top: 20px">ADD EXAM</a><br> -->
	 	<a href="add_question.jsp" class="btn btn-info" role="button" style="margin-top: 20px">ADD QUESTION</a><br>
	 </fieldset>
	 	<br>
	 
 	 <fieldset>
 	 	<legend>REPORT SECTION</legend> 
 	 	<a href="user_report.jsp" class="btn btn-info" role="button" style="margin-top: 20px">SYSTEM USER REPORT</a><br>
<!--  	 	<a href="#link" class="btn btn-info" role="button" style="margin-top: 20px">STUDENT REPORT</a><br>  -->
 	 	<a href="exam_report.jsp" class="btn btn-info" role="button" style="margin-top: 20px">EXAM REPORT</a><br> 
 	 	<a href="question_report.jsp" class="btn btn-info" role="button" style="margin-top: 20px;margin-bottom: 30px;">QUESTION REPORT</a><br> 
 	 </fieldset> 
	 </center>
	 </div>

</body>
</html>