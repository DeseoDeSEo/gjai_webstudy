<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ��ǰ ������ ������ ��, ����� ��Ű������ �����ϰ� ex05_readCookie.jsp�� �̵��ϴ� ��� ����.  -->
	<%
	 //��Ű �����ϴ� ���
	 Cookie cookie = new Cookie("item","");//��ü ����, �ϳ��� �޾ƿö��� request�ʿ����
	 //setMaxAge()�� 0���� ���� => '����'�Ѵٴ� �ǹ�
	 cookie.setMaxAge(0);
	 response.addCookie(cookie);
	 response.sendRedirect("ex05_readCookie.jsp");
	
	%>
	
	
</body>
</html>