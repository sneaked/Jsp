<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
String id="";
try{
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
		}

		if(id.equals("")){
			response.sendRedirect("cookieLoginForm.jsp");
		}
	}else{
		response.sendRedirect("cookieLoginForm.jsp");
	}
}catch(Exception e){}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=id %> 님이 로그인
<form action="cookieLogout.jsp" method="post">
	<input type="submit" value="로그아웃">
</form>
</body>
</html>
