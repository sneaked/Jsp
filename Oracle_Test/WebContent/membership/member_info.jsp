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
<style type="text/css">
td {text-align:center; };

</style>
</head>
<body>
<%
	Connection conn = null;
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	
	String searchid = request.getParameter("userid");
	//String searchid = "admin";
	String sql = "select * from membership where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, searchid);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		String id = rs.getString("id");
		String passwd = rs.getString("passwd");
		String name = rs.getString("name");
		String age = rs.getInt("age")+"";
		String gender = rs.getString("gender");
		String email = rs.getString("email");
		%>
		<table border="1" width="30%">
			<tr>
				<td>아이디 :</td><td><%=id%></td>
			</tr>
			<tr>
				<td>비밀번호 :</td><td><%=passwd%></td>
			</tr>
			<tr>
				<td>이름 :</td><td><%= name%></td>
			</tr>
			<tr>
				<td>나이 :</td><td><%=age%></td>
			</tr>
			<tr>
				<td>성별 :</td><td><%=gender%></td>
			</tr>
			<tr>
				<td>이메일 주소 :</td><td><%=email %></td>
			</tr>
			<tr>
				<td colspan="2"><a href="member_list.jsp" >리스트로 돌아가기</a>
				<a href="member_update_Form.jsp?updateid=<%=searchid%>">정보 수정</a>
				</td>
				
			</tr>
		</table>
		<%

	}
%>


</body>
</html>
