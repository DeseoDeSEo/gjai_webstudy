<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--  
	* 리다이렉트 방식 *
	 - Server가 요청항 Client에게 이동할 URL 전달함으로 
	 Client는 받아온 URL을 통해 다시 접근하는 방식
	 p.195 
	 -->
	 <%-- 현재 페이지 요청시 네이버 페이지로 이동하게 하는 예시 --%>
	 <%
	 	response.sendRedirect("http://www.naver.com");
	 	
	 %>
	 
	 
	 
	 

</body>
</html>