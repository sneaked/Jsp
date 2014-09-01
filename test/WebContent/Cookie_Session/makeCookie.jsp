<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>


<!DOCTYPE html>
<%
String cookieName="id";
Cookie cookie = new Cookie(cookieName,"hongkd");
cookie.setMaxAge(60*2);
response.addCookie(cookie);

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="useCookie.jsp" method="post">

	<input type="submit" value="쿠기확인">

</form>
</body>
</html>
