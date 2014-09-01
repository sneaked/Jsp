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
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	
	String sql = "update membership set passwd=?,name=?,age=?,gender=?,email=? where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, passwd);
	pstmt.setString(2, name);
	pstmt.setInt(3, Integer.parseInt(age));
	pstmt.setString(4, gender);
	pstmt.setString(5, email);
	pstmt.setString(6, id);
	pstmt.executeQuery();
%>

<jsp:forward page="member_info.jsp">
	<jsp:param value="<%=id%>" name="userid"/>
</jsp:forward>

</body>
</html>
