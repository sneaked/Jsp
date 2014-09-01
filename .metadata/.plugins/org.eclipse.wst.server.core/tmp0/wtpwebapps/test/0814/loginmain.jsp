<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="logincheck.jsp" method="post">
<table border="1">
	<tr>
		<td colspan="2" align="center">로그인</td>
	</tr>
	<tr>
		<td>아이디</td><td><input type="text" name="userid"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="password" name="userpwd"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="login"></td>
	</tr>
</table>
</form>
</body>
</html>
