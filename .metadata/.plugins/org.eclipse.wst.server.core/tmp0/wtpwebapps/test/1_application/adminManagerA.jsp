<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>application scope ¿¹Á¦ adminManagerA.jsp</title></head>
<body>
	<%	String tel="019-111-9999";
		String addr="»ï¼ºµ¿";
		String kospi="1,721";
		String admin_email="lhj@oak.co.kr";
	%>
	tel :: <%=tel %><br/>
	addr :: <%=addr %><br/>
	kospi :: <%=kospi %><br/>
	admin_email ::<%=admin_email %><br/>
	<% 
		application.setAttribute("tel",tel);
		application.setAttribute("addr",addr);
		application.setAttribute("kospi",kospi);
		application.setAttribute("admin_email",admin_email);
	%>
	<input type="button" value="a.jsp" onclick="location='a.jsp'">
	<%--<jsp:forward page="a.jsp"></jsp:forward>--%>
</body>
</html>