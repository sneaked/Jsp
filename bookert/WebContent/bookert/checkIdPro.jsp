<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="bookert.*"%>
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
	BookertDBBean bookert = BookertDBBean.getInstance();
	int x = bookert.checkId(id);
	if(x==-1){
	%>
		<script type="text/javascript">
		alert("존재하는 아이디 입니다");
		window.close();
		</script>
	<%
	}else if(x==1){
	%>
		<script type="text/javascript">
		alert("사용가능한 아이디 입니다");
		opener.setIdOk(true);
		window.close();
		</script>
	<%
	}
%>

</body>
</html>
