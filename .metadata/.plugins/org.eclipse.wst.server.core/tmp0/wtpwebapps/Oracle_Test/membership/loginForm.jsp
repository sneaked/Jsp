<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function formsubmit(){
	document.getElementById("loginform").submit();
}

</script>
</head>
<body>

<form action="loginProcess.jsp" method="post" id="loginform">
	<table border="1">
		<tr>
			<td colspan="2" align="center"><b>로그인 페이지</b></td>
		</tr>
		<tr>
			<td>아이디 : </td><td><input type="text" name = "id" maxlength="15"></td>
		</tr>
		<tr>
			<td>비밀번호 :</td><td><input type="password" name = "passwd" maxlength="10"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><a href=# onclick="formsubmit();">로그인</a> <a href="joinForm.jsp">회원가입</a></td>
		</tr>
	</table>
</form>
</body>
</html>
