<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>application scope ���� c.jsp</title></head>
<body>
  application scope�� ��ϵ� attribute tel ::<%=application.getAttribute("tel") %><br/>
  application scope�� ��ϵ� attribute addr ::<%=application.getAttribute("addr") %><br/>
  application scope�� ��ϵ� attribute kospi ::<%=application.getAttribute("kospi") %><br/>
  application scope�� ��ϵ� attribute admin_email ::
  									<%=application.getAttribute("admin_email") %><br/>

find <%=pageContext.findAttribute("addr") %>
find <%=pageContext.findAttribute("name") %>
find <%=pageContext.findAttribute("tel") %>

</body>
</html>