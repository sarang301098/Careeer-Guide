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
	<div style="background-color: #808B96;">
<div class = "box" style="width: 750px;margin-left: 350px;">
<form action="add_question.jsp" style="border:1px solid #ccc;">
  <div class="container">
            
          
            <h1>ADD QUESTION</h1>
     <hr>

<!--             	 <label for="exam_type"><b> Exam Type:</b> </label> -->
<!--                     <input type="text" placeholder="Enter Type Of Exam " name="exam_type" id = "txt" required />  -->
<!--                            <br>  -->
            	 
                <label for="Question"><b> Question</b> </label>
                    <input type="text" placeholder="Enter Question" name="Question" id = "txt" required /> 
                           <br> 
            

            
                <label for="opt_A"><b> Option A:</b> </label> 
                    <input type="text" placeholder="Enter Option A" name="opt_A" id = "txt"  required />  
                        <br>
            

                <label for="opt_B"><b> Option B:</b> </label> 
                    <input type="text" placeholder="Enter Option B" name="opt_B" id = "txt"  required />  
                        <br>

            
                            
                <label for="opt_C"><b> Option C:</b> </label> 
                    <input type="text" placeholder="Enter Option C" name="opt_D" id = "txt"  required />  
                        <br>
            
				 
<!--                 <label for="branchcode"><b> Branch Code</b> </label>  -->
<!--                     <input type="text" placeholder="Enter Branch Code" name="branchcode" id = "txt"  required />   -->
<!--                         <br> -->

<!--                 <label for="opt_D"><b> Option D:</b> </label>  -->
<!--                     <input type="text" placeholder="Enter Option D" name="opt_D" id = "txt"  required />   -->
<!--                         <br> -->
                        
                                    
<!--                 <label for="opt_correct"><b> Correct Option:</b> </label>  -->
<!--                     <input type="text" placeholder="Enter Correct Option" name="opt_correct" id = "txt"  required />   -->
<!--                         <br> -->
            
                                    
      <button type="submit" class="signupbtn" name="Add" value="Add">Add</button>
    </div>
 
            </form>
</div>

   
</div>
</body>
</html>