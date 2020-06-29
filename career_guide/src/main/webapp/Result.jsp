<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Map.Entry"%>
<%-- <%@page import="com.AnswerServlet.hm"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#que {
	margin-top:50px;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  height : 600px;
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
  background-color: #4797b1;
/*   #808B96 */
  color: white;
}
</style>
</head>
<body>
<%
Map< Integer,Integer> h1=(HashMap< Integer,Integer>)request.getAttribute("Result");
Map< Integer,Integer> h2=new HashMap< Integer,Integer>();
Map< String,Integer> h3=new HashMap< String,Integer>();
Map.Entry<Integer,Integer> maxEntry = null;
for (Map.Entry< Integer,Integer> me:h1.entrySet()) 
{
	int result =me.getKey();

	int result1=me.getValue();
	if(result==3){
		System.out.println("Engineering related to Application of Biology");
		System.out.println("Core Branch :ChemicalEngineering,BiomedicalEngineering,BiochemicalEngineering");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Application of Biology",result1);
	}
	if(result==7){
		System.out.println("Engineering related to Construction and Structures");
		System.out.println("Core Branch: CivilEngineering,ArchitectureEngineering");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to  Construction and Structures",result1);
	}
	if(result==12){
		System.out.println("Engineering related to Application of Bioprocess");
		System.out.println("Core Branch: TextileEngineering, LeatherTechnology");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Application of Bioprocess",result1);
	}
	if(result==13){
		System.out.println("Engineering related to Machine & Tools");
		System.out.println("Core Branch: Automobile Engineering, MechanicalEngineering, ProductionEngineering");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Machine & Tools",result1);
	}
	if(result==14){
		System.out.println("Engineering related to Flying and Mechanics");
		System.out.println("Core Branch: Automobile Engineering, MechanicalEngineering, AreronauticalEngineering");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Flying and Mechanics",result1);
	}
	if(result==2){
		System.out.println("Engineering related to Application of Electrical and Electronics");
		System.out.println("Core Branch: Electreical Engineering, Instrumental Engineering, Electronics& Communication");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Application of Electrical and Electronics",result1);
	}
	if(result==6){
		System.out.println("Engineering related to Natural Resources on Earth");
		System.out.println("Core Branch:Environmental Science &MetallurgicalEngineering ");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Natural Resources on Earth",result1);
	}
	if(result==8){
		System.out.println("Engineering related to Software design");
		System.out.println("Core Branch:Computer Engineering,Information Technology");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Software design",result1);
	}
	if(result==10){
		System.out.println("Engineering related to Chemical Research & Study");
		System.out.println("Core Branch:Chemical Engineering Nuclear Engineering");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Chemical Research & Study",result1);
	}
	if(result==11){
		System.out.println("Engineering related to Natural Resources in Water");
		System.out.println("Petroluem &oil Engineering , Naval and Ocean Engineering ");
		System.out.println("Your Answer Result is "+result1);
		h3.put("Engineering related to Natural Resources in Water",result1);
	}
	if (maxEntry == null || me.getValue()>=maxEntry.getValue() ) {
           h2.put(result,result1);
           maxEntry=me;
        }
%><%
}
%>
<center>
<table id="que">
  			<tr>
  				  <th>Students Engineering Interested Group</th>
  				  <th>Score</th>
  				  <th>Branch Under interested Engineering Group</th>
 			 </tr>
<%for (Map.Entry< Integer,Integer> me:h1.entrySet()) 
{
	int result =me.getKey();
	int result1=me.getValue();
	if(result==3){
		%><tr>
		<td>Engineering related to Application of Biology</td>
		<td><%=result1%></td>
		<td>ChemicalEngineering,BiomedicalEngineering,BiochemicalEngineering<></td>
		</tr><%
	}
	if(result==7){
		%><tr>
		<td>Engineering related to Construction and Structures</td>
		<td><%= result1%></td>
		<td>CivilEngineering,ArchitectureEngineering</td>
		</tr><%
	}
	if(result==12){
		%><tr>
		<td>Engineering related to Application of Bioprocess</td>
		<td><%= result1%></td>
		<td>TextileEngineering, LeatherTechnology</td>
		</tr><%
	}
	if(result==13){
		%><tr>
		<td>Engineering related to Machine & Tools</td>
		<td><%= result1%></td>
		<td>Automobile Engineering, MechanicalEngineering, ProductionEngineering</td>
		</tr><%	
	}
	if(result==14){
		%><tr>
		<td>Engineering related to Flying and Mechanics</td>
		<td><%= result1%></td>
		<td>Automobile Engineering, MechanicalEngineering, AreronauticalEngineering</td>
		</tr><%
	}
	if(result==2){
		%><tr>
		<td>Engineering related to Application of Electrical and Electronics</td>
		<td><%= result1%></td>
		<td>Electrical Engineering, Instrumental Engineering, Electronics& Communication</td>
		</tr><%
	}
	if(result==6){
		%><tr>
		<td>Engineering related to Natural Resources onEarth</td>
		<td><%= result1%></td>
		<td>Environmental Science &MetallurgicalEngineering</td>
		</tr><%
	}
	if(result==8){
		%><tr>
		<td>Engineering related to Software design</td>
		<td><%= result1%></td>
		<td>Computer Engineering,Information Technology</td>
		</tr><%
	}
	if(result==10){
		%><tr>
		<td>Engineering related to Chemical Research & Study</td>
		<td><%= result1%></td>
		<td>Chemical Engineering Nuclear Engineering</td>
		</tr><%
	}
	if(result==11){
		%><tr>
		<td>Engineering related to Natural Resources in Water</td>
		<td><%=result1%></td>
		<td>Petroleum &oil Engineering , Naval and Ocean Engineering </td>
		</tr><%
	}
}
%>		
</table>
</center>
</body>
</html>