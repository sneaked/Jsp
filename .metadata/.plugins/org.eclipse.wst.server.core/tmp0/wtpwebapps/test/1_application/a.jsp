<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>application scope ���� a.jsp</title></head>
<body>
  application scope�� ��ϵ� attribute tel ::<%=application.getAttribute("tel") %><br/>
  application scope�� ��ϵ� attribute addr ::<%=application.getAttribute("addr") %><br/>
  application scope�� ��ϵ� attribute kospi ::<%=application.getAttribute("kospi") %><br/>
  application scope�� ��ϵ� attribute admin_email ::
  									<%=application.getAttribute("admin_email") %><br/>
<input type="button" value="adminManagerB.jsp" onclick="location='adminManagerB.jsp'">
<%--<jsp:forward page="adminManagerB.jsp.jsp"></jsp:forward>--%>
</body>
</html>