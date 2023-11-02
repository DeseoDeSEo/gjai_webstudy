package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex07RadioCheckBox
 */
@WebServlet("/Ex07RadioCheckBox")
public class Ex07RadioCheckBox extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String marriage = request.getParameter("marriage");
		// 동일한 name으로 여러개의 데이터를 받는방법
		
		String[] hobby = request.getParameterValues("hobby");
		System.out.println(marriage);
		for(int i = 0; i< hobby.length; i++) {
			System.out.println(hobby[i]);
		}
		
		
	}

}
