<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="bookert.*"%>
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
	if(request.getAttribute("alert")!=null){
		%>
		<script type="text/javascript">
		alert("제목을 검색하세요");
		</script>
		<%
	}
%>
<a href="managerForm.jsp">관리자 화면</a>
<h1 align="center">재고관리</h1>
<form action="searchForm.jsp?page=stock" method="post">
<table>
	<tr>
		<td>책 검색</td>
	</tr>
	<tr>
		<td>제목</td><td><input type="text" name="name" autofocus="autofocus"></td><td><input type="submit" value="검색"></td>
	</tr>
</table>
</form>
<hr>
	<%
		String book_num,name;
		if(request.getParameter("book_num")!=null&&request.getParameter("name")!=null){
			book_num = request.getParameter("book_num");
			name = request.getParameter("name");
		}else{
			book_num = "";
			name = "";
		}
	%>
<form action="stockPro.jsp" method="post">
<table>
	<tr>
		<td colspan="3">책 입고 화면</td>
	</tr>
	<tr>
		<td>책 제목</td><td><input type="text" name="name" value="<%=name%>"></td>
	</tr>
	<tr>
		<td>책 번호</td><td colspan="2"><input type="text" name="book_num" value="<%=book_num%>" maxlength="50"></td>
	</tr>
	<tr>
		<td>수량</td><td colspan="2"><input type="text" name="ea"></td>
	</tr>
	<tr>
		<td colspan="3"><input type="submit" value="등록"></td>
	</tr>
</table>
</form>
<hr>
<a href="stockListForm.jsp">창고 재고 확인</a>
</body>
</html>
