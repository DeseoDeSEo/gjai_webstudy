<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 반복문을 사용하여 10개짜리 방이 있는 테이블만들기. --%>
	<table border ="1px solid black">
		<tr>
			<% for(int i =1;i<=10; i++){
				out.print("<td>" + i + "</td>"); 
			}
			%> 
			<%--윗 파트는 자바로 인식한다. --%>
		</tr>
	</table>
	
	
	
	
</body>
</html>