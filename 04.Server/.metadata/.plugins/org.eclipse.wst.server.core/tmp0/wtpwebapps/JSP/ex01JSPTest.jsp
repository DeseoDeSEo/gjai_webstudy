<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css">
/*CSS �ּ�*/
 </style>
 <script type = "text/javascript">
 // JS�ּ�
 </script>
</head>
<body>
	<!--���� �ּ� ����  -->
	<%-- JSP�ּ� --%>
	<h1> ������ �ݿ��� </h1>
	
	<%
	// ����� java�ڵ常 �� �� �ִ�.
	int num = 100;
	String name = "ȣ�ξƺ�";
	%>
	
	<%
	int age = 20;
	int size =20;
	String color = "yellow";
	//�� ���� html��. 
	%>
	
	<%= name %>
	<hr size ="<%=size %>"color ="<%= color%>" > 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>