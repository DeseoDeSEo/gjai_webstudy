<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 07/27�� ��ħ : �湮�� �� ��ȸ�ϴ� ��  -->
	<h1>���� �湮�� ��</h1>
	<%
	Integer visit = (Integer) application.getAttribute("visit");
	
	if (visit == null) {
		//0���� �ʱ�ȭ.
		application.setAttribute("visit", 0);
		visit = 0;
	} else {
		visit +=1;
		//������ ���� �����ϴ� ����.
		application.setAttribute("visit",visit);
	}
	%>
	<h1><%=visit%>��</h1>







</body>
</html>