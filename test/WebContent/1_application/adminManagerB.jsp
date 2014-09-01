<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>application scope 예제 adminManagerB.jsp</title></head>
<body>
  application scope에 등록된 attribute tel ::<%=application.getAttribute("tel") %><br/>
  application scope에 등록된 attribute addr ::<%=application.getAttribute("addr") %><br/>
  application scope에 등록된 attribute kospi ::<%=application.getAttribute("kospi") %><br/>
  application scope에 등록된 attribute admin_email ::
  									<%=application.getAttribute("admin_email") %><br/>
  <br/>
	<%
		String kospi="1900";
		application.setAttribute("kospi",kospi);
	%>
  application scope에 등록된 attribute tel ::<%=application.getAttribute("tel") %><br/>
  application scope에 등록된 attribute addr ::<%=application.getAttribute("addr") %><br/>
  application scope에 등록된 attribute kospi ::<%=application.getAttribute("kospi") %><br/>
  application scope에 등록된 attribute admin_email ::
  									<%=application.getAttribute("admin_email") %><br/>
	<input type="button" value="c.jsp" onclick="location='c.jsp'">
	<%--<jsp:forward page="c.jsp"></jsp:forward>--%>
</body>
</html>