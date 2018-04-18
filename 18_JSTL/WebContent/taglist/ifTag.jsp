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
    	<c:if test=조건 var=변수명(test결과(true, false) 저장)>
    		실행문
    	</c:if> --%>
    	<c:if test="true">true일 경우 실행<br/></c:if>
    	<c:if test="false">false일 경우 실행안됨<br/></c:if>
    	
    	<c:set var="myId">${sessionScope.myId}</c:set>
    	<c:if test="${myId == 'admin'}">
    		myId : ${myId}<br/>
    	</c:if>
    	
    	<c:set var="flag" value="true"/>
    	<c:if test="${flag}" var="ifTest">
    		결과 : ${ifTest}
    	</c:if>
    </body>
    <script>
		
    </script>
</html>