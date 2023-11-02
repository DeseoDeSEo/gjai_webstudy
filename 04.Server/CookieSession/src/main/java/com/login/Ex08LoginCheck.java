package com.login;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/
@WebServlet("/Ex08LoginCheck")
public class Ex08LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		ID , PW 2개의 정보를 받아와서
//		로그인을 한 다음, 로그인 성공한 사람의 닉네임 콘솔에 출력
	 
	 request.setCharacterEncoding("EUC-KR");
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 String nick = request.getParameter("nick");
	
	 
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 //*2.커넥션 연결
	 String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String db_id = "shopping";
	 String db_pw = "12345";
	 Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	 //*3.SQL문 실행
	 
	 String sql = "select NICK from member where id = ? and pw = ?";
	 PreparedStatement psmt = conn.prepareStatement(sql);//sql문을 실행해주고 물음표를 채워줄 객체가 필요함 
	 //sql문이 이상 없는지 확인하고 돌려줌.
	 psmt.setString(1, id);
	 psmt.setString(2, pw);
	 //connection 으로부터 받아옴..
	 ResultSet rs = psmt.executeQuery();//resultset이라는 객체: 표형태로 데이터를 가지고 있는 객체임.
	 if (rs.next()) { //resultset에 표형태로 저장되어있으니까 rs.next가 하나씩 순서대로 가르키면서 함.
			nick = rs.getString("NICK");
			//syso(rs.getString("NICK"));
			//메소드 오버로딩 됨. 
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
	 //로그인 성공시 -> loginSuccess.jsp
	 if (nick != null){ 
		 //인코딩 방식넣음.
		 nick = URLEncoder.encode(nick, "EUC-KR");
		 response.sendRedirect("loginSuccess.jsp?nick="+nick);
		 //p.196 쿼리스트링 방식
	 }
	 //로그인 실패시 -> login.jsp 
	 else{
		 response.sendRedirect("login.jsp");
	 }
	 
	}

}
