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
		ID , PW 2���� ������ �޾ƿͼ�
		�α����� �� ����, �α��� ������ ����� �г��� �ֿܼ� ���
	 --%>
	 <% 
	 request.setCharacterEncoding("EUC-KR");
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 String nick = request.getParameter("nick");
	
	 
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 //*2.Ŀ�ؼ� ����
	 String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String db_id = "shopping";
	 String db_pw = "12345";
	 Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	 //*3.SQL�� ����
	 
	 String sql = "select NICK from member where id = ? and pw = ?";
	 PreparedStatement psmt = conn.prepareStatement(sql);//sql���� �������ְ� ����ǥ�� ä���� ��ü�� �ʿ��� 
	 //sql���� �̻� ������ Ȯ���ϰ� ������.
	 psmt.setString(1, id);
	 psmt.setString(2, pw);
	 //connection ���κ��� �޾ƿ�..
	 ResultSet rs = psmt.executeQuery();//resultset�̶�� ��ü: ǥ���·� �����͸� ������ �ִ� ��ü��.
	 if (rs.next()) { //resultset�� ǥ���·� ����Ǿ������ϱ� rs.next�� �ϳ��� ������� ����Ű�鼭 ��.
			nick = rs.getString("NICK");
			//syso(rs.getString("NICK"));
			//�޼ҵ� �����ε� ��. 
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
	 if (nick != null){ 
		 //���ڵ� ��ĳ���.
		 nick = URLEncoder.encode(nick, "EUC-KR");
		 response.sendRedirect("loginSuccess.jsp?nick="+nick);
		 //p.196 ������Ʈ�� ���
	 }
	 //�α��� ���н� -> login.jsp 
	 else{
		 response.sendRedirect("login.jsp");
	 }
	 %>
	 
	 
	 
	 
	 
</body>
</html>