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
        
    </body>
    <script>
    	// JavaScript에서도 Servlet을 이용할 수 있다.
		var name = "<%= request.getParameter("name") %>"; 
		// ""를 쓰지 않으면 변수로 인식
		var gender = "<%= request.getParameter("gender") %>";
		var hobby = [];
		<%
		String[] arrHobby = request.getParameterValues("hobby");
    	for (String temp : arrHobby) { %>
    		hobby.push("<%= temp %>");
    	<% } %>
    </script>
</html>