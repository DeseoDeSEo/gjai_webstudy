package com;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex03Input
 */
@WebServlet("/Ex03Input")
public class Ex03Input extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//ex03 input.html에서 작성 text값을 console에 출력
		//html 빈칸에서 안녕 제출하면 servlet으로 전송됨.
		//html에서 요청 또는 다른 변화가 생기면 servㅣet에 요청됨.
		String talk =request.getParameter("talk"); //html에서 입력값 반환해줌.
		System.out.println(talk);
	}

}
