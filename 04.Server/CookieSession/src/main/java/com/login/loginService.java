package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// p.248
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//세션 객체 생성하는 방법
		
		String inputID = request.getParameter("id");
		String inputPW = request.getParameter("pw");
		
		if(inputID.equals("test") && inputPW.equals("12345")) {
			session.setAttribute("id",inputID);
			//서블릿에서 특정 폴더 내에 있는 HTML or JSP파일을 접근할 경우
			// '폴더명/파일명.확장자'로 정의
			response.sendRedirect("ex05_login/main.jsp");
		}else {
			response.sendRedirect("ex05_login/loginForm.html");
		}
		
	}

}
