<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//*2.커넥션 연결
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	//*3.SQL문 실행

	String sql = "SELECT ID,NICK,EMAIL,PHONE,GENDER,AGE FROM MEMBER ";
	PreparedStatement psmt = conn.prepareStatement(sql);//sql문을 실행해주고 물음표를 채워줄 객체가 필요함 
	//sql문이 이상 없는지 확인하고 돌려줌.
	ResultSet rs = psmt.executeQuery();//resultset이라는 객체: 표형태로 데이터를 가지고 있는 객체임.
	//테이블에 정보가 없을 때까지 반복함.(커서 이용)
	out.print("<table border = '1'>");
	out.print("<tr> <th>id</th> <th>nick</th> <th>email</th> <th>phone</th> <th>gender</th> <th>age</th> </tr>");
	
	while(rs.next()){
		String id = rs.getString(1);
		String nick = rs.getString(2);
		String email = rs.getString(3);
		String phone = rs.getString(4);
		String gender = rs.getString(5);
		int age = rs.getInt(6);
		
		//System.out.println(id + "/" + nick+"/"+email +"/"+ phone+"/"+ gender+"/"+ age);
		 if(!id.equals("admin")){
			 out.print("<tr>");
			 out.print("<td> "+id + "</td>");
			 out.print("<td> "+nick + "</td>");
			 out.print("<td> "+email + "</td>");
			 out.print("<td> "+phone + "</td>");
			 out.print("<td> "+gender + "</td>");
			 out.print("<td> "+age + "</td>");
			 out.print("</tr>");
		 }
		 
		}// end while
	 out.print("</table>");
			
	
	
	
	
	%>
</body>
</html>