<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@page import="java.sql.*" %>
<%@page import="member.LogonDBBean" %>

<jsp:useBean id="member" class="member.LogonDataBean">
	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>
<%
member.setReg_date(new Timestamp(System.currentTimeMillis()));
LogonDBBean logon = LogonDBBean.getInstance();
logon.insertMember(member);
%>
<jsp:getProperty name="member" property="id"/>
님 가입
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
