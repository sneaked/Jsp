<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>URL ReWriting test - loginSuccess.jsp</title></head>
<body>
  <%  	String id=request.getParameter("id");  %>
  로그인 성공 <%=id %>님 환영합니다.  
  <a href="mypage.jsp?id=<%=id %>">mypage로 이동</a>
</body>
</html>