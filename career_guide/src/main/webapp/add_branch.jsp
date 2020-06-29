<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="signup.css">

</head>
<body>
<div>
		<jsp:include page="header_admin.jsp" />
	</div>
	<div style="background-color: #808B96;height: 640px;">
<div class = "box" style="width: 750px;margin-left: 350px;">
<form action="add_branch.jsp" style="border:1px solid #ccc;">
  <div class="container">
            
          
            <h1>ADD BRANCH</h1>
     <hr>
					
					 <label for="branch_type"><b> Branch Type:</b> </label>
                    <input type="text" placeholder="Enter Type Of Branch " name="branch_type" id = "txt" required /> 
                           <br> 
					
<!--             	 <label for="exam_type"><b> Exam Type:</b> </label> -->
<!--                     <input type="text" placeholder="Enter Type Of Exam " name="exam_type" id = "txt" required />  -->
<!--                            <br>  -->
            	 
                <label for="description"><b> Description</b> </label>
                    <input type="text" placeholder="Enter description" name="description" id = "txt" required /> 
                           <br> 
            
				 <label for="branchcode"><b> Branch Code</b> </label>
                    <input type="text" placeholder="Enter Branch code" name="branchcode" id = "txt" required /> 
                           <br>
            
              
                                    
      <button type="submit" class="signupbtn" name="Add" value="Add">Add</button>
    </div>
 
            </form>
</div>

   
</div>
</body>
</html>