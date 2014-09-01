<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그3</title>
</head>
<body>
<% 
	String id = request.getParameter("strID");
%>
	<%= id%> 님은 언제나 저희 사이트를 애용해 주셔서 감사합니다.

</body>
</html>