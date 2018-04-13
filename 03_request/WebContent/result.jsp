<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 한글이 안깨지게 나오려면 인코딩 설정 해줘야함 -->
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
        <h1>서버에서 받은 내용</h1>
        <!-- 값 가져오기 : request.getParameter -->
        <p>이름 : <%= request.getParameter("name") %></p>
        <p>성별 : 
	        <% if (request.getParameter("gender").equals("male")) { %>
	        	남자
	       	<% } else { %>
	        	여자
	        <% } %>
        </p>
        <!-- 여러개의 값 가져오기(checkbox) : request.getParameterValues -->
        <p>취미 : 
        	<%
        	String[] arrHobby = request.getParameterValues("hobby");
        	for (String temp : arrHobby) { 
        	%>
        		<%= temp %>
        	<% } %>
        </p>
        
        <h1>그밖의 정보</h1>
        <p>sever name : <%= request.getServerName() %></p>
        <p>sever port : <%= request.getServerPort() %></p>
        <p>request URI : <%= request.getRequestURI() %></p>
        <p>request URL : <%= request.getRequestURL() %></p>
        <p>query string : <%= request.getQueryString() %></p>
        <!-- IPv6로 표시 -->
        <!-- IPv4로 표시하려면 Run configurations - Arguments - VM arguments 마지막에
        -Djava.net.preferIPv4Stack=true 추가 -->
        <p>remote addr(IP) : <%= request.getRemoteAddr() %></p>
        
    </body>
    <script>

    </script>
</html>