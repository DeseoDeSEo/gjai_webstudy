<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ������ ������ ��ǰ���� ��Ű�� ����ǵ��� ��� ����.
	- �Ѱܹ��� value���� ��Ű�� name���� ���
	- �ϳ��� ��ǰ �Ǵ� �������� ��ǰ�� ������ �� �迭�� �����ð� 
 -->
	<%
	String[] products = request.getParameterValues("product");
	for(int i=0; i<products.length;i++){
		//��Ű �̸��� �ϳ��� �����ϰ� �Ǹ� �������� ����� ���� ��Ű�� ������.
		Cookie cookie = new Cookie(products[i], products[i]);
		response.addCookie(cookie);
	}
	response.sendRedirect("product_list.jsp");
	%>
</body>
</html>