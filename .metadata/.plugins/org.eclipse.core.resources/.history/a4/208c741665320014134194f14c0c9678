<%@page import="java.sql.*"%>
<%@page import="bookert.*"%>
<%@page import="java.util.*" %>
<%@page import="javax.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입을 축하합니다</title>
<script type="text/javascript">
function joinOk(){
	alert("회원 가입을 축하합니다.\n메인화면으로 이동합니다");
	location.href("main.jsp");
}	

</script>
</head>
<body>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String hp = request.getParameter("hp");
	
	BookertDBBean bookert =  BookertDBBean.getInstance();
	MemberBean Join = new MemberBean();
	try{
		Join.setName(name);
		Join.setId(id);
		Join.setPasswd(passwd);
		Join.setHp(hp);
		Join.setAddress(address);
		Join.setReg_date(new Timestamp(System.currentTimeMillis()));
		bookert.memberJoin(Join);
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<script type="text/javascript">
	joinOk();
</script>

</body>
</html>