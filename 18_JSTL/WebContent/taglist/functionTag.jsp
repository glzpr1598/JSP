<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- function 태그는 아래 문장을 추가해야한다. -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	HashMap map = new HashMap();
	map.put("A", 100);
	map.put("B", 200);
	map.put("C", 300);
	map.put("D", 400);
	map.put("E", 500);
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
        <c:set var="map"><%= map %></c:set>
        <c:set var="str1">zer0box 카페, http://cafe.naver.com/goingdeveloper/</c:set>
        <c:set var="str2">카페</c:set>
        <c:set var="tokens">1,2,3,4,5,6,7,8,9,10</c:set>
    </body>
    <script>
		
    </script>
</html>