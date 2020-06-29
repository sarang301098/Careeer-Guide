<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/sakila"
        user="root" password="root"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM exam;
    </sql:query>
    <div>
		<jsp:include page="header_admin.jsp" />
	</div>
	<div style="height:50px;background-color: #808B96;"></div>
     <div style="background-color: #808B96;height:600px;;">
    <div align="center">
        <table border="1">
           
            <tr>
                <th>EXAM TYPE</th>
               <th>DESCRIPTION</th>
                
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.examtype}" /></td>
                    <td><c:out value="${user.description}" /></td>
                    
                </tr>
            </c:forEach>
        </table>
    </div>
    </div>
</body>
</html>
