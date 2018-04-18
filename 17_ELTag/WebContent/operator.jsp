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
        <ul>
        	<li>\${12 + 5} = ${12 + 5}</li> <!-- escape(\) 문자 : 연산자 무시 -->
        	<li>\${12 - 5} = ${12 - 5}</li>
        	<li>\${12 * 5} = ${12 * 5}</li>
        	<li>\${12 / 5} = ${12 / 5}</li>
        	<li>\${12 % 5} = ${12 % 5}</li>
        </ul>
        <ul>
        	<li>\${12 == 5} = ${12 == 5}</li>
        	<%-- <li>\${12 ne 5} = ${12 eq 5}</li> --%> <!-- 에러표시 나서 주석처리 -->
        	<li>\${12 != 5} = ${12 != 5}</li>
        	<%-- <li>\${12 ne 5} = ${12 ne 5}</li> --%>
        	<li>\${12 < 5} = ${12 < 5}</li>
        	<li>\${12 lt 5} = ${12 lt 5}</li>
        	<li>\${12 > 5} = ${12 > 5}</li>
        	<li>\${12 gt 5} = ${12 gt 5}</li>
        	<li>\${12 >= 5} = ${12 >= 5}</li>
        	<li>\${12 le 5} = ${12 le 5}</li>
        	<li>\${12 <= 5} = ${12 <= 5}</li>
        	<li>\${12 ge 5} = ${12 ge 5}</li>
        	<li>\${12 + 5 == 17 ? 1 : 0} = ${12 + 5 == 17 ? 1 : 0}</li>
        </ul>
    </body>
    <script>
		
    </script>
</html>