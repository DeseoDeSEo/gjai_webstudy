package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01Mypage
 */
@WebServlet("/Ex01Mypage")
public class Ex01Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//ctrl + f11  > save > click > finish
		System.out.println("Hello World!!"); //console창에 프린트 됨!
		//페이지 요청한 client의 id획득
		request.getRemoteAddr();
		//응답 객체에 인코딩을 먼저 적용해야함.
		response.setCharacterEncoding("EUC-KR");
		String ip = request.getRemoteAddr();
		System.out.println(ip);
		// Web page에서 Text 및 Tag를 사용하기 위해서는 out객체가 필요함
		PrintWriter out= response.getWriter();
		out.print("<html>");
		out.print("<body>");
			if (ip.equals("192.168.0.107")) {
				out.print("<h1>햇님햇님 환영환영.</h1>");
				out.print("<img src ='baila.gif'>");
				out.print("<img src ='fly.gif' >");
				out.print("<img src ='img.jpg'>");
				}
			else if (ip.equals("192.168.0.59")) {
				out.print("<h1>선생님 환영환영</h1>");
				out.print("<img src ='baila.gif'>");
				out.print("<img src ='fly.gif' >");
				}
			else {
				out.print("<img src ='img.jpg'>");
				out.print("<h1>누구세용?</h1>");
				out.print("<img src ='baila.gif'>");
				
				}
//		out.print("<h1> "+ ip+ "반갑다 </h1>");
		
		out.print("<body>");
		out.print("<html>");
		
		
		
		
	}

}
