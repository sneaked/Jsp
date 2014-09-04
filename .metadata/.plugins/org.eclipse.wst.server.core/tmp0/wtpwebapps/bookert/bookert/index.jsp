<%@page import="org.apache.catalina.util.Introspection"%>
<%@page import="bookert.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style/default.css">
<title>BOOKERT</title>
<script type="text/javascript">
function login(){
	if(document.loginform.id.value=="")alert("아이디를 입력하세요");
	else if(document.loginform.passwd.value=="")alert("비밀번호를 입력하세요");
	else document.loginform.submit();
}
function cart(book_num){
	var id = "<%session.getAttribute("loginId");%>";
	if(id!=null){
		window.open("cartPro.jsp?book_num="+book_num, "cart",
				"width=200,height=200,top="+((screen.height-200)/2)+",left="+((screen.width-200)/2));
	}else{
		alert(id);
	}

}
function cartList(){
	location.href("cartListForm.jsp");
}
</script>
</head>
<body>
<header>
header
</header>
<nav>
nav
</nav>
<article>
	<section id="sidemenu">
	<div id="loginbox">
	<%
		if (session.getAttribute("loginId")==null) {
		%>
		<form method="post" action="loginPro.jsp" name="loginform">
		<table align="center">
		<tr>
			<td>아이디 :</td><td> <input type="text" name="id" size="12" maxlength="50"></td>
		</tr>
		<tr>
			<td>비밀번호 :</td><td><input type="password" name="passwd" size="13" maxlength="16"
			onkeydown="javascript: if (event.keyCode == 13) {login();}"></td>
		</tr>
		<tr>
			<td align="center"><a href="#" onclick="javascript:login()">로그인</a></td>
			<td align="center"><a href="memberJoinForm.jsp">회원가입</a></td>
		</tr>
		</table>
		</form>
		<%
		}else{
			String loginId = (String)session.getAttribute("loginId");
		%>
		<table align="center">
			<tr>
				<td><%=loginId%>님 접속중</td>
			</tr>	
		<%
			if(loginId.equals("manager")){
		%>
			<tr>
				<td><a href="managerForm.jsp">관리자 페이지로</a></td>
			</tr>
			<%}//end if%>
			<tr>
			<td align="center"><a href="cartListForm.jsp">장바구니</a></td>
			</tr>
			<tr>
				<td><a href="logoutPro.jsp">로그아웃</a></td>
			</tr>
		</table>
		<%}//end else%>
	</div>
	</section>
		<section id="mainsection"> 
		<%
	      BookertDBBean bookert = BookertDBBean.getInstance();
	      List<BookinfoBean> booklist = new ArrayList<BookinfoBean>();
	
	      booklist = bookert.bookSearch("", null, null);
	
	      int index = 0;
	      int maxindex = 0;
	      int count = 1;
	
	      if (request.getParameter("index") == null) {
	         index = 0;
	         maxindex = 5;
	      } else {
	         index = Integer.parseInt(request.getParameter("index"));
	         maxindex = Integer.parseInt(request.getParameter("maxindex"));
	      }
	
	      for (int i = index; i <= maxindex; i++) {
	         if(i<booklist.size()){
	        	 int book_num = booklist.get(i).getBook_num();
	   %>
	
		<table border="1" width="785px">
			<tr>
				<td rowspan="4" style="width: 120px;"><img
					src="book_image/<%=book_num%>.jpg"
					style="width: 120px; height: 170px;">
				</td>
			</tr>
			<tr>
				<td>제목: <%=booklist.get(i).getName()%></td>
				<td rowspan="3" id="order">
				<a href="#" onclick="javascript:cart(<%=book_num%>)">장바구니 담기</a><br><br> 
				<a href="#" onclick="javascript:buy(<%=book_num%>)">구매하기</a>
				</td>
			</tr>
			<tr>
				<td>저자: <%=booklist.get(i).getAuthor()%> 출판사: <%=booklist.get(i).getMaker()%></td>
			</tr>
			<tr>
				<td>정가: <%=booklist.get(i).getPrice()%></td>
			</tr>
		</table>
		<%}else{
		   break;
	   	 }
	   }//end for
	   %> 
	   <br>
	   <div style="border: 1px solid red; text-align: center;">
	   <%
	      for (int i = 0; i < booklist.size(); i += 6) {
	   %> <a href="index.jsp?index=<%=i%>&maxindex=<%=i + 5%>"><%=count%></a>|<%
	      count++;
	   	  }
	   %>
	   </div>
	</section>
</article>
<footer>
footer
</footer>
</body>
</html>