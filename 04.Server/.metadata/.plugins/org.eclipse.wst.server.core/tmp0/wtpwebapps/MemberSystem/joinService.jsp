<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>


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
	// 넘어온 데이터를 기준으로 JDBC를 통해 테이블에 값 넣기 (회원가입)
	//JdBC순서
	//드라이버 파일 프로젝트에 넣기 -드라이버 동적로딩 - 커넥션 연결- SQL문 실행 - 연결종료
	//id, pw, nick, email, phone, gender , age
	//회원가입 후 main페이지로 돌아가는 기능을 완성하시오.
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
        int age = Integer.parseInt(request.getParameter("age"));
		//*1.드라이버 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//*2.커넥션 연결
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		//*3.SQL문 실행
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);  //sql문을 실행해주고 물음표를 채워줄 객체가 필요함 
		 	//connection 으로부터 받아옴..
		psmt.setString(1,id);  //psmt에게 setString을 부탁.
		psmt.setString(2,pw); 
		psmt.setString(3,nick); 
		psmt.setString(4,email);
		psmt.setString(5,phone);
		psmt.setString(6,gender);
		psmt.setInt(7,age);
			
		psmt.executeUpdate();
			
		//4.연결종료
		if (psmt != null) {
				psmt.close();
			}
		if (conn != null) {
				conn.close();
			}
			
		response.sendRedirect("main.jsp");
	%>
</body>
</html>