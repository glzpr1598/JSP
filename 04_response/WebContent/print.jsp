<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <!-- 출력하는 방법 : out, response, servlet -->
        <%
        int num = 100;
        
        // out 객체 이용
        out.print("<h3>out 객체를 이용한 출력</h3>");
        out.print("<p>" + num + "</p>");
        
        // response 객체 이용
        response.getWriter().write("<h3>response 객체를 이용한 출력</h3>");
        response.getWriter().write("<p>" + num + "</p>");
        %>
        
        <!-- servlet 이용 -->
        <h3>servlet을 이용한 출력</h3>
        <p><%= num %></p>
    </body>
    <script>
		
    </script>
</html>