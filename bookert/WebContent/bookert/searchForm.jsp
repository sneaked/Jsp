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
<a href="stockForm.jsp">돌아가기</a>
<table border="1">
	<tr>
		<td width="5%"><a href="sear">번호</a></td>	
		<td width="30%">제목</td>
		<td width="8%">출판사</td>
		<td width="9%">지은이</td>
		<td width="8%">분류1</td>
		<td width="8%">분류2</td>
		<td width="8%">가격</td>
		<td width="10%">발행일</td>
		<td width="20%">등록일</td>
	</tr>
<%

	if(request.getParameter("name")!=null){
		String keyword = request.getParameter("name");
		BookertDBBean bookert = BookertDBBean.getInstance();
		
		List<BookinfoBean> result = bookert.bookSearch(keyword);
		
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
				<td><a href="stockForm.jsp?book_num=<%=book_num%>&name=<%=name%>">확인</a></td>
			</tr>
			<%
			}//end for
		}//end if
		
	}
%>
</table>

</body>
</html>
