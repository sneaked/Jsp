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
<h2>insert문</h2>

<form action="insertTestPro.jsp" method="post">
id<input type="text" name="id" maxlength="50"><br>
pass<input type="password" name="passwd" maxlength="16"><br>
name<input type="text" name="name" maxlength="10"><br>
<input type="submit" value="OK">
</form>

<hr>
<h2><a href="selectTestPro.jsp">select문</a></h2>
<%@ include file="selectTestPro.jsp" %>
<hr>
<h2>update문</h2>
<form action="updateTestPro.jsp" method="post">
id<input type="text" name="id" maxlength="50"><br>
pass<input type="password" name="passwd" maxlength="16"><br>
chainge name<input type="text" name="name" maxlength="10"><br>
<input type="submit" value="OK">
</form>
<hr>
<h2>delete문</h2>
<form action="deleteTestPro.jsp" method="post">
id<input type="text" name="id" maxlength="50"><br>
pass<input type="password" name="passwd" maxlength="16"><br>
<input type="submit" value="OK">
</form>
<hr>

</body>
</html>
