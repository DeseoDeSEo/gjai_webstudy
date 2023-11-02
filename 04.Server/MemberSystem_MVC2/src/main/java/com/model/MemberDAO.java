package com.model;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
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

	// 회원가입 메서드
	public void join(MemberDTO member) {
		// memberdto는 객체로 회원정보를 가지고 있음. memberdto로부터 정보 받음.
		getConnection();
		// 조회만 하면 쿼리 사용.
		try {
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPw());
			psmt.setString(3, member.getNick());
			psmt.setString(4, member.getEmail());
			psmt.setString(5, member.getPhone());
			psmt.setString(6, member.getGender());
			psmt.setInt(7, member.getAge());
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	// 로그인 메소드
	// - 회원정보가 있는 경우,nick을 반환
	// - 없으면 null을 반환
	public String login(String id, String pw) {
		getConnection();

		try {
			String sql = "SELECT NICK FROM MEMBER WHERE ID=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return null;
	}

	public int delete(MemberDTO dto) {
		int cnt = 0;
		getConnection();
		// 예외상황이 왜 발생하는지?
		// 07/24일 오후 59분
		try {
			String sql = "DELETE FROM MEMBER WHERE ID =? AND PW =?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// try 나 catch둘다 실행해도 여기로 넘어옴.
			close();
		}
		return cnt;

	}

	// 회원정보 수정 기능: *성공 -> 1 반환, *실패 -> 0 반환
	public int update(MemberDTO dto) {
		int cnt = 0;
		getConnection();
		try {
			String sql = "UPDATE MEMBER SET NICK=?, EMAIL=?, PHONE=?, GENDER=?, AGE=? where id = ? AND PW =?";

			psmt = conn.prepareStatement(sql);// sql문을 실행해주고 물음표를 채워줄 객체가 필요함
			// sql문이 이상 없는지 확인하고 돌려줌.
			psmt.setString(1, dto.getNick());
			psmt.setString(2, dto.getEmail());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getGender());
			psmt.setInt(5, dto.getAge());
			psmt.setString(6, dto.getId());
			psmt.setString(7, dto.getPw());
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			// try 나 catch둘다 실행해도 여기로 넘어옴.
			close();
		}
		
		return cnt;

	}
 
	public ArrayList<MemberDTO> select(){
		ArrayList<MemberDTO> list = new ArrayList<>();
		getConnection();
		
		String sql = "SELECT * FROM MEMBER ";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String nick = rs.getString("nick");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String gender = rs.getString("gender");
				int age = rs.getInt("age");
				MemberDTO dto = new MemberDTO(id, pw, nick, email, phone, gender, age);
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
}
