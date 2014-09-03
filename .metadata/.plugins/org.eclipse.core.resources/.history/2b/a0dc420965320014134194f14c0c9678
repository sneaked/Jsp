<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	try{
		BookstockBean book = new BookstockBean();
		book.setBook_num(Integer.parseInt(request.getParameter("book_num")));
		book.setName(request.getParameter("name"));
		book.setEa(Integer.parseInt(request.getParameter("ea")));
		book.setStock_date(new Timestamp(System.currentTimeMillis()));
		
		BookertDBBean bookert = BookertDBBean.getInstance();
		bookert.bookStock(book);
	}catch(Exception e){
		request.setAttribute("alert", "1");
	}
%>
<jsp:forward page="stockForm.jsp">
	<jsp:param value="" name="name"/>
	<jsp:param value="" name="ea"/>
	<jsp:param value="" name="book_num"/>
</jsp:forward>
</body>
</html>
