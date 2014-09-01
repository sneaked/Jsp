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
<style type="text/css">
td {text-align:center; };

</style>
<script type="text/javascript">
function submit(){
	document.getElementById("form").submit();
	<%
	request.setAttribute("id", updateid);
	%>	
}

</script>
</head>
<body>
<%! String updateid; %>
<%
	Connection conn = null;
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	String updateid = request.getParameter("updateid");
	String sql = "select * from membership where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, updateid);
	ResultSet rs = pstmt.executeQuery();
		
	if(rs.next()){
		String id = rs.getString("id");
		String passwd = rs.getString("passwd");
		String name = rs.getString("name");
		String age = rs.getInt("age")+"";
		String gender = rs.getString("gender");
		String email = rs.getString("email");
		%>
		<form action="member_update_Process.jsp?id=<%=id%>" method="post" id="form">
		<table border="1" width="30%">
			<tr>
				<td>아이디 :</td><td><%=id%></td>
			</tr>
			<tr>
				<td>비밀번호 :</td><td><input type="text" name="passwd" value="<%=passwd%>"></td>
			</tr>
			<tr>
				<td>이름 :</td><td><input type="text" name="name" value="<%= name%>"></td>
			</tr>
			<tr>
				<td>나이 :</td><td><input type="text" name="age" value="<%=age%>"></td>
			</tr>
			<tr>
				<td>성별 :</td>
				<%
				if(gender.equals("남")){
				%>
					<td>  
					남자 :<input type="radio" name="gender" value = "남" checked="checked">
					여자 :<input type="radio" name="gender" value = "여">
					</td>
				<%}else{%>
					<td>  
					남자 :<input type="radio" name="gender" value = "남" >
					여자 :<input type="radio" name="gender" value = "여" checked="checked">
					</td>
				<%}%>
			</tr>
			<tr>
				<td>이메일 주소 :</td><td><input type="text" name="email" value="<%=email %>"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="#" onclick="submit();">수정하기</a></td>
			</tr>
		</table>
		</form>
<%}%>
</body>
</html>
