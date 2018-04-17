<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	/* DB 연결 */
	Connection conn = null;
	try {
		// Context 객체화
		Context context = new InitialContext();
		// DataSource 가져오기
		DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
		// Connect 가져오기
		conn = ds.getConnection();
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		// 커넥션 닫기
		if (conn != null) conn.close();
	}
%>
