<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	/* 파라미터 값 가져오기 */
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		/* DB 접속 */
		Context context = new InitialContext();
		DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
		conn = ds.getConnection();
		
		/* DB에 데이터 추가 */
		// 쿼리문
		String sql = "INSERT INTO member VALUES(?, ?, ?, ?, ?, ?)";
		
		// PreparedStatement 가져오기
		pstmt = conn.prepareStatement(sql);
		
		// PreparedStatement ?에 값 넣기
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setInt(4, Integer.parseInt(age));
		pstmt.setString(5, gender);
		pstmt.setString(6, email);
		
		// PreparedStatement 실행
		int result = pstmt.executeUpdate();
		
		/* 자원 반납 */
		pstmt.close();
		conn.close();
		
		/* 성공 여부에 따라 index.jsp or signUpForm.jsp 이동 */
		out.print("<script>");
		if (result > 0) { // 성공
			out.print("alert('회원가입 완료');");
			out.print("location.href='index.jsp';");
			//response.sendRedirect("index.jsp");
		} else { // 실패
			out.print("alert('회원가입 실패');");
			out.print("location.href='signUpForm.jsp';");
			//response.sendRedirect("signUpForm.jsp");
		}
		out.print("</script>");
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		/* 자원 닫기 */
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
	
%>
