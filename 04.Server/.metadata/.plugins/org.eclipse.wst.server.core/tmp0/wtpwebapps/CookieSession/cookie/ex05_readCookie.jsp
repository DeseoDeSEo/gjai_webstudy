<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 저장된 상품 보여주기 -->
	<h1>저장된 상품</h1>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i =0; i<cookies.length; i++){
			//JsessionId를 제외한 쿠키정보만 출력하도록
			if(!cookies[i].getName().equals("JSESSIONID")){
				out.print(cookies[i].getValue());
			}
			
		}
	}
	
	
	%>
	<!-- 상품 삭제를 눌렀을 때, 저장된 쿠키정보를 삭제하고 ex05_readCookie.jsp로 이동하는 기능 구현.  -->
	<a href = "ex05_deleteCookie.jsp">상품삭제</a>
	
</body>
</html>