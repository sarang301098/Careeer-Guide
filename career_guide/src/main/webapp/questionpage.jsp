<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.bean.QuestionBean"%>
    <%@page import="com.dao.QuestionDao"%>
    <%@page import="java.util.*"%>
    <%@page import="java.lang.*"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.MySqlConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <% 
      Connection conn = MySqlConnection.getConnection();
        if(conn!=null)
        {	try 
            {
                Statement stmt = conn.createStatement();
                String selectSQL  = "select * from questionbank";
                ResultSet rs = stmt.executeQuery(selectSQL);
                while(rs.next())
                {
                    QuestionBean eBean = new QuestionBean();
                   	String id=rs.getString("questionid");
                    String question=rs.getString("question");
                    String opta=rs.getString("OptA");
                    String optb=rs.getString("OptB");
                    String optc=rs.getString("OptC");
                    String field=rs.getString("Field");
                    String val2=field;
                    val2+="|2";
                    String val1=field;
                    val1+="|1";
                    String val0=field;
                    val0+="|0";
                    %><%=id%> <%=question %> 
                    <input type="radio" name="gender" value="<%=val2 %>"><%=opta %></span><br> 
                    <input type="radio" name="gender" value="<%=val1 %>"><%=opta %></span><br> 
                    <input type="radio" name="gender" value="<%=val0 %>"><%=optc %></span><br>
        			<button type="button" onclick="displayRadioValue()">Save</button><br>  
                      <%

                }
            } 
        catch (Exception e) 
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        }
       %>

    <br> 
      
      
    <br> 
      
    <div id="result"></div> 
      
    <script> 
        function displayRadioValue() { 
            var ele = document.getElementsByName('gender'); 
              
            for(i = 0; i < ele.length; i++) { 
                if(ele[i].checked) 
                document.getElementById("result").innerHTML
                        = "Gender: "+ele[i].value;
                Map map = new HashMap();
                map.put(, ele[i].value);
            } 
        } 
    </script> 
</body> 
</html>                     
