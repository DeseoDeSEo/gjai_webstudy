package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.MessageDAO;
import com.model.MessageDTO;

@WebServlet("/MsgSendService")
public class MsgSendService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		String send_name = request.getParameter("send_name");
		String receive_email = request.getParameter("receive_email");
		String content = request.getParameter("content");
		MessageDTO dto = new MessageDTO(send_name, receive_email, content);
		System.out.println(dto.toString());
		MessageDAO dao = new MessageDAO();

		int cnt = dao.send(dto);
		String msg = "";
		if (cnt > 0) {
			msg = "메세지 전송 성공";
			
		} else {
			msg = "메세지 전송 실패...";
		}
		//응답 객체 인코딩
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out= response.getWriter();

		out.print("<script>");
		//문자표시
		out.print("alert('" + msg + "');");
		//java script에서 이동하는 방법
		//아이디 선택자 #
		out.print("location.href = 'main.jsp#two';");
		
		out.print("</script>");
	}

}
