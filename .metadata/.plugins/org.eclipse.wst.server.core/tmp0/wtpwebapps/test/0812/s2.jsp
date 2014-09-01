<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="s3.jsp">
<%
int student = Integer.parseInt(request.getParameter("student"));
application.setAttribute("student", student);

for(int i=0;i<student;i++){
	out.println("<br>"+(i+1)+"번째 학생점수 :<br>");
%>
 	<input type="text" name="student_<%=i%>">
 	
<% }%>
<input type="submit" value="입력완료">
<br><%=student%>명


</form>
</body>
</html>