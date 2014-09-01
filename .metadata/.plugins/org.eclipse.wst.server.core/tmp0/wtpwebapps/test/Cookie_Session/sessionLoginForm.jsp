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
<form action="sessionLoginPro.jsp" method="post">

id:<input type="text" name="id" maxlength="50"><br>
pass:<input type="password" name="passwd" maxlength="16"><br>
<input type="submit" value="로그인">
<input type="button" value="회원가입" onclick="location.href='insertMemberForm.jsp'">
</form>
</body>
</html>
