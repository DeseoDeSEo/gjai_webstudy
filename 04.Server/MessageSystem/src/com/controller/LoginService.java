package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 07/26
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(email, pw);
		MemberDAO dao = new MemberDAO();
		//DTO에서 데이터 받아서 info라는 객체 생성
		MemberDTO info = dao.login(dto);
		if(info != null) {
			System.out.println("로그인 성공");
			System.out.println(info.toString());
			//세션에 로그인 정보 저장.(세션=서버에 있는 영역)
			//세션은 목욕탕 라커룸처럼 각각 다른위치에 할당함.
			//라커룸 열쇠 = 쿠키의 JSESSION ID(?!).
			//브라우저 종료할때, 세션도 닫힘.
			HttpSession session = request.getSession();
			//세션에 저장함.
			session.setAttribute("info", info);
			
		}else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("main.jsp");
		
		
		
	}

}
