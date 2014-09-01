<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
String id="";
try{
	id = (String)session.getAttribute("id");
	if(id==null||id.equals("")){
		response.sendRedirect("sessionLoginForm.jsp");
	}else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=id %>login
<form action="sessionLogout.jsp" method="post">
	<input type="submit" value="로그아웃">
</form>
<%}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>
