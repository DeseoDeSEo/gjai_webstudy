package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO {
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
	public int send(MessageDTO dto) {
		int cnt = 0;
		// memberdto는 객체로 회원정보를 가지고 있음. memberdto로부터 정보 받음.
		getConnection();
		// 조회만 하면 쿼리 사용.
		try {
			String sql = "INSERT INTO MESSAGE VALUES(MSG_NUM.NEXTVAL,?,?,?,SYSDATE)";
			psmt = conn.prepareStatement(sql);
			//email이 private이니까 get을 사용함.
			psmt.setString(1, dto.getSend_name());
			psmt.setString(2, dto.getReceive_email());
			psmt.setString(3, dto.getContent());
			//실행한 문장의 개수를 반환함. 1은 1명의 정보를 실행해서 저장함.
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<MessageDTO> select(String email){
		ArrayList<MessageDTO> list = new ArrayList<>();
		getConnection();
		
		String sql = "SELECT * FROM MESSAGE WHERE receive_email =? ORDER BY SEND_DATE DESC";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			while(rs.next()) {
				//rs.next가 false가 나올때 까지 실행됨.
				int num = rs.getInt("num");
				String send_name = rs.getString("send_name");
				String receive_email = rs.getString("receive_email");
				String content= rs.getString("content");
				String send_date= rs.getString("send_date");	
				
				MessageDTO dto = new MessageDTO(num, send_name, receive_email,content, send_date);
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return list;
	}

	public void allDelete(String email) {
		getConnection();
		String sql = "DELETE FROM MESSAGE WHERE RECEIVE_EMAIL = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	public void delete(int ch_num) {
		getConnection();
		
		String sql = "DELETE FROM MESSAGE WHERE NUM = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, ch_num);
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
}

