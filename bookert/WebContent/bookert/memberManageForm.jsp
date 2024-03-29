<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,bookert.*" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/default.css">
</head>
<body>
<%

	String column = request.getParameter("column"); 
	String sort = request.getParameter("sort");
	
	if(column==null)
		column = "";
	if(sort==null){
			sort = "-1";
	}else{
		sort = -Integer.parseInt(sort)+"";
	}
%>
<a href="managerForm.jsp">관리자 화면</a>
<h1 align="center">회원관리</h1>
<table border="1" align="center" width="90%">
	<tr>
		<td><a href="memberManageForm.jsp?column=member_num&sort=<%=sort%>">회원번호</a></td>
		<td><a href="memberManageForm.jsp?column=name&sort=<%=sort%>">이름</a></td>
		<td><a href="memberManageForm.jsp?column=id&sort=<%=sort%>">아이디</a></td>
		<td><a href="memberManageForm.jsp?column=passwd&sort=<%=sort%>">비밀번호</a></td>
		<td><a href="memberManageForm.jsp?column=hp&sort=<%=sort%>">연락처</a></td>
		<td><a href="memberManageForm.jsp?column=address&sort=<%=sort%>">주소</a></td>
		<td><a href="memberManageForm.jsp?column=reg_date&sort=<%=sort%>">가입일</a></td>
		<td>주문내역</td>
	</tr>
	<%
	BookertDBBean bookert = BookertDBBean.getInstance();
	List<MemberBean> result = bookert.memberList(column,sort);
	
	for(int i=0;i<result.size();i++){
		int member_num = result.get(i).getMember_num();
		String name = result.get(i).getName();
		String id = result.get(i).getId();
		String passwd = result.get(i).getPasswd();
		String hp = result.get(i).getHp();
		String address = result.get(i).getAddress();
		String reg_date = result.get(i).getReg_date().toString();
	%>
	<tr>
		<td><%=member_num%></td>
		<td><%=name%></td>
		<td><%=id%></td>
		<td><%=passwd%></td>
		<td><%=hp%></td>
		<td><%=address%></td>
		<td><%=reg_date%></td>
		<td><a href="memberManageForm.jsp">확인하기</a></td>
	</tr>
	<%}%>
</table>
</body>
</html>
