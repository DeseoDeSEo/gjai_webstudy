<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.net.ConnectException"%>
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
	// id, pw, nick, email, phone, gender, age
	// ���� ���� ���� �� �����´��� id�� pw�� ��ġ�ϴ� ������ ã��
	// �Է��� nick, email, phone, gender,age�� �����Ͻÿ�
	// ���� ������ -> main.jsp
	// ���� ���н� - > update.jsp
	request.setCharacterEncoding("EUC-KR");
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 String nick = request.getParameter("nick");
	 String email = request.getParameter("email");
	 String phone = request.getParameter("phone");
	 String gender = request.getParameter("gender");
     int age = Integer.parseInt(request.getParameter("age"));
     
     int cnt= 0;
	 //1.����̹� �����ε�
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 //*2.Ŀ�ؼ� ����
	 String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String db_id = "shopping";
	 String db_pw = "12345";
	 Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	 //*3.SQL�� ����
	 
	 String sql = "Update member set NICK=?, EMAIL=?, PHONE=?, GENDER=?, AGE=? where id = ? AND PW =?";
	 PreparedStatement psmt = conn.prepareStatement(sql);//sql���� �������ְ� ����ǥ�� ä���� ��ü�� �ʿ��� 
	 //sql���� �̻� ������ Ȯ���ϰ� ������.
	 psmt.setString(1, nick);
	 psmt.setString(2, email);
	 psmt.setString(3, phone);
	 psmt.setString(4, gender);
	 psmt.setInt(5, age);
	 psmt.setString(6, id);
	 psmt.setString(7, pw);
	 cnt = psmt.executeUpdate();
	 //��������
	 if (psmt != null) {
			psmt.close();
		}
	 if (conn != null) {
			conn.close();
		}
	 //�α��� ������ -> loginSuccess.jsp
	 if (cnt >0){ 
		 response.sendRedirect("main.jsp");
		 //p.196 ������Ʈ�� ���
	 }
	 //�α��� ���н� -> login.jsp 
	 else{
		 response.sendRedirect("update.jsp");
	 }
	
	%>
</body>
</html>