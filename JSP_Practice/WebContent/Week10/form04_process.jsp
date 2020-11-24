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
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String hobby1 = request.getParameter("hobby1");
		String hobby2 = request.getParameter("hobby2");
		String hobby3 = request.getParameter("hobby3");
		String comment = request.getParameter("comment");
		
	%>
	
		<p>아이디: <%= id %>
		<p>password: <%= pw %>
		<p> 이름 : <%= name %>
		<p> phone1 : <%= phone1 %>
		<p> phone2 : <%= phone2 %>
		<p> phone3 : <%= phone3 %>
		<p> sex : <%= sex %>
		<p> hobby1  : <%= hobby1 %>
		<p> hobby2  : <%= hobby2 %>
		<p> hobby3  : <%= hobby3 %>
		<p> comment  : <%= comment %>
		
		
	
</body>
</html>