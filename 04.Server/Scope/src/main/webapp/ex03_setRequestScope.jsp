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
	// Request Scope
	// :�ϳ� �̻��� JSP���������� ������ ���� ��Ű�� ����
	// - forward������� �̵��� �� ������ ������ų�� ����.
	request.setAttribute("nickName", "������");
	//�̵� �ϴ� ��:��û�� ������ �������ִ°��� ���� ������ �ȵ� :redirect���
	// -�ܼ��� ������ �̵� Ȥ�� �����ͺ��̽��� ��ȭ�� �ִ� �̵��� �� ���!(��ȸ�� �� ����)
	//- ��û�� 2�� �߻�( )
	// - ���� �Ǵ� �ܺ� ������ ���� 
	
	//response.sendRedirect("ex04_getRequestScope.jsp");
	
	//�Ʒ��� ������� ������ ���������� ��.��������
	// :���� �������� ������ ������ �� ����ϴ� ���: forward
	// - ������ �̵�(��ȸ�� ������ ������ ��)
	// - ��û�� 1���� �߻�
	// - ���� �������� ���� ����
    RequestDispatcher dispatcher = request.getRequestDispatcher("ex04_getRequestScope.jsp");
	dispatcher.forward(request, response);
	%>
	<h1>Request ����</h1>
	<%= request.getAttribute("nickName") %>
</body>
</html>