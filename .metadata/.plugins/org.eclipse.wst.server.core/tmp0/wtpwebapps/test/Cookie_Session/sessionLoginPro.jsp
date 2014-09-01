<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import="member.LogonDBBean" %>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

LogonDBBean logon = LogonDBBean.getInstance();
int check = logon.userCheck(id, passwd);
if(check==1){
	session.setAttribute("id", id);
	response.sendRedirect("sessionMain.jsp");
}else if(check==0){%>
	<script>
		alert("passwd error");
		history.go(-1);
	</script>
<%}else{%>
	<script>
		alert("id error");
		history.go(-1);
	</script>
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
