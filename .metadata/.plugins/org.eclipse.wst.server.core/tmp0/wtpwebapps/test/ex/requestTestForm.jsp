<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request 내장객체</title>
</head>
<body>
<h2>학번,이름,학년,선택과목을 입력하는 폼</h2>
<form method="post" action="requestTestPro.jsp">
	학번:<input type="text" name="num"><br>
	이름:<input type="text" name="name"><br>
	학년:
	<input type="radio" name="grade" value="1" checked>1학년 &nbsp;
	<input type="radio" name="grade" value="2">2학년 &nbsp;
	<input type="radio" name="grade" value="3">3학년 &nbsp;
	<input type="radio" name="grade" value="4">4학년 <br>
	선택과목
	<select name="subject">
		<option value="JAVA">JAVA</option>
		<option value="JSP">JSP</option>
		<option value="XML">XML</option>
	</select><br>
	<input type="submit" value="입력완료">
</form>
</body>
</html>