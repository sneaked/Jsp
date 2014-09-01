<%@page import="org.apache.tomcat.util.threads.ResizableExecutor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		<tr>
			<td width="100">아이디</td>
			<td width="100">패스워드</td>
			<td width="100">이름</td>
			<td width="250">가입일자</td>
		</tr>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	String jdbcUrl = "jdbc:mysql://localhost:3306/test";
	String dbId = "root";
	String dbPass = "jsp804";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	
	
	String sql = "select * from member order by reg_date desc";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String id = rs.getString("id");
		String passwd = rs.getString("passwd");
		String name = rs.getString("name");
		Timestamp register = rs.getTimestamp("reg_date");
	%>
	
	<tr>
			<td width="100"><%=id%></td>
			<td width="100"><%=passwd%></td>
			<td width="100"><%=name%></td>
			<td width="250"><%=register.toString()%></td>
		</tr>
	<%
	
	}

	
}catch(Exception e){
	e.printStackTrace();
	
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
%><br>
<a href="jdbcForm_test.jsp">MAIN</a>
</table>
</body>
</html>
