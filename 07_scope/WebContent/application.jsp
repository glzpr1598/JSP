<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	/* request로부터 값을 받아서 application에 넣는다. */
	/* application은 session보다 더 넓은 단위이다. -> 서버를 닫기 전까지 계속 유지
	브라우저를 닫고 다른 브라우저로 열어도 정보가 유지된다.*/
	// 값 가져오기
	String userId = request.getParameter("userId");
	String userName = request.getParameter("userName");
	// application에 넣기
	application.setAttribute("userId", userId);
	application.setAttribute("userName", userName);
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
    	<h3><%= userName %>님의 아이디는 <%= userId %>입니다.</h3>
        <form action="session.jsp" method="post">
	    	<h3>session에 저장할 내용</h3>
	        이메일 : <input type="text" name="userEmail">
	        연락처 : <input type="text" name="userPhone">
	        <input type="submit" value="전송">
        </form>
    </body>
    <script>

    </script>
</html>