<!-- @는 페이지 속성을 정의 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            div.header {
            	background-color: yellow;
            }
            
            div.footer {
            	background-color: aqua;
            }
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
    	<!-- 파일 링크 걸기 -->
    	<!-- <a href="./header.jsp">현재시간</a> -->
    	
    	<!-- 파일 삽입하기 -->
    	<%@ include file="header.jsp" %>
    	
        <h1>1부터 10까지 출력</h1>
        <% for (int i = 1; i <= 10; i++) { %> <!-- 자바 영역 -->
        	<%= i %> <!-- 출력문 -->
        	<br>
        <% } %>
        
        <%@ include file="footer.jsp" %>
    </body>
    <script>

    </script>
</html>