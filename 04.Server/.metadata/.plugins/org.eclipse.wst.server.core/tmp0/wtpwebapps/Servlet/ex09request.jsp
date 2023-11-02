<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ex09result.jsp로 보내겠다. 그동안은 servlet으로 보냄. -->
	<form action ="ex09result.jsp">
		<input type = "text" name ="text">
		<!--  input태그는 언제나 form태그 안에 있어야한다. -->
		<input type = "submit">
	
	</form>
	
	
</body>
</html>