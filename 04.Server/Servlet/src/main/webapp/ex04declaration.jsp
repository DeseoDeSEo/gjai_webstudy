<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
	선언문
	- JSP안에서 필드 또는 메소드를 만들고 싶을 때 사용 --%>
	<%!
	public String name ="서보경";
	//선언문 (여기는 필드로 간다. 다시 듣기 14:41)
	public int plus(int num1, int num2){
		return num1 +num2;
	}
	%>
	<%
	//스크립트릿
	String name2 ="조준용";
	%>
	<%= plus(30,40)%>
	</body>
	</html>
	