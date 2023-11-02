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
		//세션(Session)
		//- 사용자의 정보를 유지시켜주는 기술
		//- 서버pc에 저장
		//- 다양한 자료형 데이터를 저장 => Object객체로 변환되어 저장
		// 세션 영역에 데이터를 저장하는 방법(객체 생성 안 해도 됨. 내장객체임)
		//  - setAttribute(name,value)
		//  - value는 기본 자료형, 참조형 모두 저장 가능
		session.setAttribute("name", "Justin");
		session.setAttribute("age",25);
		ArrayList<String> list= new ArrayList<String>();
		list.add("cookie");
		list.add("session");
		
		session.setAttribute("list",list);
	    
	
	%>
	<h1>세션 영역에 데이터 저장 완료</h1>
</body>
</html>