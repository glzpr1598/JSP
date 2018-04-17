<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	/* ResultSet : 쿼리 결과(SELECT)를 담는 객체 */

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		/* DB 접속 */
		// Context 객체화
		Context context = new InitialContext();
		// DataSource 가져오기
		DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle");
		// Connect 가져오기
		conn = ds.getConnection();

		/* 쿼리 실행 */
		// 쿼리문
		String sql = "SELECT * FROM member";

		// pstmt 가져오기
		pstmt = conn.prepareStatement(sql);

		// 쿼리 실행 -> ResultSet에 담기
		rs = pstmt.executeQuery();

		/* 데이터 추출 */
		// .next() : 커서 다음으로 이동
		while (rs.next()) {
			// 컬럼 인덱스 또는 컬럼명으로 추출 가능
			// 인덱스는 1부터 시작
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			int age = rs.getInt("age");
			String gender = rs.getString("gender");
			String email = rs.getString("email");

			out.print(id + " / " + pw + " / " + name + " / " + age + " / " + gender + " / " + email + "<br>");
		}

		// ResultSetMetaData 객체
		ResultSetMetaData meta = rs.getMetaData();
		out.print("<p>MetaData</p>");
		out.print("컬럼수 : " + meta.getColumnCount() + "<br>");
		for (int i = 1; i <= meta.getColumnCount(); i++) {
			out.print(meta.getColumnName(i) + " " + meta.getColumnTypeName(i) + "("
					+ meta.getColumnDisplaySize(i) + ")<br>");
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		/* 자원 반납 */
		if (rs != null) rs.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
%>