<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결과출력</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<%
String name=request.getParameter("name");
int local = Integer.parseInt(request.getParameter("local"));
String tel = request.getParameter("tel");
String localNum = "";

switch(local){
case 0:
	localNum = "02";
	break;
case 1:
	localNum = "031";
	break;
case 2:
	localNum = "033";
	break;
}

out.println("<b>"+name+"<b> 님의 전화번호는 "+localNum+"-"+tel+"입니다");
%>


</body>
</html>