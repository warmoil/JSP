<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class="com.dao.Person" scope="request" ></jsp:useBean>
	<p> 아이디:<%= person.getId() %>
	<p> 이름 : <%= person.getName() %>
	<% 
		person.setId(15731058);
		person.setName("정온유");
	 %>
	 <jsp:include page="usebeans03.jsp"></jsp:include>
</body>
</html>