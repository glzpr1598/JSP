<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
/* 세션 체크 : 로그인 여부를 확인하여 페이지를 보여주거나 돌려보낸다. */
String userId = (String)session.getAttribute("userId");

if (userId == null) { // 세션 만료(로그아웃)
	response.sendRedirect("login.jsp");
}
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
        <h2><%= userId %>님은 현재 로그인 상태입니다.</h2>
    </body>
    <script>

    </script>
</html>