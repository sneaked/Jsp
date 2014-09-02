<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="bookert.*"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/default.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>재고 확인</h2>
<%
	BookertDBBean bookert = BookertDBBean.getInstance();
	String column = request.getParameter("column"); 
	String sort = request.getParameter("sort");
	
	if(column==null)
		column = "";
	if(sort==null){
			sort = "-1";
	}else{
		sort = -Integer.parseInt(sort)+"";
	}
	
	
	List<BookstockBean> stock = bookert.bookStockList(column,sort);
%>
<table border="1" width="70%">
	<tr>
		<td width="9%"><a href="stockListForm.jsp?column=book_num&sort=<%=sort%>">책 번호</a></td>
		<td><a href="stockListForm.jsp?column=name&sort=<%=sort%>">책 제목</a></td>
		<td width="6%"><a href="stockListForm.jsp?column=ea&sort=<%=sort%>">수량</a></td>
		<td><a href="stockListForm.jsp?column=stock_date&sort=<%=sort%>">최근 입고일</a></td>
	</tr>
	<%
		for(int i=0;i<stock.size();i++){
			int book_num = stock.get(i).getBook_num();
			String name = stock.get(i).getName();
			int ea = stock.get(i).getEa();
			String stock_date = stock.get(i).getStock_date().toString();
		%>
			<tr>
				<td><%=book_num%></td>
				<td><%=name%></td>
				<td><%=ea%></td>
				<td><%=stock_date%></td>
			</tr>
		<%}%>
</table>
<a href="stockForm.jsp">돌아가기</a>
</body>
</html>
