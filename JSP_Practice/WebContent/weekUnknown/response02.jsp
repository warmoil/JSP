<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%
			response.setIntHeader("Refresh", 5);
			String start = (new java.util.Date()).toString();
			
		%>
		첫 접속 <%=start %><br>
	<p>이페이지는 5초마다 새로고쳐집니다<br>
		
		<p><%=(new java.util.Date())%>
		
</body>
</html>