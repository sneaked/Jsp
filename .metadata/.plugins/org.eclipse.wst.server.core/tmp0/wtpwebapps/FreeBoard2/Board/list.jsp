<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import = "board.*" %>
<%@page import = "java.util.List" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%@include file = "color.jspf" %>
<%!
	int pageSize = 10;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<%
String pageNum = request.getParameter("pageNum");

if(pageNum == null){
	pageNum = "1";
}

int currentPage = Integer.parseInt(pageNum);
int startRow = (currentPage-1)*pageSize+1;
int endRow = currentPage*pageSize;
int count = 0;
int number = 0;
List<BoardDataBean> articleList = null;

BoardDBBean dbPro = BoardDBBean.getInstance();
count = dbPro.getArticleCount();
if(count>0){
	articleList = dbPro.getArticles(startRow, pageSize);
	
	number = count-(currentPage-1)*pageSize;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body bgcolor="<%=bodyback_c%>">
<p>글목록(전체글:<%=count%>)</p>
<table>
	<tr>
		<td align="right" bgcolor="<%=value_c%>">
		<a href="writeForm.jsp">글쓰기</a>
		</td>
	</tr>
</table>
<%if(count==0){ %>
<table>
  <tr>
    <td align="center">
    	게시판에 저장된 글이 없습니다.
    </td>
  </tr>
</table>

<%}else{ %>
<table>
	<tr height="30" bgcolor="<%=value_c%>">
		<td align="center" width="50">번호</td>
		<td align="center" width="250">제목</td>
		<td align="center" width="100">작성자</td>
		<td align="center" width="150">작성일</td>
		<td align="center" width="50">조회</td>
		<td align="center" width="100">IP</td>
	</tr>
<%
for(int i=0;i<articleList.size();i++){
	BoardDataBean article = articleList.get(i);
%>
<tr height="30">
	<td width="50"><%=number%></td>
	<td width="250"align="left">
<%
	int wid = 0;
%>
</table>
</body>
</html>






















