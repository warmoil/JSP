<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation 02</title>
</head>

<script type = "text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value == ""){
			alert("아이디를 입력해주세요");
			form.id.focus();
			return false;
		}
		else if(form.password.value == ""){
			alert("비번을 입력해주세요");
			form.password.focus();
			return false;
		}
		form.submit();		
	}
</script>
<body>
	<form name = "loginForm" action="validation02_process.jsp" method =  "post" >
		<p> 아이디 :<input type = "text" name = "id">
		<p> 비밀번호:<input type ="password" name ="password">
		<p> <input type = "button" value="전송" onclick = "checkLogin()">
	</form>
</body>
</html>