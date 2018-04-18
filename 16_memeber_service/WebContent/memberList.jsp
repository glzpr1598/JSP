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
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		/* DB 접속 */
		Context context = new InitialContext();
		DataSource ds = (DataSource)context.lookup("java:/comp/env/jdbc/Oracle");
		conn = ds.getConnection();
		
		/* 쿼리 실행 */
		String sql = "SELECT * FROM member";
		pstmt = conn.prepareStatement(sql);
		
		/* ResultSet 가져오기 */
		rs = pstmt.executeQuery();
		
	} catch (Exception e) {
		e.printStackTrace();
		/* 자원 반납 */
		if (rs !=null) rs.close();
		if (pstmt != null) pstmt.close();
		if (pstmt != null) conn.close();
	}
%>
<style>
	table, tr, td {
		border: thin solid black;
		border-collapse: collapse;
		padding: 5px;
	}
</style>
<table id="table1">
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>나이</td>
		<td>성별</td>
		<td>이메일</td>
		<td></td>
	</tr>
	<% while (rs.next()) { %>
			<tr>
				<td><%= rs.getString("id") %></td>
				<td><%= rs.getString("pw") %></td>
				<td><%= rs.getString("name") %></td>
				<td><%= rs.getInt("age") %></td>
				<td><%= rs.getString("gender") %></td>
				<td><%= rs.getString("email") %></td>
				<form action="delete.jsp" method="post">
				<td>
					
						<input type="hidden" name="id" value="<%= rs.getString("id") %>">
						<input type="submit" value="삭제">
					
				</td>
				</form>
				<!-- form을 쓰지 않고 href를 get방식으로 보내는 방법도 있음. -->
				<%-- <td><a href="delete.jsp?id=<%= rs.getString("id") %>">삭제</a></td> --%>
			</tr>
	<%}	%>
</table>
<%
	/* 자원 반납 */
	if (rs !=null) rs.close();
	if (pstmt != null) pstmt.close();
	if (pstmt != null) conn.close();
%>