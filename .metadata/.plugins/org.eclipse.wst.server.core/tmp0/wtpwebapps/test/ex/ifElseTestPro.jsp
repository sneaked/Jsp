<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결과 출력</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>

<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age>=20){
		out.println("<b>"+name+"</b> 님의 나이는 20세 이상입니다.");
	}else{
		out.println("<b>"+name+"</b> 님은 미성년입니다.");
	}
%>
</body>
</html>