<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		ID , PW�� ���� ������ ����
		ID , PW�� ��ġ�ϴ� ȸ���� ������ ����
		���� ���� -> main.jsp�̵�
		���� ���� -> delete.jsp�̵�
	 --%>
	<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	//*2.Ŀ�ؼ� ����
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	//*3.SQL�� ����

	String sql = "delete from member where id = ? and pw = ?";
	PreparedStatement psmt = conn.prepareStatement(sql);//sql���� �������ְ� ����ǥ�� ä���� ��ü�� �ʿ��� 
	//sql���� �̻� ������ Ȯ���ϰ� ������.
	psmt.setString(1, id);
	psmt.setString(2, pw);
	//connection ���κ��� �޾ƿ�..
	ResultSet rs = psmt.executeQuery();//resultset�̶�� ��ü: ǥ���·� �����͸� ������ �ִ� ��ü��.
	
	int cnt = 0;
	
	if (rs.next()) { //resultset�� ǥ���·� ����Ǿ������ϱ� rs.next�� �ϳ��� ������� ����Ű�鼭 ��.
		cnt++;
	}
	if (rs != null) {
		rs.close();
	}
	if (psmt != null) {
		psmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	//�α��� ������ -> loginSuccess.jsp
	if (cnt > 0) {
		
		response.sendRedirect("main.jsp");
		//p.196 ������Ʈ�� ���
	}
	//�α��� ���н� -> login.jsp 
	else {
		response.sendRedirect("delete.jsp");
	} // executeUpdate, executeQuery �˻� ����..!
	%>
 <!-- ������ �ڵ� 
 	 String sql = "DELETE FROM MEMBER WHERE ID = ? AND PW = ?";
       
       PreparedStatement psmt = conn.prepareStatement(sql);
       psmt.setString(1, id);
       psmt.setString(2, pw);
       
       cnt = psmt.executeUpdate();
       
       if(psmt != null){
          psmt.close();
       }
       if(conn != null){
          conn.close();
       }-->




</body>
</html>