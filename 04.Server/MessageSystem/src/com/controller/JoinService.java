package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클라이언트가 보낸 데이터는 request안에 들어있다.
		//JDbc하기 전에, **1. 4개의 데이터 값을 콘솔(이클립스)에 출력
		request.setCharacterEncoding("EUC-KR");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");		
		String addr = request.getParameter("addr");		
//		System.out.println(email+"  " +pw+"  "+phone+"  "+addr);
		//**2.jdbc이용해서  데이터 저장 (=> DAO가 함.!! 하나의 형태로 데이터를 묶어서 보내면 좋음=> DTO!).
		MemberDTO dto = new MemberDTO(email,pw, phone,addr);
//		System.out.println(dto.toString());
		//클래스에 있는거 사용하려면 언제나 '객체생성'
		MemberDAO  dao = new MemberDAO();
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
		}
		else {
			System.out.println("회원가입 실패");
		}
		response.sendRedirect("main.jsp");
		
	}
}
