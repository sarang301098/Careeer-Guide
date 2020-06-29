<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #808B96;">
<div>
		<jsp:include page="header_home.jsp" />
	</div>

 <%
 String name=(String)request.getParameter("name");
 String email=(String)request.getParameter("email");
  %>


<center><h1>HI <%=name %></h1>
	<h1> <%=email %></h1>	
	<a href="choose_stream.jsp">Click here to continue</a>	
</center>

</body>
</html>