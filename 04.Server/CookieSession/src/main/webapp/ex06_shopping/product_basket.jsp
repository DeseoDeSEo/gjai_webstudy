<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니</h1>
	<fieldset>
		<legend>상품리스트</legend>
		<!-- 쿠키에 저장된 상품들을 출력하는 기능 구현 
	- "product" 를 "상품" 으로 변환( replace()활용 )
	-->
		<ul>
			<%
			Cookie[] cookies = request.getCookies();

			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					if (cookies[i].getName().contains("product")) {
						out.print("<li>" + cookies[i].getValue().replace("product", "상품") + "</li>");
					}
				}
			}
			%>
		</ul>
	</fieldset>
	<P>
		<a href="">계속 쇼핑하기</a>
	</P>
	<p>
		<a href="product_deleteAll.jsp">모든 상품 삭제</a>
	</p>

</body>
</html>