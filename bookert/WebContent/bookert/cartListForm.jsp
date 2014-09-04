<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bookert.*,java.util.*"%>    
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style/default.css">
<title>Insert title here</title>
<script type="text/javascript">
function update(cart_name,mode){
	
	var cart_num = document.getElementById(cart_name).cart_num.value;
	var ea = document.getElementById(cart_name).ea.value;
	if(mode=="-1"){
		if (confirm("정말 삭제하시겠습니까??") == true){ 
			location.href("cartUpdatePro.jsp?cart_num="+cart_num+"&ea="+ea+"&mode="+mode);
		}else{   
		    return;
		}
	}else if(mode=="1"){
		location.href("cartUpdatePro.jsp?cart_num="+cart_num+"&ea="+ea+"&mode="+mode);
	}
	
	
}

</script>
</head>
<body>
<%
	String loginId = (String)session.getAttribute("loginId");
	if(loginId==null){
	%>
	<script type="text/javascript">
	alert("로그인 필요!!");
	location.href("index.jsp");
	</script>
	<%
	}
	int member_num = (Integer)session.getAttribute("loginMember_num");
	BookertDBBean bookert = BookertDBBean.getInstance();
	List<CartBean> result = bookert.cartList(member_num);
%>
<h3><a href="index.jsp">메인으로</a></h2>
<h2 align="center"><%=loginId%>님의 장바구니</h2>
<%
	for(int i=0;i<result.size();i++){
		int cart_num = result.get(i).getCart_num();
		int book_num = result.get(i).getBook_num();
		String name = result.get(i).getName();
		int price = result.get(i).getPrice();
		int ea = result.get(i).getEa();
		String cart_name = "cart_"+i;
%>
<form action="" method="post" id="<%=cart_name%>">
<table border="1" width="785px" align="center" style="text-align:center;">
	<tr>
		<td width="3%"><input type="checkbox" name="cart_num" value="<%=cart_num%>"></td>
		<td width="80px"><img src="book_image/<%=book_num%>.jpg" style="width: 80px; height: 110px;"></td>
		<td><%=name%></td>
		<td width="8%">수량</td>
		<td width="8%"><input type="number" name="ea" value="<%=ea%>" maxlength="2" size="2" max="99"></td>
		<td width="8%"><input type="button" value="수정" onclick="javascript:update('<%=cart_name%>','1')"></td>
		<td width="8%"><%=price%>원</td>
		<td width="15%">
			<a href="#">주문하기</a><br><br>
			<a href="#" onclick="javascript:update('<%=cart_name%>','-1')">삭제하기</a>
		</td>
	</tr>
</table>
</form>
	<%}%>

</body>
</html>
