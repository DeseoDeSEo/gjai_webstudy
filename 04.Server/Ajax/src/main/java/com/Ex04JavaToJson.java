package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.CoffeeDTO;

/**
 * Servlet implementation class Ex04JavaToJson
 */
@WebServlet("/JavaToJson")
public class Ex04JavaToJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//5개ArrayList<E>보관하는 ArrayList를 생성
		ArrayList<CoffeeDTO> list = new ArrayList<>();
		list.add(new CoffeeDTO("씨솔트 카라멜 콜드 브루",3800,"S"));
		list.add(new CoffeeDTO("그린티프라푸치노",2600,"L"));
		list.add(new CoffeeDTO("바닐라 크림 콜드 브루",2700,"S"));
		list.add(new CoffeeDTO("초코 타로 밀크티",1600,"M"));
		list.add(new CoffeeDTO("콜드브루 라떼",3400,"T"));
		//Java객체 -> JSon 데이터로 변환
		Gson gson = new Gson();
		String jsonArr = gson.toJson(list);
//		System.out.println(jsonArr);
		
		 response.setContentType("application/json; charset=UTF-8");
		 PrintWriter out= response.getWriter();
		 out.print(jsonArr);
			
		
		
	}

}
