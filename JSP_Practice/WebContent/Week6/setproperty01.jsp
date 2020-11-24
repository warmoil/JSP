<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="com.dao.Person" scope="request"></jsp:useBean>
	
	
	<jsp:getProperty property="id" name="person"/>
	<jsp:getProperty property="name" name="person"/>	
	<p>아이디:<% out.print(person.getId()); %>
	<p>이름:<% out.print(person.getName()); %>
	
	<jsp:setProperty property="id" name="person" value="12321"/>
	<jsp:setProperty property="name" name="person" value="온유"/>
	<p>아이디<% out.print(person.getId()); %>
	<p>이름<% out.print(person.getName()); %>
	
</body>
</html>