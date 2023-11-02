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
	// 위의 값을 먼저 다 가져온다음 id와 pw가 일치하는 계정을 찾아
	// 입력한 nick, email, phone, gender,age를 수정하시오
	// 수정 성공시 -> main.jsp
	// 수정 실패시 - > update.jsp
	request.setCharacterEncoding("EUC-KR");
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 String nick = request.getParameter("nick");
	 String email = request.getParameter("email");
	 String phone = request.getParameter("phone");
	 String gender = request.getParameter("gender");
     int age = Integer.parseInt(request.getParameter("age"));
     
     int cnt= 0;
	 //1.드라이버 동적로딩
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 //*2.커넥션 연결
	 String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String db_id = "shopping";
	 String db_pw = "12345";
	 Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	 //*3.SQL문 실행
	 
	 String sql = "Update member set NICK=?, EMAIL=?, PHONE=?, GENDER=?, AGE=? where id = ? AND PW =?";
	 PreparedStatement psmt = conn.prepareStatement(sql);//sql문을 실행해주고 물음표를 채워줄 객체가 필요함 
	 //sql문이 이상 없는지 확인하고 돌려줌.
	 psmt.setString(1, nick);
	 psmt.setString(2, email);
	 psmt.setString(3, phone);
	 psmt.setString(4, gender);
	 psmt.setInt(5, age);
	 psmt.setString(6, id);
	 psmt.setString(7, pw);
	 cnt = psmt.executeUpdate();
	 //연결종료
	 if (psmt != null) {
			psmt.close();
		}
	 if (conn != null) {
			conn.close();
		}
	 //로그인 성공시 -> loginSuccess.jsp
	 if (cnt >0){ 
		 response.sendRedirect("main.jsp");
		 //p.196 쿼리스트링 방식
	 }
	 //로그인 실패시 -> login.jsp 
	 else{
		 response.sendRedirect("update.jsp");
	 }
	
	%>
</body>
</html>