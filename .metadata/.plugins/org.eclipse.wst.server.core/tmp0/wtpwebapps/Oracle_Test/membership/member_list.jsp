<%@page import="javax.naming.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {text-align:center;};

</style>
</head>
<body>
<table border="1" width="25%">
	<tr>
	 <td colspan="2" align="center">회원 목록</td>
	</tr>
<%
	Connection conn = null;
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	Statement stmt = conn.createStatement();
	String sql = "select * from membership";
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		String id = rs.getString("id");
%>
	<tr>
		<td><a href="member_info.jsp?userid=<%=id%>"><%=id%></a></td><td><a href="member_delete.jsp?userid=<%=id%>">삭제</a></td>	
	</tr>
<%
}//end while
%>
</table>
<br><a href="loginForm.jsp">로그아웃</a>
</body>
</html>
