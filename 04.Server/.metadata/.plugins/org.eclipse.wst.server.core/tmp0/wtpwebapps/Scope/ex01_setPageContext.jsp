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
	//07/26���� ��ü�� �����ϴ°Ŵϱ� ���ڵ� �ʿ�x
	//  Page Scope 
	//- �ϳ��� JSP ������ �� �����ϴ� ����
	//- ���� ���������� ���������� �����Ͽ� Ȱ�� �Ǵ� ������ ���� ELǥ������� Ȱ���� �� ���.
	pageContext.setAttribute("nickname","������");
	
	
	%>
	<%=pageContext.getAttribute("nickname") %>
</body>
</html>