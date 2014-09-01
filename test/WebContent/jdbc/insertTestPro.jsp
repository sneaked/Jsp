<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
String name = request.getParameter("name");
Timestamp register = new Timestamp(System.currentTimeMillis());

Connection conn = null;
PreparedStatement pstmt = null;
String str = "";

try{
	String jdbcUrl = "jdbc:mysql://localhost:3306/test";
	String dbId = "root";
	String dbPass = "jsp804";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	out.println("ok!!");
	
	String sql = "insert into member values(?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,passwd);
	pstmt.setString(3,name);
	pstmt.setTimestamp(4,register);
	pstmt.executeUpdate();
	
}catch(Exception e){
	e.printStackTrace();
	
	str="member 테이블에 레코드 추가 실패";
}finally{
	
	if(pstmt!=null){
		try{pstmt.close();}catch(SQLException sqle){}
	}
	if(conn!=null){
		try{conn.close();}catch(SQLException sqle){}
	}
	
}	
%>
<%=str %><br>
<a href="jdbcForm_test.jsp">MAIN</a>
</body>
</html>
