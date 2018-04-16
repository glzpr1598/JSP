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
    	<%-- action tag : <jsp:*> --%>
    	<!-- Spring으로 대체 가능하기 때문에 주로 사용하지는 않음 -->
        <a href="forward/forwardForm.jsp">forward</a>
        <a href="include/main.jsp">include</a>
        <a href="#">userBean</a> <!-- 뒤에서 다룰 예정 -->
        <a href="#">plugIn</a> <!-- 현재 사용 안함 -->
    </body>
    <script>

    </script>
</html>