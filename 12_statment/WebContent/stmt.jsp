<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	Connection conn = null;
	Statement stmt = null;
	try {
		/* DB 접속 */
		
		// Context 객체화
		Context context = new InitialContext();
		// DataSource 가져오기
		DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
		// Connect 가져오기
		conn = ds.getConnection();
		
		/* 쿼리 */
		
		// 쿼리문 준비
		String sql = "CREATE TABLE member("
				+ "id VARCHAR2(50), "
				+ "pw VARCHAR2(100), "
				+ "name VARCHAR2(50), "
				+ "age NUMBER(4), "
				+ "gender CHAR(4), "
				+ "email VARCHAR2(100))";
		
		// statement 생성
		stmt = conn.createStatement();
		
		// statement로 쿼리 실행(executeUpdate(), executeQuery())
		int result = stmt.executeUpdate(sql);
		// 반환값은 실행된 데이터 수를 의미 -> 테이블 생성은 0 반환
		System.out.println(result);
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		/* 자원 반납 */
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}
	
%>