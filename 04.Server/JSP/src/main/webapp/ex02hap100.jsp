<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <%-- 1���� 100������ ���� �ݺ����� ���Ͽ� ���� ���� h1�±� �ȿ� ǥ�� --%>
    <%
    // ��ũ��Ʈ�� => JSP���� Java�ڵ带 ����ϱ� ���ؼ� ����ϴ� �� 
    //        -> ���⿡ ���Ŵ� ������ ������ ����.
     int sum =0;
    for(int i=1; i<101; i++){
    	sum = i +sum; //sum +=i;
    }
    %>
	<h1> 1���� 100������ ����->  <%=sum %> </h1>

</body>
</html>