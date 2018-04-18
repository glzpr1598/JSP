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
        c:choose문은 Java의 switch문과 비슷
        <c:choose> <!-- switch -->
        	<c:when test=조건1>실행문1</c:when> <!-- case -->
        	<c:when test=조건2>실행문2</c:when> <!-- case -->
        	<c:otherwise>실행문</c:otherwise> <!-- default -->
        </c:choose>
         --%>
         
		<%-- ${param.num} --%>
        <!-- choose문 -->
        <c:choose>
		 	<c:when test="${param.num == '0'}">
		 		파라미터 값은 0입니다.
		 	</c:when>
		 	<c:when test="${param.num == '1'}">
		 		파라미터 값은 1입니다.
		 	</c:when>
		 	<c:when test="${param.num == '2'}">
		 		파라미터 값은 2입니다.
		 	</c:when>
		 	<c:otherwise>
		 		0~2 사이의 값을 입력하세요.
		 	</c:otherwise>
        </c:choose>
    </body>
    <script>
		
    </script>
</html>