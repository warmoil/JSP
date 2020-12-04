<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력을 성공했다</title>
</head>
<body>
	<h1> 입력에 성공했습니다 .</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String id =request.getParameter("id");
		String password = request.getParameter("password");
		
	%>
	
	<p> 아이디 : <%=id %>
	<p>비밀번호 : <%=password %>
	
</body>
</html>