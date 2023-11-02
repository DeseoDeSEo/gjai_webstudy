<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css">
/*CSS 주석*/
 </style>
 <script type = "text/javascript">
 // JS주석
 </script>
</head>
<body>
	<!--각종 주석 설명  -->
	<%-- JSP주석 --%>
	<h1> 오늘은 금요일 </h1>
	
	<%
	// 여기는 java코드만 쓸 수 있다.
	int num = 100;
	String name = "호두아빠";
	%>
	
	<%
	int age = 20;
	int size =20;
	String color = "yellow";
	//이 밖은 html임. 
	%>
	
	<%= name %>
	<hr size ="<%=size %>"color ="<%= color%>" > 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>