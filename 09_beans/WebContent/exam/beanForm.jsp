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
        <!-- beanProc.jsp로 데이터 전송 -->
        <form action="beanProc.jsp" method="get">
        	이름 : <input type="text" name="name"/>
        	<button>전송</button> <!-- button 태그가 form안에 있으면 submit 역할을 함 -->
        </form>
    </body>
    <script>

    </script>
</html>