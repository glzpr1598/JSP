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
    	<!-- 파라미터 가져오기 -->
    	<!-- 기존 방식 -->
    	<%-- <%= request.getParameter("id") %> --%>
    	<!-- EL Tag 사용 -->
        User ID : ${param.id}
        <br/>
        
        <!-- 세션 값 가져오기 -->
        <!-- 기존 방식 -->
        <%-- <%= session.getAttribute("sessionId") %> --%>
        <!-- EL Tag 사용 -->
        session ID : ${sessionScope.sessionId}
    </body>
    <script>
		
    </script>
</html>