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


Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String str = "";
try{
	String jdbcUrl = "jdbc:mysql://localhost:3306/test";
	String dbId = "root";
	String dbPass = "jsp804";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	
	String sql = "select id,passwd from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	
	
	if(rs.next()){
		String rId = rs.getString("id");
		String rPasswd = rs.getString("passwd");
		if(id.equals(rId)&&passwd.equals(rPasswd)){
			sql = "update member set name=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
		}else{
			out.println("password 틀림");
		}
	}else{
		out.println("id 틀림");
	}

	str = "성공!!";
	
}catch(Exception e){
	e.printStackTrace();
	str = "실패!";
}finally{
	if(rs!=null){
		try{rs.close();}catch(SQLException sqle){}
	}
	if(pstmt!=null){
		try{pstmt.close();}catch(SQLException sqle){}
	}
	if(conn!=null){
		try{conn.close();}catch(SQLException sqle){}
	}
	
}	
%>
<%=str %>
<br>
<a href="jdbcForm_test.jsp">MAIN</a>
</body>
</html>
