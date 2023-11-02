<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 07/27목 아침 : 방문자 수 조회하는 거  -->
	<h1>누적 방문자 수</h1>
	<%
	Integer visit = (Integer) application.getAttribute("visit");
	
	if (visit == null) {
		//0으로 초기화.
		application.setAttribute("visit", 0);
		visit = 0;
	} else {
		visit +=1;
		//증가된 값을 저장하는 거임.
		application.setAttribute("visit",visit);
	}
	%>
	<h1><%=visit%>명</h1>







</body>
</html>