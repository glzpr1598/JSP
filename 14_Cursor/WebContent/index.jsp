<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		/* DB 접속 */
		// Context 객체화
		Context context = new InitialContext();
		// DataSource 가져오기
		DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
		// Connection 가져오기
		conn = ds.getConnection();
		
		/* 쿼리 실행 */
		// 쿼리문
		String sql = "SELECT * FROM member";
		
		// PreparedStatement 생성
		pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
		/* 
		prepareStatement(sql, [resultSetType], [resultSetConcurrency])
		resultSetType 옵션
		ResultSet.TYPE_FORWARD_ONLY : 커서 이동이 앞으로만 진행
		ResultSet.TYPE_SCROLL_SENSITIVE : 커서 이동이 자유롭고, 업데이트 내용 반영
		ResultSet.TYPE_SCROLL_INSENSITIVE : 커서 이동이 자유롭고, 업데이트 내용 반영 안함
		
		resultSetConcurrency 옵션
		CONCUR_UPDATABLE : 데이터 변경이 가능
		CONCUR_READ_ONLY : 데이터 읽기만 가능
		*/
		
		// ResultSet
		rs = pstmt.executeQuery();
		
		/* 데이터 추출 */
		// 첫번째 데이터
		rs.first();
		out.print("첫번째 : " + rs.getString("id") + " | " + rs.getString("name") + "<br>");
		// 마지막 데이터
		rs.last();
		out.print("마지막 : " + rs.getString("id") + " | " + rs.getString("name") + "<br>");
		// 3번째
		rs.absolute(3);
		out.print("3번째 : " + rs.getString("id") + " | " + rs.getString("name") + "<br>");
		// 앞
		rs.previous();
		out.print("앞 : " + rs.getString("id") + " | " + rs.getString("name") + "<br>");
		// 뒤
		rs.next();
		out.print("뒤 : " + rs.getString("id") + " | " + rs.getString("name") + "<br>");
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		/* 자원 반납 */
		if (rs != null) rs.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}

%>