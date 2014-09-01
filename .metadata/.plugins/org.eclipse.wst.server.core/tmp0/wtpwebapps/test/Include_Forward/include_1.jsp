<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그1</title>
</head>
<body>
<!-- 아이디와 비밀번호를 입력하는 폼 -->
	<form method="post" action="include_2.jsp">
	아이디:<input type = "text" name="strID"><br>
	비밀번호:<input type = "password" name="strPwd"><br>
	<input type="submit" value="로그인">
	<input type="reset" value="취소">	
	</form>
</body>
</html>