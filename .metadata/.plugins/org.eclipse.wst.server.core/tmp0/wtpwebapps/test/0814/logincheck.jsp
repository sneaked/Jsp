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
<jsp:useBean id="loginTest" class="test.LoginTest" scope="page">
	<jsp:setProperty name="loginTest" property="id" value="jsp"/>
	<jsp:setProperty name="loginTest" property="pwd" value="0000"/>
</jsp:useBean>


<%
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");

String id = loginTest.getId();
String pwd = loginTest.getPwd();

if(id.equals(userid)&&pwd.equals(userpwd)){
	%>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	
	<hr><hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
<%
}else{
	%>너 디짐<%
}

%>

</body>
</html>
