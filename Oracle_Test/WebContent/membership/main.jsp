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
	int permission = Integer.parseInt(request.getParameter("permission"));
	String userid = request.getParameter("userid");	

	
	%>
	<b><%=userid%></b>님이 로그인 하셨습니다.<br>
	<%
	if(permission==1){
		permission = -1;
		%>
		<a href="member_list.jsp">관리자모드 접속 (회원 목록보기)</a>
		<%
	}
%>
<br><a href="loginForm.jsp">로그아웃</a>
</body>
</html>
