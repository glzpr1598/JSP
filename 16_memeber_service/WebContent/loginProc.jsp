<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	/* 파라미터 가져오기 */
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		/* DB 접속 */
		Context context = new InitialContext();
		DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
		conn = ds.getConnection();
		
		/* 쿼리 실행 */
		// 쿼리문
		String sql = "SELECT * FROM member WHERE id=? AND pw=?";
		// PreparedStatement 가져오기
		pstmt = conn.prepareStatement(sql);
		// ?에 값 넣기
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		// pstmt 실행, ResultSet에 담기
		rs = pstmt.executeQuery();

		/* ResultSet 확인 */
		boolean result = rs.next(); // 있으면 true

		/* 자원 반납 */
		rs.close();
		pstmt.close();
		conn.close();

		out.print("<script>");
		if (result) { // 로그인 성공
			/* session에 id 값 추가 */
			session.setAttribute("id", id);
		
			/* 페이지 이동 */
			out.print("alert('로그인 성공');");
			out.print("location.href='main.jsp';");
		} else { // 로그인 실패
			/* 페이지 이동 */
			out.print("alert('로그인 실패');");
			out.print("location.href='index.jsp';");
		}
		out.print("</script>");

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		/* 자원 반납 */
		if (rs != null) rs.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
		
		/* 페이지 이동 */
		out.print("<script>alert('접속 실패');");
		out.print("location.href='index.jsp';</script>");
	}
%>