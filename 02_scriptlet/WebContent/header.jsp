<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 자바의 변수 및 메서드 선언 -->
<%! 
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
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
        <div class="header">
           	<!-- 현재 시간 출력 -->
        	현재 시간은 <%= hour %>시 <%= minute %>분 <%= second %>초입니다.
        	<!-- 오전, 오후 표시 -->
	        <% if (hour >= 12) { %>
	            오후입니다.
	        <% } else { %>
	        	오전입니다.
	        <% } %>
        </div>
    </body>
    <script>

    </script>
</html>