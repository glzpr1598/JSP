<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키를 가져온다.
	Cookie[] cookies = request.getCookies();
	// 원하는 쿠키에서 값을 뽑는다.
	String name = "";
	String value = "";
	for (Cookie temp : cookies) {
		if (temp.getName().equals("lang")) {
			name = temp.getName();
			value = temp.getValue();
			// 현재 쿠키 삭제
			temp.setMaxAge(0);
			response.addCookie(temp);
		}
	}
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
        <h1>선택한 언어</h1>
        <h3><%= value %></h3>
    </body>
    <script>

    </script>
</html>