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
	// Server의 context.xml 객체화
	Context context = new InitialContext();
	
	// Resource 이름으로 데이터를 가져옴(java:comp/env/리소스이름)
	DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle");
	
	// DataSource로 커넥션 가져옴
	Connection conn = ds.getConnection();
	if (conn != null) {
		out.print("<h3>접속에 성공했습니다.<h3>");
	} else {
		out.print("<h3>접속에 실패했습니다.<h3>");
	}

	// 커넥션 닫기
	conn.close();
%>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <!-- DB에서 가져온 데이터 출력 -->
    </body>
    <script>

    </script>
</html>