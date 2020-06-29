<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="com.bean.QuestionBean"%>
<%@page import="com.dao.QuestionDao"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.MySqlConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.generate_pdf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Barchart" method="post">
<%
 	String objId=(String)request.getAttribute("Result");
	System.out.println("result:"+objId);
 	%> 

	<input type="hidden" name=objId" value=<%=objId %> />


<input type="submit" value="Generate Barchart"></input>
</form>
<form action="Piechart">
<input type="submit" value="Generate Piechart"></input>
</form>
</body>
</html>