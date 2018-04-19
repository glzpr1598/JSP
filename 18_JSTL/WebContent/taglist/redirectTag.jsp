<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <%-- 
        특정 페이지로 이동
        <c:redirect url=""></c:redirect>
         --%>
         
         <!-- 파라미터도 삽입 가능 -->
         <c:redirect url="https://www.google.co.kr/">
         </c:redirect>
    </body>
    <script>
		
    </script>
</html>