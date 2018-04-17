<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	/* DB 연결 */
	// DBCP를 이용하여 DB 접속 정보를 Server의 context.xml에 저장해놓고 불러 쓸 수 있다.
	// 11_DBCP 프로젝트 참고
	
	Connection conn = null;
 	try {
		// DB 접속 정보 준비(id, pw, ip)
		String user = "web_user";
		String password = "pass";
		String url = "jdbc:oracle:thin:@localhost:1521:xe"; // DB 종류마다 다름
		
		// 라이브러리 드라이버(JDBC) 로드
		Class.forName("oracle.jdbc.driver.OracleDriver"); // DB 종류마다 다름
		
		// 드라이브 매니저를 통해 url로부터 커넥션을 가져옴
		conn = DriverManager.getConnection(url, user, password);
		
		out.print("<h3>접속에 성공했습니다.<h3>");
		
	} catch (Exception e) {
		out.print("<h3>접속에 실패했습니다.<h3>");
	} finally {
		// 커넥션 닫기
		if (conn != null) conn.close();
	}
	
%>
