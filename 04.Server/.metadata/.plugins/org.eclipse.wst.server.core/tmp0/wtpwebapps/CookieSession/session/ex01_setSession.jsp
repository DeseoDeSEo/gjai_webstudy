<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
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
		//����(Session)
		//- ������� ������ ���������ִ� ���
		//- ����pc�� ����
		//- �پ��� �ڷ��� �����͸� ���� => Object��ü�� ��ȯ�Ǿ� ����
		// ���� ������ �����͸� �����ϴ� ���(��ü ���� �� �ص� ��. ���尴ü��)
		//  - setAttribute(name,value)
		//  - value�� �⺻ �ڷ���, ������ ��� ���� ����
		session.setAttribute("name", "Justin");
		session.setAttribute("age",25);
		ArrayList<String> list= new ArrayList<String>();
		list.add("cookie");
		list.add("session");
		
		session.setAttribute("list",list);
	    
	
	%>
	<h1>���� ������ ������ ���� �Ϸ�</h1>
</body>
</html>