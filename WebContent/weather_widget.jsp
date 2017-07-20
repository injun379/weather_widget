<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="/weather_widget/cartoony_weather/cartoony_weather.css" rel="stylesheet">
<script>
$(document).ready(function(){
	var d = new Date();
	var year = d.getFullYear();
	var month = d.getMonth() + 1;
	if(month < 10) {
		month = '0'+month;
	}
	console.log(month);
	var day = d.getDate();
	if(day < 10) {
		day = '0'+day;
	}
	var date = year+month+day+'';
	console.log(date);
	var hour = d.getHours();
	var minute = d.getMinutes(); 
	if(minute < 40) {
		if(hour > 0) {
			hour = hour - 1;
		} else {
			hour = 23;
		}
	}
	if(hour < 10) {
		hour = '0'+hour;
	}
	hour = hour+'00';
	console.log(hour);
	$('#date').val(date);
	$('#hour').val(hour);
});	
</script>
<%
	String tempur = request.getParameter("tempur");
	String sky = request.getParameter("sky");
	String rainStat = request.getParameter("rainStat");
	
	System.out.println("tempur : "+tempur);
	System.out.println("sky : "+sky);
	System.out.println("sky : "+sky);
	
	String weaterIcon = "";
	String cloud = "";
	String sun = "";
	String rain = "";
	
	if(sky == null || tempur == null || rainStat == null){
		tempur = "";
	} else {
		if(sky.equals("1")) {
			weaterIcon = "sunny";
		} else if(sky.equals("2")) {
			weaterIcon = "partly_cloudy";
			sun = "partly_cloudy__sun";
			cloud = "partly_cloudy__cloud";
		} else if(sky.equals("3")) {
			weaterIcon = "stormy";
		} else if(sky.equals("4")) {
			weaterIcon = "rainy";
			cloud = "rainy__cloud";
		} else {
			weaterIcon = "";
		}
		
		if(rainStat.equals("1")) {
			rain = "rainy__rain";
		} else if(rainStat.equals("2")) {
			rain = "thundery__rain";
		} else {
			rain = "";
		}
	}
	
	
	System.out.println("weaterIcon : "+weaterIcon);
%>
</head>
<body>
<div class="weather_body" >
	<div id="weaterIcon" class="<%=weaterIcon %>">
	<div class="<%= sun %>"></div>
	<div class="<%= cloud %>"></div>
	<div class="<%= rain %>"></div>
	</div> 
	<h2>현재 기온 : <%= tempur %>℃</h2>
</div>
<form action="./weather_action.jsp">
	<input type="hidden" name="date" id="date">
	<input type="hidden" name="hour" id="hour">
	<input type="submit" class="primay-btn" value="click">
</form>
</body>
</html>