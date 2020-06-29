<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
Map< Integer,Integer> h1=(HashMap< Integer,Integer>)request.getAttribute("Result");
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
for (Map.Entry< Integer,Integer> me:h1.entrySet()) 
{
	int result =me.getKey();

	int result1=me.getValue();
	if(result==3){
		map = new HashMap<Object,Object>(); map.put("label", "Biology"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==7){
		map = new HashMap<Object,Object>(); map.put("label", "Construction and Structure"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==12){
		map = new HashMap<Object,Object>(); map.put("label", "Bioprocess"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==13){
		map = new HashMap<Object,Object>(); map.put("label", "Machine & Tools"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==14){
		map = new HashMap<Object,Object>(); map.put("label", "Flying and mechanics"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==2){
		map = new HashMap<Object,Object>(); map.put("label", "Electrical and Electronics"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==6){
		map = new HashMap<Object,Object>(); map.put("label", "Natural rresources on Earth"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==8){
		map = new HashMap<Object,Object>(); map.put("label", "Software design"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==10){
		map = new HashMap<Object,Object>(); map.put("label", "Chemical Research and study"); map.put("y", (result1/12)); list.add(map);
	}
	if(result==11){
		map = new HashMap<Object,Object>(); map.put("label", "Natural Resources inn water"); map.put("y", (result1/12)); list.add(map);
	}
}
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "Result"
	},
	axisX: {
		title: "Probability"
	},
	axisY: {
		title: "Engineering stream"
	},
	data: [{
		type: "column",
		yValueFormatString: "$#,##0.0# billion",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>