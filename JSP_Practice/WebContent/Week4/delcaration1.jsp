<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting tag</title>
</head>

	<%! int count =0; %>
<body>
	Page Count  is:
	<%
	out.println(++count);
	%>
</body>
</html>