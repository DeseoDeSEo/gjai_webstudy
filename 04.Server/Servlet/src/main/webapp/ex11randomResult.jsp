<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css">
	div, h2,fieldset,input{
		margin :auto;
		text-align: center;
		margin-top:10px;
	} 
</style>
</head>
<body>
	<h2>����</h2>
		<fieldset> <!-- �׵θ��� �׾��� -->
			<legend> ���� ��÷ ���</legend>
			<%--������ ����ϰ� ������ �� �ϳ��� �������� �����ؼ� ��� --%>
			<%request.setCharacterEncoding("EUC-KR");
			  String title = request.getParameter("title");
	          int num = Integer.parseInt(request.getParameter("num"));
	          String item[] = request.getParameterValues("item");
	          Random rd = new Random(); %>
	          <%=title%> <br>
			 <%= item[rd.nextInt(item.length)]%>
		     
		</fieldset>
</body>
</html>