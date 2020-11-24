<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    <%@ page errorPage="scriptlet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h2>contentType 디렉티브 태그</h2>
		<h4>text/html:html출력</h4>
		<h4>charset=utf-8:문자 인코딩</h4>
		<% 
		String str = null;
		out.println(str.toString());
		%>
		<%@ page info="Date 클래스를 이용한 날짜 출력하기" %>
		
		Today is <%= new Date()%>
	</body>
</html>