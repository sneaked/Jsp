<%@ page import="bookert.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
<script type="text/javascript">

function negative(){
	window.close();
}
function positive(){
	opener.cartList();
	window.close();
}

</script>
</head>
<body>
<%

	String x = null; 
	if(session.getAttribute("loginId")!=null){
		BookertDBBean bookert = BookertDBBean.getInstance();
		String id = (String)session.getAttribute("loginId");
		int book_num = Integer.parseInt(request.getParameter("book_num"));
		bookert.addCart(id, book_num);
	}else{
		%>
		<script type="text/javascript">
		alert("로그인 필요!!");
		window.close();
		</script>
		<%
	}
%>
<div style="text-align:center;">
<h2>장바구니 담기 완료</h2><br>
장바구니를 확인 하시겠습니까?
<a href="" onclick="javascript:positive()">예</a>&nbsp;<a href="#" onclick="javascript:negative()">아니오</a>
</div>
</body>
</html>