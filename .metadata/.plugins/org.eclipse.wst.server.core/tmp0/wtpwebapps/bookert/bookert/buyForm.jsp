<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bookert.*,java.util.*"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/default.css">
<script type="text/javascript">
function orderCancel(){
	history.go(-1);
}
</script>
</head>
<body>
<%
	BookertDBBean bookert = BookertDBBean.getInstance();
	int book_num = Integer.parseInt(request.getParameter("book_num"));
	String book_name = request.getParameter("name");
	int ea = Integer.parseInt(request.getParameter("ea"));
	int price = Integer.parseInt(request.getParameter("price"))*ea;
	
	int member_num = (Integer)session.getAttribute("loginMember_num");
	MemberBean member = bookert.memberInfo(member_num);
	
	String member_name = member.getName();
	String hp = member.getHp();
	String address = member.getAddress();
%>
<h2 align="center">주문정보 입력</h2>
<form action="" method="post" name="order_info">
<table border="1" width="785px" align="center" style="text-align:center;">
	<tr>
		<td width="80px"><img src="book_image/<%=book_num%>.jpg" style="width: 80px; height: 110px;"></td>
		<td><%=book_name%></td>
		<td width="8%">수량</td>
		<td width="8%"><input type="number" name="ea" value="<%=ea%>" maxlength="2" size="2" max="99"></td>
		<td width="8%"><input type="button" value="수정"></td>
		<td width="8%"><label id="price"><%=price%></label></td>
	</tr>
</table>

<hr style="border: 1px dashed gray;">
<h3>보내는분</h3>
<table border="1">
	<tr>
		<td>이름</td><td><input type="text" name="name_from" size="10" value="<%=member_name%>"></td>
	</tr>
	<tr>
		<td>연락처</td>
		<td><input type="text" name="hp_from" size="17" value="<%=hp%>"></td>
	</tr>
	<tr>
		<td>주소</td><td><input type="text" name="address_from" size="40" value="<%=address%>"></td>
	</tr>
</table>
<hr style="border: 1px dashed gray;">
<h3>받는분</h3>
<table border="1">
	<tr>
		<td>이름</td><td><input type="text" name="name_to" size="10" value="<%=member_name%>"></td>
	</tr>
	<tr>
		<td>연락처</td>
		<td><input type="text" name="hp_to" size="17" value="<%=hp%>"></td>
	</tr>
	<tr>
		<td>주소</td><td><input type="text" name="address_to" size="40" value="<%=address%>"></td>
	</tr>
</table>
<br><br><br>
<div align="center">
<a href="#" onclick="javascript:orderCancel()" style="color: red; font-size: 20pt;">취소</a>&nbsp;
<a href="#" style="color: blue; font-size: 20pt;">주문하기</a>
</div>
</form>
</body>
</html>
