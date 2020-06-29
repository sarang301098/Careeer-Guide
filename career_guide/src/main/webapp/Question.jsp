<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@page import="com.bean.QuestionBean"%>
<%@page import="com.dao.QuestionDao"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.MySqlConnection"%>
<%@page import="java.sql.Connection"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#que {
	margin-top:20px;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#que td, #que th {
  border: 3px solid #ddd;
  padding: 8px;
}

#que tr:nth-child(even){background-color: #f2f2f2;}

#que tr:hover {background-color: #ddd;}

#que th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
/*   #808B96 */
  color: white;
}
</style>
</head>
<body>

				<%
// 				String type=request.getParameter("type");
				String count=(String)session.getAttribute("count");
				
				int t=0;
				if(count==null)
				{
					String name="1";
// 					out.println("In "+count);
					session.setAttribute("count", name);
					t=Integer.parseInt(name);
				}
				else
				{
					t=Integer.parseInt(count);
// 					out.println(t);
				}
// 				Connection con=MySqlConnection.getConnection();
				Connection conn = MySqlConnection.getConnection();
        if(conn!=null)
        {
            try 
            {
                Statement stmt = conn.createStatement();
                String selectSQL  = "select * from questionbank";
                 
                ResultSet rs = stmt.executeQuery(selectSQL);
                 int t1=t,t2=0;
                 %>
                 <center>		<h1>ENGINEERING BRANCH SELECTOR EXAM</h1><hr></center>
                 <form action="AnswerServlet">
                 <%
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
                   	int temp=Integer.parseInt(id);

                   	t2++;
                   	if(t<=t1+1 && t2>=t1)
                   	{
                   		count = Integer.toString(t);
                   	%>            
                   	<center>
                   	<table id="que">
                   					<tr>
  				  <th><%=question %></th>
 			 </tr><br>
                   					<%t++;%>
                   					<tr>
   			 	<td><input type="radio" name="<%=id %>" value="<%=val2 %>"><%=opta %><br></td>
  			</tr>
                   					<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=val1 %>"><%=optb %><br></td>
  			</tr>
                   		<tr>
    			<td>				<input type="radio" name="<%=id %>" value="<%=val0 %>"><%=optc %><br></td>
  			</tr>
                		</table>	
                	<%
                   	}
                }%>
                 <input type="hidden" name="hide" value="<%=t%>">
                 <%
            } 
            catch (Exception e) 
            {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
		  	%>
			<input type="submit" value="Save and Next" class="btn btn-primary btn-lg" style="margin-top: 50px;width: 400px;">
                	<%count = Integer.toString(t); 
                	session.setAttribute("count", count);
//                 	out.println(count+" "+t);
                	%>
                	</center>
        </form>
</body>
</html>
<%-- 		<display:table name="table" sort="list" pagesize="4" id="table1"> --%>
<%-- 		<display:column paramScope="session"> --%>
<%-- 				<span style="font-size: 30px">${table1.questionid}</span> --%>
<%-- 				<span style="font-size: 30px">${table1.question}</span><br> --%>
<%-- 				<%t++; %> --%>
<%-- 				<input type="radio" name="${table1.questionid}" value="2"><span style="font-size: 30px">${table1.optA}</span><br> --%>
<%-- 				<input type="radio" name="${table1.questionid}" value="1"><span style="font-size: 30px">${table1.optB}</span><br> --%>
<%-- 				<input type="radio" name="${table1.questionid}" value="0"><span style="font-size: 30px">${table1.optC}</span><br> --%>
<!-- 		<hr style="margin-top:70px;width:1030px;margin-left: 0px;">			 -->
<%-- 		</display:column> --%>
<%-- 	</display:table> --%>