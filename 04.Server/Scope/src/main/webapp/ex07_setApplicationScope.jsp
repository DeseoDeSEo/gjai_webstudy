<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Application 영역</h1>
	 <%
	 //Application Scope
	 //:모든 사용자들에게 공통적으로 사용하는 값을 유지시키는 영역
	 // ex) 방문자 수 
	 	application.setAttribute("nickName", "스코프");
	 //링크를 크롬이나 다른 브라우저에서 열어도 데이터가 나옴.
	 //블로그 방문 수치 이런 정보 등등 
	 	response.sendRedirect("ex08_getApplicationScope.jsp");
	 %>
	 
</body>
</html>