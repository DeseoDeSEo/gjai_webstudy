<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 상품 삭제를 눌렀을 때, 저장된 쿠키정보를 삭제하고 ex05_readCookie.jsp로 이동하는 기능 구현.  -->
	<%
	 //쿠키 삭제하는 방법
	 Cookie cookie = new Cookie("item","");//객체 생성, 하나만 받아올때는 request필요없음
	 //setMaxAge()를 0으로 설정 => '삭제'한다는 의미
	 cookie.setMaxAge(0);
	 response.addCookie(cookie);
	 response.sendRedirect("ex05_readCookie.jsp");
	
	%>
	
	
</body>
</html>