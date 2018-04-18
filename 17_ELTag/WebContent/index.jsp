<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
	session.setAttribute("sessionId", session.getId());
%>
<!-- EL Tag는 scriptlet의 불편함을 줄이기 위한 태그이다.(JSP에서 자체 지원) -->
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <form action="result.jsp" method="post">
        	ID <input type="text" name="id"/>
        	<input type="submit" value="전송"/>
        </form>
        <br/>
        <button id="btn1">연산</button>
    </body>
    <script>
		$("#btn1").click(function() {
			location.href="operator.jsp";
		});
    </script>
</html>