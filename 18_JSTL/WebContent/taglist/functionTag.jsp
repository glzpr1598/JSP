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
        
        <h1>Function 태그</h1>
        str1 = zer0box 카페, http://cafe.naver.com/goingdeveloper/<br/>
        str2 = 카페
        
        <p>길이</p>
        *length(map) : ${fn:length(map)}<br/>
        *length(str1) : ${fn:length(str1)}<br/>
        
        <p>대소문자 변경</p>
        toUpperCase(str1) : ${fn:toUpperCase(str1)}<br/>
        toLowerCase(str1) : ${fn:toLowerCase(str1)}<br/>
        
        <p>문자열 추출</p>
        *substring(대상, 시작점, 잘라내기시작점) : ${fn:substring(str1, 12, 49)}<br/>
        substringAfter(str1, str2) : ${fn:substringAfter(str1, str2)}<br/>
        substringBefore(str1, str2) : ${fn:substringBefore(str1, str2)}<br/>
        
        <p>문자열 변경</p>
        *replace(str1, " ", "_") : ${fn:replace(str1, " ", "_")}<br/>
        
        <p>문자열 찾기</p>
        indexOf(str1, str2) : ${fn:indexOf(str1, str2)}<br/> 
        startsWith(str1, "zer") : ${fn:startsWith(str1, "zer")}<br/> <!-- 특정 문자열로 시작하는지 여부 --> 
        endsWith(str1, "goingdeveloper/") : ${fn:endsWith(str1, "goingdeveloper/")}<br/> <!-- 특정 문자열로 끝나는지 여부 -->
        contains(str1, "cafe") : ${fn:contains(str1, "cafe")}<br/> <!-- 특정 문자열 포함 여부 -->
        containsIgnoreCase(str1, "cafe") : ${fn:containsIgnoreCase(str1, "cafe")}<br/> <!-- 대소문자 무시 -->
        
        <p>배열 관련</p>
        <c:set var="tokens">1,2,3,4,5,6,7,8,9,10</c:set>
        <c:set var="arr" value="${fn:split(tokens, ',')}"/>
        join(arr, "&") : ${fn:join(arr, "&")}        
        
    </body>
    <script>
		
    </script>
</html>