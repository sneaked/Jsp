<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
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
<%
	Connection conn = null;
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	String userid = request.getParameter("id");
	String userpasswd = request.getParameter("passwd");
	String username = request.getParameter("name");
	int userage = Integer.parseInt(request.getParameter("age"));
	String usergender = request.getParameter("gender");
	String useremail = request.getParameter("email");
	
	String sql = "insert into membership values (?,?,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, userpasswd);
	pstmt.setString(3, username);
	pstmt.setInt(4, userage);
	pstmt.setString(5, usergender);
	pstmt.setString(6, useremail);
	pstmt.executeQuery();
	
%>

<h2>회원가입이 완료 되었습니다.</h2>
<a href="loginForm.jsp">로그인 화면으로...</a>
</body>
</html>
