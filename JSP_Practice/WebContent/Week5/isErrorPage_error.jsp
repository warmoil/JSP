<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error</title>
</head>
	<body>
		<h4>에러가 발생하였습니다</h4>
		<h5>exception 내장객체 변수</h5>
		<%
			exception.printStackTrace(new java.io.PrintWriter(out));
		
		%>

	</body>
</html>