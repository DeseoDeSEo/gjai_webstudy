package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08Join
 */
@WebServlet("/Ex08Join")
public class Ex08Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String NAME = request.getParameter("NAME");
		String EMAIL = request.getParameter("EMAIL");
		String TEL = request.getParameter("TEL");
		String GENDER = request.getParameter("GENDER");
		String HOBBY[] = request.getParameterValues("HOBBY");
		String BIRTHDAY = request.getParameter("BIRTHDAY");
		String COLOR = request.getParameter("COLOR");
		String COUNTRY = request.getParameter("COUNTRY");
		String textA[] = request.getParameterValues("textA");
		
		PrintWriter out= response.getWriter();
		out.print("<html>");
		out.print("<body>");
		
		out.println("ID :");
		out.println(ID);
		out.println("<br>");
		
		out.println(PW);
		out.println("<br>");
		out.println("NAME :");
		out.println(NAME);
		out.println("<br>");
		out.println("EMAIL :");
		out.println(EMAIL);
		out.println("<br>");
		out.println("TEL :");
		out.println(TEL);
		out.println("<br>");
		out.println("GENDER :");
		out.println(GENDER);
		out.println("<br>");
		out.println("HOBBY :");
		for(int i=0; i<HOBBY.length;i++) {
				out.println(HOBBY[i]);
			}
		out.println("<br>");
		out.println("BIRTH :");
		out.println(BIRTHDAY);
		out.println("<br>");
		
		out.println("COLOR :");
		out.println(COLOR);
		out.println("<br>");
		
		out.println("COUNTRY :");
		out.println(COUNTRY);
		out.println("<br>");
		
		out.println("TALK :");
		for(int i =0;i<textA.length;i++) {
			out.println(textA[i]);
		}
		out.println("<br>");
		out.print("</body>");
		out.println("<br>");
		out.print("</html>");
		
	}

}
