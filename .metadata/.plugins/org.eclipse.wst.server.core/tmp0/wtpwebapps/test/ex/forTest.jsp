<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forTest</title>
</head>
<body>
<%
String strArray[] = {"JAVA","JSP","Android","HTML5"};

for(String s:strArray){
	out.println(s+"<br>");
}

int tmp=0;
for(int i=1;i<11;i++){
	out.println(tmp+"+"+i+"="+(tmp+i)+"<br>");
	tmp=(tmp+i);
}
out.println("<hr>");

for(int i=1;i<10;i++){
	for(int j = 1;j<10;j++){
		out.println(i+"*"+j+"="+(i*j)+"<br>");
	}
	out.println("<hr>");
}

%>
</body>
</html>