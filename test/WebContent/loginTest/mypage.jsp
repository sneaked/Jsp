<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>URL ReWriting test - mypage.jsp</title></head>
<body>
  <%  	String id=request.getParameter("id");  %>
   <%=id %>�� mypage�Դϴ�. ȯ���մϴ�.  
  <a href="logout.jsp?id=<%=id %>">logout</a>
</body>
</html>