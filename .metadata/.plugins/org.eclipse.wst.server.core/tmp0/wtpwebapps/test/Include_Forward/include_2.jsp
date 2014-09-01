<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그2</title>
</head>
<body>
<h2>저희 사이트를 방문해 주셔서 감사합니다.</h2>
<%
	request.setCharacterEncoding("utf-8");
	String ID = request.getParameter("strID");
%>
<hr>
<jsp:include page="include_3.jsp" flush="false"/>
<p>
<%=ID %> 회원님은 정회원입니다.
</body>
</html>