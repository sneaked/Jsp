<%@page import="javax.sql.DataSource"%>
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
	Context initCtx = new InitialContext();
	Context envCtx = (Context)initCtx.lookup("java:comp/env");
	DataSource ds = (DataSource)envCtx.lookup("jdbc/bookert");
	conn = ds.getConnection();
	
	
	out.println("ok");
	
	PreparedStatement pstmt = null;
	String sql = "select * from book_info where book_num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, 1);
	ResultSet rs = pstmt.executeQuery();
	int a = 1;
	int b = 0;
	if(rs.next()){
		b = rs.getInt("price");
	}
	
	int c = a+b;
	
%>
<%=c%>
</body>
</html>
