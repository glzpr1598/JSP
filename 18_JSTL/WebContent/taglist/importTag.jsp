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
        특정 문서 삽입
        <c:import url="" var="" scope="" harEncoding="">
        </c:import>
         --%>
        
        <!-- 내부 페이지 삽입 -->
        <!-- 파라미터도 함께 삽입 가능 -->
        <c:import url="../index.jsp">
        	<c:param name="name1" value="value1"></c:param>
        </c:import>
        
        <!-- 외부 페이지 삽입 -->
        <c:import url="https://www.youtube.com/results?search_query=jsp"></c:import>
        
    </body>
    <script>
		
    </script>
</html>