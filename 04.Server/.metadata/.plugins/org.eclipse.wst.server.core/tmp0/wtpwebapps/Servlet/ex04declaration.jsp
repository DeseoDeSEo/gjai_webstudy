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
	����
	- JSP�ȿ��� �ʵ� �Ǵ� �޼ҵ带 ����� ���� �� ��� --%>
	<%!
	public String name ="������";
	//���� (����� �ʵ�� ����. �ٽ� ��� 14:41)
	public int plus(int num1, int num2){
		return num1 +num2;
	}
	%>
	<%
	//��ũ��Ʈ��
	String name2 ="���ؿ�";
	%>
	<%= plus(30,40)%>
	</body>
	</html>
	