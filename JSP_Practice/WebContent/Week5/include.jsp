<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- include file="파일명" 형식으로 사용 --%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! 
	int pageCount = 0;
	void addCount(){
		pageCount++;
	}
	%>
	<%
	addCount();
	%>
	
	<p> 이사이트 방문은 <%=pageCount %>번째입니다.</p>
	<%@ include file ="include_footer.jsp" %>
</body>
</html>