<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {text-align: center;};
</style>
</head>
<body>
<h1 align="center">관리자 페이지</h1>
<table align="center" border="1" width="70%" height="600px">
	<tr>
		<td><a href="#">주문 관리</a></td><td><a href="stockForm.jsp">재고 관리</a></td>
	</tr>
	<tr>
		<td><a href="#">회원 관리</a></td><td><a href="infoForm.jsp">책 정보 관리</a></td>
	</tr>
</table>
</body>
</html>
