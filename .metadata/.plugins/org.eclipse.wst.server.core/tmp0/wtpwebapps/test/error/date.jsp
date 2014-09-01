<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@page errorPage="dateerror.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Date date =new Date();
SimpleDateFormat simdate = new SimpleDateFormat("yyyy-MM-dd");
String strDate = simdate.format(date);
%>
보통의 jsp 페이지	다.<br>

이건 고의	다.<br>
오늘 날짜는 <%=strdat %>이	다. 
</body>
</html>
 --%>