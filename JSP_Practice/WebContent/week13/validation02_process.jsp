<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation process</title>
</head>
<body>
	
	<h3> 입력에 성공했습니다</h3>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	
	%>
	
	<p> 아이디 : <%=id %>
	<p> 비밀번호 : <%= password %>
</body>
</html>