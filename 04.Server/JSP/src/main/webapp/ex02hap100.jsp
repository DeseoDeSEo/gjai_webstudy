<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <%-- 1부터 100까지의 합을 반복문을 통하여 구한 다음 h1태그 안에 표현 --%>
    <%
    // 스크립트릿 => JSP에서 Java코드를 사용하기 위해서 사용하는 것 
    //        -> 여기에 쓴거는 웹에서 보이지 않음.
     int sum =0;
    for(int i=1; i<101; i++){
    	sum = i +sum; //sum +=i;
    }
    %>
	<h1> 1부터 100까지의 합은->  <%=sum %> </h1>

</body>
</html>