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
	 //세션의 모든 데이터를 삭제하는 방법
	 // - 로그아웃 기능을 구현할 때 사용 가능.
	 // - 사용자의 이용가능한 정보를 한번에 삭제시킬때
	 // -  데이터 저장시, 개수나 용량 제한 없음.(서버 용량에 따라 달라질 수 있음.)
	 // - 쿠키처럼 웹 브라우저에 의존하지 않음.
	 // * 세션에 데이터를 무분별하게 저장하면 안 된다.
	 // 사용자가 서비스를 이용하는데 필요한 정보들을 저장해야한다.
	 session.invalidate();
	
	%>
</body>
</html>