<%@page import="java.util.ArrayList"%>
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
	//07/26���ǿ������� ������ �������¹��
	//��¸� ����ϸ� out�Ǵ� ǥ���� ���
	String name= (String)session.getAttribute("name");
	//Ÿ�� ��ȯ �ʿ�. �ٿ�ĳ���� �� ��ü���� Ÿ�� ��ȯ
	//Ư�� Ÿ�Կ� ������ ��� ��ȯ������Ѵ�.(�ٿ�ĳ����)
    Integer age = (Integer)session.getAttribute("age");
	// ǥ���ľȿ� session.getAttribute�ϸ� ���� ������ null����.
	//���ڿ�  -> ���� ? integer.parseInt(); --> Integer����Ÿ�� ��.
	// - �⺻ ������ Ÿ���� ����Ÿ������ ��ȯ�ϴ� ��� : WraperŬ����
	// ������: char-> Character
	// ���� : byte -> Byte, short -> Short, int -> Integer, long-> Long
	// �Ǽ� : float-> Float, double-> Double
	// �� : boolean - > Boolean
	ArrayList<String> list= (ArrayList<String>)session.getAttribute("list");
	
	%>
	<h1>���ǿ� ����� ������ Ȯ��</h1>
	<%=name %>
	<%=age %>
	<%=session.getAttribute("age1") %>
	<%=list!= null? list.get(0) : null %>
	<%=list!= null? list.get(1) : null %>
	<!-- ������ ǥ������. -->
</body>
</html>