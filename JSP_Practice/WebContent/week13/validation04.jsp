<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation 04</title>
</head>

<script type="text/javascript">
	function checkLogin(){

		
		var form = document.loginForm;
		
		for(i=0; i < form.id.value.length; i++){
		//for(i=0; i > form.id.value.length; i++)가 아니고 <였습니다 ㅠㅠ 40분을 찾았습니다 ㅠㅠ
			var ch = form.id.value.charAt(i);
			
			if((ch <'a' || ch >'z') && (ch >'A' || ch<'Z') && (ch > '0'|| ch <'9' )){
				alert("아이디는 영문 소문자만 입력");
				form.id.select();
				return;
			}
				
		}
		if(form.id.value.length==0){
			alert("아이디 입력");
			form.password.select();
			return;
			}
		if(form.password.value.length==0){
			alert("비밀번호입력");
			form.password.select();
			return;
			}
		if(isNaN(form.password.value)){
			alert("비밀번호는 숫자만 입력가능합니다");
			form.password.select();
			return;
			}
		
		form.submit(form.id+form.password);	
	}
	
</script>

<body>
	<form name = "loginForm" action="validation04_process.jsp" method = "post">
		<p>아이디   : <input type = "text" name = "id">
		<p>비밀번호: <input type = "password" name = "password">
		<p><input type = "button" value ="전송" onclick = "checkLogin()">
	</form>
</body>
</html>