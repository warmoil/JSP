<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border ="1">
		<tr>
		<td>요청 파라미터 이름 </td>
		<td>요청 데이터 값</td>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		Enumeration paramnames = request.getParameterNames();
		while(paramnames.hasMoreElements()){	
		String name =(String) paramnames.nextElement();
			out.println("<tr><td>"+name+"</td>\n");
			String paramValue = request.getParameter(name);
			out.println("<td>"+paramValue+"</td></tr>\n");
		}
		
		%>
		
	</table>
		
		
</body>
</html>