<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!	int sum; 
	int student;
	float avg;	
%>
<%	
	String a = request.getAttribute("a").toString();
	student=Integer.parseInt(application.getAttribute("student").toString());
	for(int i=0;i<student;i++){
		sum+=Integer.parseInt(request.getParameter("student_"+i));
	} 
	
	avg = sum/student;
%>


3 JSP 과목에 대한 <br>
인원은:<%=student %>명이고<br>
총점은:<%=sum%>점이며<br>
평균은:<%=avg%>점이다.

</body>
</html>