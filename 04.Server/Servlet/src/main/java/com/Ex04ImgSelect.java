package com;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04ImgSelect
 */
@WebServlet("/Ex04ImgSelect")
public class Ex04ImgSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String select = request.getParameter("select");
		// int snum= Integer.parseInt(select); int쓰고 싶으면 이렇게 쓰기. 문자를 숫자로 바꿔줌.
		System.out.println(select);
		
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out= response.getWriter(); //out객체 생성.
		out.print("<html>");
		out.print("<body>"); //body태그 안에 img태그를 넣어야함.
		String path= "";
		if (select.equals("1")){
			path= "img/11.jpg";
			
		} else if (select.equals("2")) {
			path= "img/222.jpg";
			
		} else if (select.equals("3")){
			path= "img/3333.jpg";
		} else {
			out.print("1,2,3 nono.");
		}
		out.print("<img src= '"+path+"'>");
		out.print("<body>");
		out.print("<html>");
	}

}
