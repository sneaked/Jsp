<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력받은 숫자 비교</title>
</head>
<body>
<h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>
<%
String strNumber = request.getParameter("number");
int number = Integer.parseInt(strNumber);

if(number<=10){
	%>
	입력받은 숫자는 <%=number %>
	<br>10보다 같거나 작습니다
<%}else{
	%>
	<br>10보다 큰 수 입니다.
<%} %>

</body>
</html>