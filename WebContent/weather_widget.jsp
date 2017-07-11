<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="style.css" rel="stylesheet">
<%
String tempur = "";
String sky = "";
	tempur = request.getParameter("tempur");
	sky = request.getParameter("sky");
	System.out.println("tempur : "+tempur);
	System.out.println("sky : "+sky);
	String weaterIcon = "";
	
	if(sky.equals("1")) {
		weaterIcon = "sunny";
	} else if(sky.equals("2")) {
		weaterIcon = "cloudy";
	} else if(sky.equals("3")) {
		weaterIcon = "stormy";
	} else if(sky.equals("4")) {
		weaterIcon = "rainy";
	} else {
		weaterIcon = "";
	}
	System.out.println("weaterIcon : "+weaterIcon);
%>
</head>
<body>
<div class="container" >
	<div id="weaterIcon" class="<%=weaterIcon %>"></div> 
	현재 기온 : <%= tempur %>
</div>

<%@ include file="./index.html" %>
</body>
</html>