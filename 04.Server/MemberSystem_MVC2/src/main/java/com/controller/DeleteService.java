package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//dto로 데이터 묶어서 보냄.
		MemberDTO  dto = new MemberDTO(id,pw);
		
		//JDBC를 사용하는 기능 전부 dao가 처리
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(dto);
		
		//삭제 여부를cnt로 받음
		if (cnt > 0) {
			//jsp는 out객체가 내장 되어있어서 쓸 수 있는데 java는 객체 생성해야함.
			response.sendRedirect("main.jsp");
			//p.196 쿼리스트링 방식
		}
		//로그인 실패시 -> login.jsp 
		else {
			response.sendRedirect("delete.jsp");
		}
	
		
		
		
		
		
		
		
	}

}
