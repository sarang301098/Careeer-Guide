<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



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
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
