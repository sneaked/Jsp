<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include 디렉티브연습</title>
</head>
<body>
<h2>include 디렉티브연습</h2>
<%
String name="Kim";
%>
<%@ include file="top.jsp" %>
포함하는 페이지 includeDirective.jsp의 내용입니다.
<%@ include file="bottom.jsp" %>
</body>
</html>