<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
		<table border='1px solid black'>
		<tr>
			<%
			for (int i = 1; i <= 10; i++) {
				System.out.print("<td>");
				System.out.print(i);
				System.out.print("</td>");
			}
			��
			%>
			
			<%--   
			<% for (int i = 1; i <= 10; i++) { %>
						<td><%= i %></td>
						<% }%> 
						������ �̷��� �Ͻ�. 
			--%> 
			
			
		</tr>
	</table>

</body>
</html>