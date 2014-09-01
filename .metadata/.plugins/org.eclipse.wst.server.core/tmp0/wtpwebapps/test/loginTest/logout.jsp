<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>URL ReWriting test - loginSuccess.jsp</title></head>
<body>
  <%  	String id=request.getParameter("id");  %>
  <%=id %>님 정상적으로 로그아웃 되었습니다.  
  <a href="login.jsp">처음으로</a>
 
 </body>
</html>