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
	 //��Űp.234 
	 //: ������� ������ ������Ű�� ���� ���
	 // �����pc�� ����(key, value ������ ���� ��, ���Ϸ� ����)
	 //***��Ű�� �����ϴ� ���
	 //Ÿ��  
	 Cookie cookie = new Cookie("name","SEo");
	//��Ű�� �����Ⱓ �����ϴ� ���
	//cookie.setMaxAge(10); //��ȣ ���� ���ڰ� �󸶳� ������ų����. 30��

	Cookie cookie2 = new Cookie("name2","Seooooooo");
	Cookie cookie3 = new Cookie("name3","sEooooooo");
	
	//������ ��Ű�� ����ڿ��� ����
	response.addCookie(cookie);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	%>
	<h1> ��Ű�����Ϸ�!</h1>
</body>
</html>