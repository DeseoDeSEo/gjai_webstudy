package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex06GetPost
 */
@WebServlet("/Ex06GetPost")
public class Ex06GetPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Get방식 메소드 호출");
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Post방식 메소드 호출");
		req.setCharacterEncoding("EUC-KR"); //req에게 문자 인코딩을 넣어달라고 부탁함.
		String post = req.getParameter("post");
		System.out.println(post);
	}//post방식의 인코딩

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	
/*// protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		//Html에서 입력한 데이터들은 전부 request에 들어감.
//		String get = request.getParameter("get");
//		//괄호에 일치하는 name값이 들어가야한다.
//		System.out.println(get);
//		
*///		
		
		
		
		
	}

