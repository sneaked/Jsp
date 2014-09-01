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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals("jsp")&&pwd.equals("0000")){
		%>
		<jsp:forward page="ok.jsp">
			<jsp:param value="<%=id%>" name="id"/>
		</jsp:forward>
		<%
	}else{
		%>
		<jsp:forward page="no.jsp"/>
		<%
	}
%>
</body>
</html>
