<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String[] sports = {"축구", "야구", "농구", "골프", "수영", "볼링"};

	HashMap map = new HashMap();
	map.put("name", "Kim");
	map.put("mobile", "010-1234-5678");
	map.put("addr", "Seoul");
%>
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
        <c:forEach var=변수명 items=대상아이템 begin=시작 end=끝 step=증가>
        	실행문
        </c:forEach>
         --%>
        
        <h2>1~100까지의 합</h2>
        <c:set var="sum">0</c:set>
        <c:forEach var="i" begin="1" end="100">
        	<c:set var="sum" value="${sum+i}"/>
        </c:forEach>
        ${sum}
        
        <h2>1~10 출력</h2>
        <c:forEach var="i" begin="1" end="10">
        	${i}<br/>
        </c:forEach>
        
        <h3>배열 값 꺼내오기</h3>
        <c:forEach var="temp" items="<%= sports %>" begin="1" end="3">
        	${temp}<br/>
        </c:forEach>
        
        <h3>HashMap 값 꺼내오기</h3>
        <c:forEach var="temp" items="<%= map %>">
        	${temp.key} : ${temp.value}<br/>
        </c:forEach>
        
    </body>
    <script>
		
    </script>
</html>