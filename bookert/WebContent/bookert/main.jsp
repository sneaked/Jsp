<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 창</title>
</head>
<body>
	<%
		String x = null;
		if (request.getParameter("result") != null) {
			x = request.getParameter("result");
		}

		if (x == null || x.equals("0")) {
	%><h1>로그인 화면</h1>
	<h3>아이디와 비밀번호를 입력해주세요</h3>
	<form method="post" action="loginPro.jsp">
		아이디 : <input type="text" name="id"> <br> 비밀번호 : <input
			type="password" name="passwd"><br> <br> <input
			type="submit" value="로그인"> <input type="reset" value="다시 작성">
	</form>
	<%
		}else{
			out.println("로그인 되었습니다");
			
			if(x.equals("2")){
				%><a href="managerForm.jsp">관리자 페이지로</a><%
			}
		}
	%>
	<a href="memberJoinForm.jsp">회원가입</a>
</body>
</html>