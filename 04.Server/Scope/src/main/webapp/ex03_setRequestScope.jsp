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
	// Request Scope
	// :하나 이상의 JSP페이지에서 정보를 유지 시키는 영역
	// - forward방식으로 이동할 때 정보를 유지시킬수 있음.
	request.setAttribute("nickName", "스코프");
	//이동 하는 법:요청한 곳으로 응답해주는거임 정보 유지가 안됨 :redirect방식
	// -단순히 페이지 이동 혹은 데이터베이스에 변화를 주는 이동일 때 사용!(조회할 때 정도)
	//- 요청이 2번 발생( )
	// - 내부 또는 외부 페이지 접근 
	
	//response.sendRedirect("ex04_getRequestScope.jsp");
	
	//아래의 방식으로 보내면 정보유지가 됨.포워드방식
	// :다음 페이지로 정보를 전달할 때 사용하는 방법: forward
	// - 페이지 이동(조회된 정보를 유지할 때)
	// - 요청은 1번만 발생
	// - 내부 페이지만 접근 가능
    RequestDispatcher dispatcher = request.getRequestDispatcher("ex04_getRequestScope.jsp");
	dispatcher.forward(request, response);
	%>
	<h1>Request 영역</h1>
	<%= request.getAttribute("nickName") %>
</body>
</html>