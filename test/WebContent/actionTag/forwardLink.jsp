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
<h1>사이트링크</h1>
<form action="forwardLink2.jsp" method="post">
<select name="site">
	<option value="http://www.naver.com">naver</option>
	<option value="http://www.daum.net">daum</option>
	<option value="http://www.nate.com">nate</option> 
</select>
<input type="submit" value="연결"> 
</form>
</body>
</html>
