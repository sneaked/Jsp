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
<%
	String site = request.getParameter("site");	
		
%>
<jsp:forward page="forwardLink3.jsp">
	<jsp:param value="<%=site%>" name="site"/>
</jsp:forward>
</body>
</html>
