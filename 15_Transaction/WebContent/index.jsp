<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	// 트랜잭션
	
	// 쿼리1과 쿼리2 중 하나가 잘못되면 모든 작업을 rollback 한다.
	// 둘 다 정상적으로 실행되면 commit 한다.
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		/* DB 접속 */
		Context context = new InitialContext();
		DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
		conn = ds.getConnection();
		
		// AutoCommit 끄기
		conn.setAutoCommit(false);
		
		/* 쿼리 실행 */
		// 쿼리문1
		//String sql1 = "INSERT INTO member VALUES('tranx', 'test', '관리자', '40', '남', 'test@email.com')";
		String sql1 = "SELECT * FROM member;";
		// 쿼리문2
		String sql2 = "INSERT INTO member1234 VALUES('tranx', 'test', '관리자', '40', '남', 'test@email.com')"; // 테이블 존재하지 않음. -> Exception 발생
		//String sql2 = "DELETE FROM member WHERE id='id1'"; // 조건 잘못 지정 -> Exception 발생하지 않음
		
		int result;
		// 쿼리문1
		pstmt = conn.prepareStatement(sql1);
		result = pstmt.executeUpdate();
		System.out.println("1번 쿼리 실행!");
		System.out.println("result : " + result);
		pstmt.close();
		// 쿼리문2
		pstmt = conn.prepareStatement(sql2);
		result = pstmt.executeUpdate();
		System.out.println("2번 쿼리 실행!");
		System.out.println("result : " + result);
		
		if(result > 0) {
			conn.commit();
			System.out.println("commit!");
		} 
		// Exception은 발생하지 않았으나 문장이 잘못된 경우
		// ex) DELETE 문에서 조건을 잘못 지정한 경우 Exception은 발생하지 않으나, 결과가 0
		else {
			conn.rollback();
			System.out.println("rollback!");
		}
	} catch (Exception e) {
		e.printStackTrace();
		// Exception 발생 시 rollback		
		conn.rollback();
		System.out.println("rollback!");
	} finally {
		/* 자원 반납 */
		if (rs != null) rs.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
%>