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
	//���� ������ ����� Ư�� �����͸� �����ϴ� ���
	// ���� ������ ��.
	session.removeAttribute("name");
	session.removeAttribute("age");

%>
<h1>���� ������ ����� ������ �����Ϸ�!</h1>
</body>
</html>