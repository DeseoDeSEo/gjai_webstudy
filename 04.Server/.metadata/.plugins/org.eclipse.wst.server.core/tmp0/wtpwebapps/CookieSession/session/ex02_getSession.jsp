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
	//07/26세션영역에서 데이터 가져오는방법
	//출력만 사용하면 out또는 표현식 사용
	String name= (String)session.getAttribute("name");
	//타입 변환 필요. 다운캐스팅 됨 객체에서 타입 변환
	//특정 타입에 저장할 경우 변환해줘야한다.(다운캐스팅)
    Integer age = (Integer)session.getAttribute("age");
	// 표현식안에 session.getAttribute하면 값이 없더라도 null나옴.
	//문자열  -> 정수 ? integer.parseInt(); --> Integer정수타입 임.
	// - 기본 데이터 타입을 참조타입으로 변환하는 방법 : Wraper클래스
	// 문자형: char-> Character
	// 정수 : byte -> Byte, short -> Short, int -> Integer, long-> Long
	// 실수 : float-> Float, double-> Double
	// 논리 : boolean - > Boolean
	ArrayList<String> list= (ArrayList<String>)session.getAttribute("list");
	
	%>
	<h1>세션에 저장된 데이터 확인</h1>
	<%=name %>
	<%=age %>
	<%=session.getAttribute("age1") %>
	<%=list!= null? list.get(0) : null %>
	<%=list!= null? list.get(1) : null %>
	<!-- 위에는 표현식임. -->
</body>
</html>