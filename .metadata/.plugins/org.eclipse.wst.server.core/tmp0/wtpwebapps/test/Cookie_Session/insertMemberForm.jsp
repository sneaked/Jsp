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
<h2>-김밥천국- 조합가입</h2>
<form action="insertMemberPro.jsp" method="post">
 아이디:<input type="text" name="id" maxlength="50"><br>
 패스워드:<input type="passwd" name="passwd" maxlength="16"><br>
 이름:<input type="text" name="name" maxlength="10"><br>
 <input type="submit" value="회원가입">
 <input type="reset" value="다시입력">
</form>
</body>
</html>
