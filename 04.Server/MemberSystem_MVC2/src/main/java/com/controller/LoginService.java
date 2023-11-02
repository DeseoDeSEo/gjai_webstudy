package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사용자가 입력한 id, pw가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = null;
		//id, pw를 이용해서 데이터 베이스 조회하기
		//회원데이터가 있다면 nick데이터 가져오기.
		MemberDAO dao = new MemberDAO();
		nick = dao.login(id, pw);
		
		if(nick != null) {
			nick = URLEncoder.encode(nick, "EUC-KR");
			response.sendRedirect("loginSuccess.jsp?nick=" + nick);
		}
		else {
			response.sendRedirect("login.jsp");
		}
		// 앨리스 07월 24일 12:39 그림 ! 03시간 30분쯤.
		// 이렇게 하는 이유는 servlet으로 바꿀필요가 없음. 그래서 편함. 
		//memberDao를 만든이유 : 똑같은 코드를 중복 제거. db관련 일 다 함. 분리해놓음.jdbc 역할을 함. 
		//MemberDto는 VO임. Value object임. :정보를 저장하기 위해서. 7가지 데이터를 다 묶을 타입이 필요해서.
		//view에서 보여줌.
		// jsp랑 view는 보여주는 역할임. servlet은 리모콘 또는 종업원 같은 역할임. 가운데서 control. 그래서 이름이 controller
		// MemberDao는 model이라고 함. 그래서 MVC임. 
	}
}
