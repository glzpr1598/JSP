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
    	문자열 분리
        <c:forTokens var=결과 items=대상문자열 delims=구분자>
        	실행문
        </c:forTokens>
         --%>

         <c:set var="text">축구 야구 농구 배구 골프 수영</c:set>
         <c:forTokens var="temp" items="${text}" delims=" ">
         	${temp}<br/>
         </c:forTokens>
         
    </body>
    <script>
		
    </script>
</html>