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
#questiontable {
	margin-top:20px;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

#questiontable td, #questiontable th {
  border: 3px solid #ddd;
  padding: 8px;
}

#questiontable tr:nth-child(even){background-color: #f2f2f2;}

#questiontable tr:hover {background-color: #ddd;}

#questiontable th {
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
				Connection conn = MySqlConnection.getConnection();
        	if(conn!=null)
        	{
            try 
            {
                Statement stmt = conn.createStatement();
                String selectSQL  = "select * from questionbanka";
                 
                ResultSet rs = stmt.executeQuery(selectSQL);
                 int t1=t,t2=0;
                 %>
                 <center>		<h1>ENGINEERING BRANCH SELECTOR EXAM</h1><hr></center>
                 <form action="Answer1">
                 <%
                while(rs.next())
                {
                    QuestionBean eBean = new QuestionBean();
                   	String id=rs.getString("questionid");
                    String question=rs.getString("question");
                    String Opta=rs.getString("optA");
                    String Optb=rs.getString("optB");
                    String Optc=rs.getString("optC");
                    String field=rs.getString("field");
                    String opta="",optb="",optc="",vala=field,valb=field,valc=field;
                    vala+="|";
                    valb+="|";
                    valc+="|";
                    String a[]=Opta.split("|");
                    for(int i=0;i<a.length-2;i++){opta+=a[i];}
                    vala+=a[a.length-1];
                    String b[]=Optb.split("|");
                    for(int i=0;i<b.length-2;i++){optb+=b[i];}
                    valb+=b[b.length-1];
                    String c[]=Optc.split("|");
                    for(int i=0;i<c.length-2;i++){optc+=c[i];}
                    valc+=c[c.length-1];
                   	int temp=Integer.parseInt(id);
                   	t2++;
                   	if(t<=t1+1 && t2>=t1)
                   	{
                   		count = Integer.toString(t);
                   		if(question.contains("hasimage|") && Opta.contains("hasimage|")){
                   			String que="",queimage="",oa="",ob="",oc="";
                   			String q[]=question.split("hasimage|");
                   			for(int i=0;i<q.length-8;i++){que+=q[i];}
                   			for(int i=q.length-6;i<q.length;i++){queimage+=q[i];}
                   			String oia[]=opta.split("hasimage|");
                   			for(int i=oia.length-6;i<oia.length;i++){oa+=oia[i];}
                   			String oib[]=optb.split("hasimage|");
                   			for(int i=oib.length-6;i<oib.length;i++){ob+=oib[i];}
                   			String oic[]=optc.split("hasimage|");
                   			for(int i=oic.length-6;i<oic.length;i++){oc+=oic[i];}
                   			System.out.println("Quesimage:"+queimage+"opta"+oa+"optb"+ob+"optc"+oc);
                   			
                   	%>            
                   	<center>
                   	<table id="questiontable">
                   					<tr>
  				  <th><%=id %>&nbsp<%=que %><br><img src="Quepics/<%=queimage %>"></th>
 			 </tr><br>
                   					<%t++;%>
                   					<tr>
   			 	<td><input type="radio" name="<%=id %>" value="<%=vala %>"><img src="Quepics/<%=oa%>"><br></td>
  			</tr>
                   					<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valb %>"><img src="Quepics/<%=ob%>"><br></td>
  			</tr>
                   		<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valc %>"><img src="Quepics/<%=oc%>"><br></td>
  			</tr>
                		</table>	
                	<%}
                   		if(question.contains("hasimage|") && !Opta.contains("hasimage|")){
                   			String que="",queimage="",oa="",ob="",oc="";
                   			String q[]=question.split("hasimage|");
                   			for(int i=0;i<q.length-8;i++){que+=q[i];}
                   			for(int i=q.length-6;i<q.length;i++){queimage+=q[i];}		
                   	%>            
                   	<center>
                   	<table id="questiontable">
                   					<tr>
  				  <th><%=id %>&nbsp<%=que %><br><img src="Quepics/<%=queimage %>"></th>
 			 </tr><br>
                   					<%t++;%>
                   					<tr>
   			 	<td><input type="radio" name="<%=id %>" value="<%=vala %>"><%=opta%><br></td>
  			</tr>
                   					<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valb %>"><%=optb%><br></td>
  			</tr>
                   		<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valc %>"><%=optc%><br></td>
  			</tr>
                		</table>	
                	<%}
                   		if(!question.contains("hasimage|") && Opta.contains("hasimage|")){
                   			String que="",queimage="",oa="",ob="",oc="";
                   			String oia[]=opta.split("hasimage|");
                   			for(int i=oia.length-6;i<oia.length;i++){oa+=oia[i];}
                   			String oib[]=optb.split("hasimage|");
                   			for(int i=oib.length-6;i<oib.length;i++){ob+=oib[i];}
                   			String oic[]=optc.split("hasimage|");
                   			for(int i=oic.length-6;i<oic.length;i++){oc+=oic[i];}
                   			System.out.println("Quesimage:"+queimage+"opta"+oa+"optb"+ob+"optc"+oc);
                   			
                   	%>            
                   	<center>
                   	<table id="questiontable">
                   					<tr>
  				  <th><%=id %>&nbsp<%=question %><br></th>
 			 </tr><br>
                   					<%t++;%>
                   					<tr>
   			 	<td><input type="radio" name="<%=id %>" value="<%=vala %>"><img src="Quepics/<%=oa%>"><br></td>
  			</tr>
                   					<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valb %>"><img src="Quepics/<%=ob%>"><br></td>
  			</tr>
                   		<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valc %>"><img src="Quepics/<%=oc%>"><br></td>
  			</tr>
                		</table>	
                	<%}
                   		if(!question.contains("hasimage|") && !Opta.contains("hasimage|")){                   	%>            
                   	<center>
                   	<table id="questiontable">
                   					<tr>
  				  <th><%=id %>&nbsp<%=question %></th>
 			 </tr><br>
                   					<%t++;%>
                   					<tr>
   			 	<td><input type="radio" name="<%=id %>" value="<%=vala %>"><%=opta%><br></td>
  			</tr>
                   					<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valb %>"><%=optb%><br></td>
  			</tr>
                   		<tr>
    			<td><input type="radio" name="<%=id %>" value="<%=valc %>"><%=optc%><br></td>
  			</tr>
                		</table>	
                	<%}
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