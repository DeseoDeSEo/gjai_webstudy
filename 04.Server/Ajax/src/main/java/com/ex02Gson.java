package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class Gson
 */
@WebServlet("/Gson")
public class ex02Gson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// JSON객체생성
		JsonObject jsonObj = new JsonObject();
		// JSON객체에 속성과 값 추가하기
		jsonObj.addProperty("data", "Hello");
		jsonObj.addProperty("data2", "JSON객체생성성공");
		// 만들어진 JSON객체 출력해보기
		System.out.println(jsonObj);
		
		//한글 데이터가 깨지지 않도록 설정 하기
		//응답할 형식을 지정도 가능       이 타입(Mime type)
		response.setContentType("application/json; charset = UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonObj);
	}
}
