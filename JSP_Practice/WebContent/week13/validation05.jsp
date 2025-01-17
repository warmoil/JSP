<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkMember(){
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		var regExpPassword = /^[0-9]*$/;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var form = document.Member;
		
		var id = form.id.value;
		var name = form.name.value;
		var password = form.password.value;
		var phone = form.phone1.value + "-" + form.phone2.value +"-"+form.phone3.value;		
		var email = form.email.value;
		//정규식의  test 메소드는 맞은면 true 틀리면 false를 반환함
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작을 해$");
			form.id.select();
			return;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글로 해$");
			form.name.select();
			return;
		}
		if(!regExpPassword.test(password)){
			alert("비번은 숫자만 써$");
			form.password.select();
			return;
		}
		if(!regExpPhone.test(phone)){
			alert("번호를 확인해 $");
			form.phone.select();
			return;
		}
		if(!regExpEmail.test(email)){
			alert("이멜을 확인 해$");
			form.email.select();
			return;
		}
		form.submit();
}
</script>
<body>

	<h3>회원가입</h3>
	<form action="validation05_process.jsp" name = "Member" method = "post">
		<p>아이디 : <input type = "text" name = "id">
		<p>비밀번호 : <input type = "password" name = "password">
		<p>이름 : <input type = "text" name = "name">
		<p>전화번호 : <select name = "phone1">
				<option value = "010">010</option> 
				<option value = "011">011</option> 
				<option value = "016">016</option> 
				<option value = "017">017</option> 
				<option value = "019">019</option> 
		</select> <input type = "text" maxlength = "4" size="4" name = "phone2"> -
		<input type = "text" maxlength = "4" size="4" name = "phone3"> 
		<p>이메일: <input type = "text" name = "email">
		<input type = "button" value = "가입하기" onclick = "checkMember()" >
	</form>


</body>
</html>