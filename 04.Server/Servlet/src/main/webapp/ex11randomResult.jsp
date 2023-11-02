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
	<h2>랜덤</h2>
		<fieldset> <!-- 테두리를 그어줌 -->
			<legend> 랜덤 당첨 결과</legend>
			<%--주제를 출력하고 아이템 중 하나를 랜덤으로 선택해서 출력 --%>
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