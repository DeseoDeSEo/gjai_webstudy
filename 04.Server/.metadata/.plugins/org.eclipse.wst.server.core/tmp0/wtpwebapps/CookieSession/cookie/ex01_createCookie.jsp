<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	 //쿠키p.234 
	 //: 사용자의 정보를 유지시키기 위한 기술
	 // 사용자pc에 저장(key, value 구조로 만든 후, 파일로 저장)
	 //***쿠키를 생성하는 방법
	 //타입  
	 Cookie cookie = new Cookie("name","SEo");
	//쿠키의 유지기간 설정하는 방법
	//cookie.setMaxAge(10); //괄호 안의 숫자가 얼마나 유지시킬건지. 30초

	Cookie cookie2 = new Cookie("name2","Seooooooo");
	Cookie cookie3 = new Cookie("name3","sEooooooo");
	
	//생성된 쿠키를 사용자에게 응답
	response.addCookie(cookie);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	%>
	<h1> 쿠키생성완료!</h1>
</body>
</html>