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
    	<h3>언어를 선택해 주세요.</h3>
        <form action="cookieSet.jsp" method="post">
        	<input type="radio" name="lang" value="한국어">한국어
        	<input type="radio" name="lang" value="English">English
        	<br>
        	<input type="submit" value="전송">
        </form>
    </body>
    <script>

    </script>
</html>