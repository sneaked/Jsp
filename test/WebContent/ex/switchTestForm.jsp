<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>권역선택</title>
</head>
<body>
<h2>권역을 선택하세요</h2>
<form method="post" action="switchTestPro.jsp">
	<input type="radio" name="localNum" value="0" checked>0 권역<br>
	<input type="radio" name="localNum" value="1">1 권역<br>
	<input type="radio" name="localNum" value="2">2 권역<br>
	<input type="radio" name="localNum" value="3">3 권역<br>
	<input type="radio" name="localNum" value="4">4 권역<br>
	<input type="radio" name="localNum" value="5">5 권역<br>
	<input type="radio" name="localNum" value="6">6 권역<br>
	<input type="radio" name="localNum" value="7">7 권역<br>
 	<input type="submit" value="입력완료">
</form>
</body>
</html>