package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
 //웹이랑 연동 필요 없으니까 그냥 클래스로 만듬.
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	// DB연결해주는 메서드
	public void getConnection() {
		// 1. 드라이버 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// *2.커넥션 연결
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요."); // 에러형태로 출력함.
		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
		}
	}
	// DB종료해주는 메서드
	public void close() {
		// 연결종료
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int join(MemberDTO dto) {
		// memberdto는 객체로 회원정보를 가지고 있음. memberdto로부터 정보 받음.
		getConnection();
		// 조회만 하면 쿼리 사용.
		int cnt =0;
		try {
			String sql = "INSERT INTO MSGMEMBER VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			//email이 private이니까 get을 사용함.
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getAddr());
			//실행한 문장의 개수를 반환함. 1은 1명의 정보를 실행해서 저장함.
			cnt =psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	public MemberDTO login(MemberDTO dto) {
		MemberDTO  info =null;
		int cnt = 0;
		getConnection();
		try {
			String sql = "SELECT * FROM MSGMEMBER WHERE EMAIL=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			//RS는 커서의 기능이있다. 커서가 한칸 내려오면 성공! (=id,pw..의 답을 가져온다.)
			if(rs.next()) {
				String email =rs.getString("email");
				String pw =rs.getString("pw");
				String phone =rs.getString("phone");
				String addr =rs.getString("addr");
				info = new MemberDTO(email, pw, phone, addr);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}	
		return info;
	}
	
	
	public int update(MemberDTO changeInfo) {
		int cnt = 0;
		getConnection();
		try {
			String sql = "UPDATE MSGMEMBER SET PW=?, PHONE=?, ADDR =? WHERE EMAIL=?";
			psmt = conn.prepareStatement(sql);// sql문을 실행해주고 물음표를 채워줄 객체가 필요함
			// sql문이 이상 없는지 확인하고 돌려줌.
			psmt.setString(1, changeInfo.getPw());
			psmt.setString(2, changeInfo.getPhone());
			psmt.setString(3, changeInfo.getAddr());
			psmt.setString(4, changeInfo.getEmail());
			
		    cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			// try 나 catch둘다 실행해도 여기로 넘어옴.
			close();
		}
		
		return cnt;

	}
}
