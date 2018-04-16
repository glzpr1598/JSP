<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    	<!-- 이 페이지는 불러오는 기능만 수행 -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <jsp:include page="body.jsp">
        	<jsp:param value="my content" name="msg"/>
        </jsp:include>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script>

    </script>
</html>