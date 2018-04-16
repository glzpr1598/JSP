<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <h1>로그인 성공</h1>
        <h3><%= session.getAttribute("userId") %>님 반갑습니다.</h3>
        <button id="btn1">로그아웃</button>
        <br>
        <a href="loginChk.jsp">로그인 상태에서 들어갈 수 있는 페이지</a>
    </body>
    <script>
		$("#btn1").click(function() {
			location.href="logout.jsp";
		});
    </script>
</html>