<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	session.setAttribute("myId", "admin");
	session.setAttribute("uId", "105784");
%>
<%
	/* 
	set 태그 : 페이지 내에서 EL  태그로 사용할 수 있는 변수 생성
	<c:set var=변수명 vlaue=값 [scope=영역]/>
	<c:set var=변수명 [scope=영역]>값</c:set> 
	*/
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
        <h3>set tag option</h3>
        <ul>
        	<li>var : EL에서 사용할 변수명</li>
        	<li>value : 변수에 담을 값</li>
        	<li>scope : 변수 저장 영역(*page, request, session, application)</li>
        </ul>
        <!-- 방법 1 -->
       	<c:set var="name1" value="test" scope="page"/>
        <c:set var="name2" value="${sessionScope.myId}"/>
        <c:set var="name3" value="${sessionScope.myId}_${sessionScope.uId}"/>
        <!-- 방법 2 -->
        <c:set var="name4">test</c:set>
        <c:set var="name5">${sessionScope.myId}</c:set>
        <c:set var="name6">${sessionScope.myId}_${sessionScope.uId}</c:set>
       	<h3>변수 표현</h3>
       	<ul>
       		<li>name 1 : ${name1}</li>
       		<li>name 2 : ${name2}</li>
       		<li>name 3 : ${name3}</li>
       		<li>name 4 : ${name4}</li>
       		<li>name 5 : ${name5}</li>
       		<li>name 6 : ${name6}</li>
       	</ul>
    </body>
    <script>
		
    </script>
</html>