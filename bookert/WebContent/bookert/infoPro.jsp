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
	BookertDBBean bookert = BookertDBBean.getInstance();
	BookinfoBean info = new BookinfoBean();
	try{
		info.setName(request.getParameter("name"));
		info.setAuthor(request.getParameter("author"));
		info.setMaker(request.getParameter("maker"));
		info.setCategory1(request.getParameter("category1"));
		info.setCategory2(request.getParameter("category2"));
		info.setPrice(Integer.parseInt(request.getParameter("price")));
		String publication = request.getParameter("year");
		publication += "."+request.getParameter("month");
		publication += "."+request.getParameter("day");
		info.setPublication(publication);
		info.setReg_date(new Timestamp(System.currentTimeMillis()));
		bookert.bookInfo(info);
	}catch(Exception e){
		request.setAttribute("alert", "1");
	}
%>
<jsp:forward page="infoForm.jsp"></jsp:forward>
</body>
</html>
