package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05MakeTable
 */
@WebServlet("/Ex05MakeTable")
public class Ex05MakeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String room=request.getParameter("room");
		//room에 있는 숫자만큼 반복시켜야함. 그래서 문자를 숫자형으로 바꿔야함.
		int croom = Integer.parseInt(room);
		
		PrintWriter out = response.getWriter(); // response는 응답객체임.
		
		out.print("<html>");
		out.print("<body>");
		out.print("<table>");
		out.print("<tr>");
		out.print("<table border = '1px solid black'>"); //테두리
		for (int i=1; i<=croom;i++) {
			out.print("<td>");
			out.print(i);
			out.print("</td>");
		}
		
		
		out.print("</tr>");
		out.print("</table>");
		
		out.print("</html>");
		out.print("</body>");	
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
