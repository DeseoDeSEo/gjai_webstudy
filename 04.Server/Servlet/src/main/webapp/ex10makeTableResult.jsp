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
	request.setCharacterEncoding("EUC-KR");
	int c = Integer.parseInt(request.getParameter("c"));
	int r = Integer.parseInt(request.getParameter("r"));
	%> 
	<%-- ��ũ��Ʈ��?! --%>
	<fieldset>
		<h1> <%=c%>��</h1>
		<h1><%=r%>��</h1>
		<table border ="1px solid black">
			<% for(int i =0; i<c; i++){
					out.print("<tr>");
				for(int j =0; j<r;j++){
					out.print("<td>" + j + "</td>"); 
				}
					out.print("</tr>");
			}
			%> 	
		</table>
	</fieldset>
</body>
</html>