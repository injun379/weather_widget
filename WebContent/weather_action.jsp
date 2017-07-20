<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.weather.service.*" %>
<%
request.setCharacterEncoding("UTF-8");

String date = request.getParameter("date");
String hour = request.getParameter("hour");
System.out.println(date);
System.out.println(hour);

Item item = new Item();
WeatherService ws = new WeatherService();

item = ws.getItemList(date, hour);
System.out.println("item : "+item);

String tempur = item.getTemp1hour();
String sky = item.getSky();
String rainStat = item.getRainStat();

System.out.println("tempur : "+tempur+" weather_action.jsp");
System.out.println("sky : "+sky+" weather_action.jsp");
System.out.println("rainStat : "+rainStat+" weather_action.jsp");


pageContext.forward("./weather_widget.jsp?tempur="+tempur+"&sky="+sky+"&rainStat="+rainStat);
%>