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
	<%-- 스크립트리?! --%>
	<fieldset>
		<h1> <%=c%>층</h1>
		<h1><%=r%>방</h1>
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