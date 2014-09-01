<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
application.setAttribute("Name", "김지홍");
application.setAttribute("Age", "17세");
application.setAttribute("Email", "h@na.com");
application.setAttribute("Job", "Prog");
application.setAttribute("Taste","독서");

application.removeAttribute("Job");

%>
이름: <%=application.getAttribute("Name") %> <BR>
나이: <%=application.getAttribute("Age") %> <BR>
이메일: <%=application.getAttribute("Email") %> <BR>
직업: <%=application.getAttribute("Job") %> <BR>
취미: <%=application.getAttribute("Taste") %>
</body>
</html>