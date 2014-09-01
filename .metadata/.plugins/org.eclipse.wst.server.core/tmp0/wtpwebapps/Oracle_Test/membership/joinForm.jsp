<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function formsubmit(){
	document.getElementById("joinform").submit();
}
</script>
</head>
<body>
<form action="joinProcess.jsp" method="post" id="joinform">
	<table border="1">
		<tr>
			<td colspan="2" align="center"><b>회원가입 페이지</b></td>
		</tr>
		<tr>
			<td>아이디 :</td><td><input type="text" name="id" maxlength="15"></td>
		</tr>
		<tr>
			<td>비밀번호 :</td><td><input type="password" name="passwd" maxlength="10"></td>
		</tr>
		<tr>
			<td>이름 :</td><td><input type="text" name="name" maxlength="15"></td>
		</tr>
		<tr>
			<td>나이 :</td><td><input type="text" name="age" maxlength="3"></td>
		</tr>
		<tr>
			<td>성별 :</td>
			<td>  
			남자 :<input type="radio" name="gender" value = "남" checked="checked">
			여자 :<input type="radio" name="gender" value = "여">
			</td>
		</tr>
		<tr>
			<td>이메일 주소:</td><td><input type="text" name="email" maxlength="50"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><a href="#" onclick="formsubmit();">회원가입</a> <a href="joinForm.jsp">다시작성</a></td>
		</tr>
	</table>
</form>
</body>
</html>
