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
    	<!-- application에 저장된 정보는 다른 브라우저로 실행해도 정보가 나타난다. -->
        <h1>application에 저장된 정보</h1>
        <p>아이디 : <%= application.getAttribute("userId") %></p>
        <p>이름 : <%= application.getAttribute("userName") %></p>
        <h1>session에 저장된 정보</h1>
        <p>이메일 : <%= session.getAttribute("userEmail") %></p>
        <p>연락처 : <%= session.getAttribute("userPhone") %></p>
    </body>
    <script>

    </script>
</html>