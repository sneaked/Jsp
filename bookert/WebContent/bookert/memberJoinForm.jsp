<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style/default.css">
<title>회원가입</title>
<style>
</style>
<script type="text/javascript">
var idOk = false;
function formCheck(){
	
	if(document.joinForm.id.value=="")alert("아이디를 입력하세요");
	else if(document.joinForm.passwd.value=="")alert("비밀번호를 입력하세요");
	else if(document.joinForm.passwd.value!=document.joinForm.repasswd.value)alert("비밀번호가 다릅니다");
	else if(document.joinForm.name.value=="")alert("이름을 입력하세요");
	else if(document.joinForm.address.value=="")alert("주소를 입력하세요");
	else if(document.joinForm.hp.value=="")alert("전화번호 입력하세요");
	else if(!idOk)alert("아이디 중복확인을 해주세요");
	else document.joinForm.submit();
	
}

function idCheck(){
	var inputid = document.joinForm.id.value;
	if(inputid==""){
		alert("입력된 아이디가 없습니다");
	}else{
		window.open("checkIdPro.jsp?id="+inputid,"idchk", "width=400 height=150");
	}
	
}

function setIdOk(bool){
	idOk = bool;
}

</script>
</head>
<body>

<h2 align="center">회원 가입</h2>
<form method="post" action="memberJoinPro.jsp" name="joinForm">
	<table border="1" align="center">
		<tr>
			<td>* 아이디</td><td><input type="text" name="id" maxlength="20" style="ime-mode:disabled"><input type="button" value="중복확인" onclick="javascript:idCheck()">
			<br><font size="1" color="#bb22bb">* 영문자, 숫자, 특수문자 포함 20글자 내외로 작성해주세요</font></td>
		</tr>
		<tr>
			<td>* 비밀번호 입력</td><td><input type="password" name="passwd" maxlength="15"><font size="1" color="#bb22bb">영문자, 숫자, 특수문자 포함 15자 내외</font></td>
		</tr>
		<tr>
			<td>* 비밀번호 확인</td><td><input type="password" name="repasswd" maxlength="15"></td>
		</tr>
		<tr>
			<td>* 이름</td><td><input type="text" name="name" maxlength="10"></td>
		</tr>
		<tr>
			<td>* 기본배송지(주소)</td><td><input type="text" name="address" maxlength="50" size="60"></td>
		</tr>
		<tr>
			<td>* 휴대폰 번호</td><td><input type="text" name="hp" maxlength="13"><font size="1" color="#bb22bb">-표시까지 포함해서 적어주세요</font></td>
		</tr>
	</table>
	<br><br><br>
	<div align="center">
	<input type="button" value="회원가입 하기" onclick="javascript:formCheck()">
	<input type="reset" value="다시 작성하기">
	</div>
</form>
</body>
</html>