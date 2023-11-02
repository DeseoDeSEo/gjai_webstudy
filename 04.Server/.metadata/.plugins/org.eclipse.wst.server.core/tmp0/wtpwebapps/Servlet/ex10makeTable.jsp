<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action ="ex10makeTableResult.jsp" method = "get">
	<!--  전송방식을 바꾸려면 method에 적으면 된다. -->
		<h2> 몇 개의 층을 만드실 건가요</h2>
		층 <input type = "number" name ="c">
		<hr>
		<h2>몇 개의 방을 만드실건가요</h2>
		방 <input type = "number" name = "r">
		<br>
		<input type ="submit">
		
		
	
	
	</form>
</body>
</html>