<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	/* DB 접속 */
	
	// Context 객체화
	Context context = new InitialContext();
	// DataSource 가져오기
	DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
	// Connect 가져오기
	Connection conn = ds.getConnection();
	if (conn == null) {
		System.out.println("접속 실패");
	}
	
	
	/* 쿼리 */
	// 쿼리문
	String query = "INSERT INTO member(id, pw, name, age, gender, email) VALUES(?,?,?,?,?,?)"; // ? : PreparedStatement에서만 사용가능

	// 쿼리문으로 PreparedStatement 생성	
	PreparedStatement pstmt = conn.prepareStatement(query);
	
	// ?에 값 넣기
	for (int i = 1; i <=5; i++) {
		// 인자 : ? 인덱스, 값
		// 인덱스는 1부터 시작
		pstmt.setString(1, "admin" + i);
		pstmt.setString(2, "pw" + i);
		pstmt.setString(3, "user" + i);
		pstmt.setInt(4, 20 + i);
		pstmt.setString(5, "man");
		pstmt.setString(6, "admin" + i + "@email.com");
		
		// PreparedStatement 실행
		int result = pstmt.executeUpdate();
		if (result != 0) {
			out.print("<h3>" + i + "번 째 데이터 삽입 성공");
		}
	}
	
	/* 자원 반납 */
	pstmt.close();
	conn.close();
	
%>