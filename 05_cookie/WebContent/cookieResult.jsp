<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request 객체를 통해 쿠키를 가져온다.
	Cookie[] cookies = request.getCookies();
	// 쿠키를 하나씩 가져옴.
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
        <% for (Cookie temp : cookies) { %>
        		<h3>쿠키 이름 : <%= temp.getName() %></h3>
        		<h3>쿠키 값 : <%= temp.getValue() %></h3>
        <% } %>
    </body>
    <script>

    </script>
</html>