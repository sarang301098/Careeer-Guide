<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="com.util.MySqlConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test page</title>
</head>
<body>
<% 
	String firstname=request.getParameter("firstname");
	out.println("First Name is "+ firstname);
%>	
	<br>
<%
	String lastname=request.getParameter("lastname");
	out.println("Last Name is "+ lastname);
%>	
	<br>
<%
	String username=request.getParameter("username");
	out.println(" User Name is "+ username);
%>
	<br>
<%
	String email=request.getParameter("email");
	out.println("Email is "+ email);
%>
	<br>
<%
	String phonenumber=request.getParameter("phonenumber");
	out.println("Phone is "+ phonenumber);
%>
	<br>
<%
	String dob=request.getParameter("dob");
	out.println("Date of Birth is "+ dob);
%> 
	<br>
<%
	String password=request.getParameter("password");
	out.println("Password is "+ password);
%> 
	<br>
<%

	try{
		Connection con=MySqlConnection.getConnection();
		Statement stmt=con.createStatement();
		PreparedStatement stmt3=con.prepareStatement("Insert into logindata values(?,?,?,?,?,?,?)");
		stmt3.setString(1,firstname);
		stmt3.setString(2,lastname);
		stmt3.setString(3,username);
		stmt3.setString(4,email);
		stmt3.setString(5,phonenumber);
		stmt3.setString(6,dob);
		stmt3.setString(7,password);
		int i=stmt3.executeUpdate();
		System.out.println("Records Inserted");
		con.close();
	}
	catch(Exception e){System.out.println(e);}
%>
</body>
</html>
