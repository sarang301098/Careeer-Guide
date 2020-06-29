<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career Guide</title>
<style>
	.content{
		background-color: #808B96;
		height : 640px;
	}
	a.tooltip {
  outline: none;
  margin-left:500px;
  margin-top : 250px;
  color: white;
  font-size : 80px;
  -webkit-animation: blink .75s linear infinite;
  -moz-animation: blink .75s linear infinite;
  -ms-animation: blink .75s linear infinite;
  -o-animation: blink .75s linear infinite;
  animation: blink .75s linear infinite;
}

@-webkit-keyframes blink { 
   0% {opacity: 1;}
   50%{opacity:1;}
   100%{opacity:0;}
}
@-moz-keyframes blink { 
   0% {opacity: 1;}
   50%{opacity:1;}
   100%{opacity:0;}
}
@keyframes blink { 
   0% {opacity: 1;}
   50%{opacity:1;}
   100%{opacity:0;}
}



</style>
</head>
<body>

	<div>
		<jsp:include page="header_home.jsp" />
	</div>
	 <div class="content" >
	 	<a class="tooltip">CAREER GUIDE</a>
	 </div>
	
</body>
</html>