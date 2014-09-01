<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
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
	
	String sql = "select * from membership";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	int permission = -1;//-1:fail 0:user 1:admin
	String str = "";
	
	while(rs.next()){
		if(rs.getString("id").equals(userid)){
			if(rs.getString("passwd").equals(userpasswd)){
				permission = 0;
				if(userid.equals("admin")){
					permission = 1;
				}
				break;
			}else{
				str = "비밀번호가 틀립니다";
			}
		}else{
			str = "아이디가 틀립니다";
		}
	}
	
	if(permission!=-1){
%>
	<jsp:forward page="main.jsp">
		<jsp:param name="userid" value= "<%=userid%>"/>
		<jsp:param name="permission" value="<%=permission%>"/>
	</jsp:forward>
	
<%}else{
	%>
	<%=str%><br>
	<a href="loginForm.jsp">로그인 화면으로....</a>
		
<%}%>
</body>
</html>
