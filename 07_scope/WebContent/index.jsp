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
    	<form action="application.jsp" method="post">
	    	<h3>application에 저장할 내용</h3>
	        아이디 : <input type="text" name="userId">
	        이름 : <input type="text" name="userName">
	        <input type="submit" value="전송">
        </form>
    </body>
    <script>

    </script>
</html>