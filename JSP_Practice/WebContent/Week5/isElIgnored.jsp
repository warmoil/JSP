<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 아래 iselignored를 트루로 하면 $표시한것이 그냥 글로적힘(변수처럼안됨)--%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
			request.setAttribute("RequestAttribute", "request 내장객체");
			
		%>
		${requestScope.RequestAttribute};
		
	</body>
</html>