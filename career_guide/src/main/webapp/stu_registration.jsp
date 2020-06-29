<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="signup.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<div>
		<jsp:include page="header_admin.jsp" />
	</div>
<div style="background-color: #808B96;">
<div class = "box" style="width: 750px;margin-left: 350px;">
<form action="choose_stream.jsp" style="border:1px solid #ccc">
  <div class="container">
            
          
            <h1>REGISTER</h1>
     <hr>

            	 
                <label for="firstname"><b> First name:</b> </label>
                    <input type="text" placeholder="Enter Firstname" name="firstname" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>   <br> 
            

            
                <label for="lastname"><b> Last name:</b> </label> 
                    <input type="text" placeholder="Enter Lastname" name="lastname" id = "txt" onkeyup = "Validate(this)" placeholder="hyphen or single quote OK" required />  
                        <div id="errLast"></div><br>
            

            
                <label for="email"><b> Email Address:</b> </label> 
                    <input  required type="text" placeholder="Enter Valid Email" name="email" id = "email"  onchange="email_validate(this.value);" />   
                        <div class="status" id="status"></div><br>
            

            
                <label for="username"><b> User name: </b> <small>This will be your login user name</small> </label> 
                    <input type="text" placeholder="Enter Username" name="username" id = "txt" onkeyup = "Validate(this)" placeholder="minimum 6 letters" required />  
                        <div id="errLast"></div><br>
            
                
                          <label for="phonenumber"><b>Phone Number</b> </label>
                    <input required type="text" placeholder="Enter Phone No" name="phonenumber" id="phone"  maxlength="28" onkeyup="validatephone(this);" placeholder=""/> <br>

                    <label for="Gender"><b>Gender</b> </label>
                     <input required type="text" placeholder="Enter Gender" name="gender" id="txt"  maxlength="28" placeholder=""/> <br>
    <!--            <label for="password"><b> Password:</b> </label>
                    <input required name="password" type="password"  minlength="4" maxlength="16"  id="pass1" /> </p>

                <label for="password"><b> Password Confirm: </b></label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate"  id="pass2" onkeyup="checkPass(); return false;" />
                        <span id="confirmMessage" class="confirmMessage"></span>-->
            
<br>
             <label for="dateofbirth"><b>Date of Birth</b> </label>
            
           <input type="text" placeholder="Enter Date of Birth" name="dob" id="txtDate" onblur = "ValidateDOB()" />
			<span class="error" id="lblError"></span>
			<br>
			<br>
		
		<label for="Country"><b> Country </b> </label>
                    <input type="text" placeholder="Enter Country" name="country" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>   <br> 
        <label for="State"><b> State </b> </label>
                    <input type="text" placeholder="Enter State" name="state" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>   <br> 
        <label for="City"><b> City </b> </label>
                    <input type="text" placeholder="Enter City" name="city" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>   <br> 
               <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">   <label for="terms">I agree with the <a href="t&c.jsp" title="You may read our terms and conditions by clicking on this link" target="_blank">terms and conditions</a> for Registration.</label><span class="req">* </span>
            </div>

            <div class="clearfix">
             
            
      <button type="submit" class="signupbtn" name="submit_reg" value="Register">REGISTER</button>
    </div>
 
            </form>

<script type="text/javascript">
  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
</script>
<script type="text/javascript">
function checkPass()
{
   
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    
    var message = document.getElementById('confirmMessage');
    
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
   
    if(pass1.value == pass2.value){
    
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match"
    }else{
  
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
} 
function validatephone(phone) 
{
    var maintainplus = '';
    var numval = phone.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    phone.value = maintainplus + curphonevar;
    var maintainplus = '';
    phone.focus;
}

function Validate(txt) {
    txt.value = txt.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
}

function email_validate(email)
{
var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

    if(regMail.test(email) == false)
    {
    document.getElementById("status").innerHTML    = "<span class='warning'>Email address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("status").innerHTML	= "<span class='valid'>Thanks, you have entered a valid Email address!</span>";	
    }
}
 function ValidateDOB() {
        var lblError = document.getElementById("lblError");
        var dateString = document.getElementById("txtDate").value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
       
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            lblError.innerHTML = "Eligibility 18 years ONLY."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                return false;
            }
 
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    return false;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                  
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        return false;
                    }
                }
            }
            lblError.innerHTML = "";
            return true;
        } else {
            lblError.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            return false;
        }
    }

function add_validate(address)
{
var regAdd = /^(?=.*\d)[a-zA-Z\s\d\/]+$/;
  
    if(regAdd.test(address) == false)
    {
    document.getElementById("statusAdd").innerHTML	= "<span class='warning'>Address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("statusAdd").innerHTML	= "<span class='valid'>Thanks, Address looks valid!</span>";	
    }
}

$("button").click(function() {
	swal({
		  title: "Good job!",
		  text: "You Are Sucessfully Registered!",
		  icon: "success",
		  timer : 10000,
	    showConfirmButton: false
	  });
	});

</script>
   
</div>
</div>
</body>
</html>
<%@page import="java.sql.*,java.util.*"%>

<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String username=request.getParameter("username");
String phone=request.getParameter("phonenumber");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String country=request.getParameter("country");
String state=request.getParameter("state");
String city=request.getParameter("city");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila", "root", "root");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into register(firstname,lastname,email,username,phone,gender,dob,country,state,city)values('"+firstname+"','"+lastname+"','"+email+"','"+username+"','"+phone+"','"+gender+"','"+dob+"','"+country+"','"+state+"','"+city+"')");
//out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
