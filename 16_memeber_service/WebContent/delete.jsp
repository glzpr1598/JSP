<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	// 파라미터 get
	String id = request.getParameter("id");

	/* DB 접속 */
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		Context context = new InitialContext();
		DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
		conn = ds.getConnection();
		
		/* 쿼리 실행 */
		String sql = "DELETE FROM member WHERE id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		int result = pstmt.executeUpdate();
		
		out.print("<script>");
		if (result > 0) { // 성공
			out.print("alert('삭제 성공');");
		} else { // 실패
			out.print("alert('삭제 실패');");
		}
		out.print("location.href='main.jsp';</script>");
		
	} catch (Exception e) {
		e.printStackTrace();
		pstmt.close();
		conn.close();
	} finally {
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
	
	
%>
