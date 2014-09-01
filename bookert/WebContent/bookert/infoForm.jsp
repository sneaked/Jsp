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
<a href="managerForm.jsp">관리자 화면</a>
<%
	if(request.getAttribute("alert")!=null){
		%>
		<script type="text/javascript">
		alert("양식에 맞게 입력하세요")	;
		</script>
		<%
	}
		
%>
<h2>책 정보 등록</h2>
<form action="infoPro.jsp" method="post">
<table border="1">
	<tr>
		<td>책 제목</td><td><input type="text" name="name" maxlength="50"></td>
	</tr>
	<tr>
		<td>지은이</td><td><input type="text" name="author" maxlength="30"></td>
	</tr>
	<tr>
		<td>출판사</td><td><input type="text" name="maker" maxlength="30"></td>
	</tr>
	<tr>
		<td>분류 1</td>
		<td>
		<select name="category1">
			<option value="국내서적">국내서적</option>
			<option value="외국서적">외국서적</option>
		</select>
		</td>
	</tr>
	<tr>
		<td>분류 2</td>
		<td>
		<select name="category2">
			<option value="컴퓨터/IT">컴퓨터/IT</option>
			<option value="청소년">청소년</option>
			<option value="인문교양">인문교양</option>
			<option value="요리">요리</option>
			<option value="역사와 문화">역사와 문화</option>
			<option value="여행">여행</option>
			<option value="소설">소설</option>
			<option value="만화">만화</option>
			<option value="가정과 생활">가정과 생활</option>
		</select>
		</td>
	</tr>
	<tr>
		<td>가격</td><td><input type="number" name="price">원</td>
	</tr>
	<tr>
		<td>발행일</td>
		<td>
		<input type="text" name="year" maxlength="4" size="4">년
		<input type="text" name="month" maxlength="2" size="2">월
		<input type="text" name="day" maxlength="2" size="2">일
		</td>
	</tr>
</table>
<input type="submit" value="등록"> 
</form>
</body>
</html>
