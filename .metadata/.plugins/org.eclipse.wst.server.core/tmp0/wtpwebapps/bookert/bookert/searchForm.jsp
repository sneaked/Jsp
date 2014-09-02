<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="bookert.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/default.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="stockForm.jsp">돌아가기</a>
<%
	String keyword = null;
	if(request.getParameter("name")!=null)
		keyword = request.getParameter("name");
	
	String column=null,sort="-1";
	BookertDBBean bookert = BookertDBBean.getInstance();
	if(request.getParameter("column")!=null)column = request.getParameter("column");
	if(request.getParameter("sort")!=null){
		sort = -Integer.parseInt(request.getParameter("sort"))+"";
	}
		
	List<BookinfoBean> result = bookert.bookSearch(keyword,column, sort);
%>
<table border="1">
	<tr>
		<td width="5%"><a href="searchForm.jsp?name=<%=keyword%>&column=book_num&sort=<%=sort%>">번호</a></td>	
		<td width="30%"><a href="searchForm.jsp?name=<%=keyword%>&column=name&sort=<%=sort%>">제목</a></td>
		<td width="8%"><a href="searchForm.jsp?name=<%=keyword%>&column=maker&sort=<%=sort%>">출판사</a></td>
		<td width="9%"><a href="searchForm.jsp?name=<%=keyword%>&column=author&sort=<%=sort%>">지은이</a></td>
		<td width="8%"><a href="searchForm.jsp?name=<%=keyword%>&column=category1&sort=<%=sort%>">분류1</a></td>
		<td width="8%"><a href="searchForm.jsp?name=<%=keyword%>&column=category2&sort=<%=sort%>">분류2</a></td>
		<td width="8%"><a href="searchForm.jsp?name=<%=keyword%>&column=price&sort=<%=sort%>">가격</a></td>
		<td width="10%"><a href="searchForm.jsp?name=<%=keyword%>&column=publication&sort=<%=sort%>">발행일</a></td>
		<td width="20%"><a href="searchForm.jsp?name=<%=keyword%>&column=reg_date&sort=<%=sort%>">등록일</a></td>
	</tr>
<%
	
		
	if(result.size()>0){
			
		for(int i=0;i<result.size();i++){
				
			int book_num = result.get(i).getBook_num();
			String name = result.get(i).getName();
			String maker = result.get(i).getMaker();
			String author = result.get(i).getAuthor();
			String category1 = result.get(i).getCategory1();
			String category2 = result.get(i).getCategory2();
			int price = result.get(i).getPrice();
			String publication = result.get(i).getPublication();
			Timestamp reg_date = result.get(i).getReg_date();
		%>
		<tr>
			<td><%=book_num%></td>	
			<td><%=name%></td>
			<td><%=maker%></td>
			<td><%=author%></td>
			<td><%=category1%></td>
			<td><%=category2%></td>
			<td><%=price%></td>
			<td><%=publication%></td>
			<td><%=reg_date.toString()%></td>
			<%
			if(request.getParameter("page")!=null){
			%>
				<td><a href="stockForm.jsp?book_num=<%=book_num%>&name=<%=name%>">확인</a></td>
			<%}%>
		</tr>
		<%
		}//end for
	}//end if
	
%>
</table>

</body>
</html>
