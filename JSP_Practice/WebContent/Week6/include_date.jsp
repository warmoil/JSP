<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 데이터 </title>
</head>
<body>
	<p>오늘의 날짜 및 시각</p>
	<p><%=(new java.util.Date()).toLocaleString() %></p>
</body>
</html>