<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>선언문</h2>
	<%!//전역변수
		String s = "전역변수입니다";
	%>
	<%!
	String getStr(){
		return s;	
	}
	%>
	<%
	//스크립트릿
	String s2 = "지역변수 입니다";
	
	%>
	
	s2는 <%=s2 %><br>
	s는 <%=getStr() %>
	
	<hr>
	
	<%!
	String name = "박성호";
	String getS(){
		return name;
	}
	%>
	
	<%
	String hobby = "기타";
	%>
	
	이름은<%=getS()%>,취미는<%=hobby%>임
	
	<hr>
	<%
	String id;
	String passwd;
	int age;
	
	id = "test";
	passwd = "testpass";
	age = 20;
	%>
	회원정보 <%=id%>님의 비밀번호는<%=passwd%>나이는<%=age%>
	
</body>
</html>