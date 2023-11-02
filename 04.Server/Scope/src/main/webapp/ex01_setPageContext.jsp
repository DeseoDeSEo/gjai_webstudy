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
	//07/26서버 자체에 저장하는거니까 인코딩 필요x
	//  Page Scope 
	//- 하나의 JSP 페이지 내 저장하는 영역
	//- 현재 페이지에서 지역변수로 저장하여 활용 또는 저장한 값을 EL표기법으로 활용할 때 사용.
	pageContext.setAttribute("nickname","스코프");
	
	
	%>
	<%=pageContext.getAttribute("nickname") %>
</body>
</html>