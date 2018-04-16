<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!-- bean의 데이터를 가져옴 -->
<jsp:useBean id="firstBean" class="com.beans.FirstBean" scope="session"></jsp:useBean>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
    	<!-- scriptlet 방식 -->
        Bean value : <%= firstBean.getName() %>
        <hr>
        <!-- action 태그 방식 -->
        Bean value : <jsp:getProperty property="name" name="firstBean"/>
    </body>
    <script>

    </script>
</html>