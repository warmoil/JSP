<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>this is version 3</title>
</head>

<script type="text/javascript">
	function checkLogin(){
		
		var form = document.loginForm;
		
		if(form.id.value.length <=4 || form.id.value.length >=12){	
		alert("아이디는 4~12자리 이내로 입력가능합니다 ");
		form.id.select();
		return
		}
		if(form.password.value.length <=4 || form.id.value.length >=31){	
			alert("비밀번호는 4~31자리 이내로 입력가능합니다 ");
			form.password.select();
			return
		}
		form.submit();
	}
	
</script>
<body>
	<form name = "loginForm" action = "validation03_process.jsp" method = "post">
		<p> 아이디 : <input type = "text" name ="id">
		<p> 비밀번호 : <input type = "password" name = "password">
		<input type = "button" value = "전송" onclick = "checkLogin()">	
	</form>
</body>
</html>