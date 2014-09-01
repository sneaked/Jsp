<%@page import="java.sql.*,javax.sql.*,javax.naming.*"%>
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
	
	String deleteid = request.getParameter("userid");
	String sql = "delete from membership where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, deleteid);
	pstmt.executeQuery();
	
%>
<jsp:forward page="member_list.jsp"></jsp:forward>
</body>
</html>
