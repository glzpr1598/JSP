<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            table, tr, td {
            	border: thin solid black;
            	border-collapse: collapse;
            	padding: 5px;
            	text-align: center;
            }
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
    <!-- 값을 다 받아올 수 있는가? -->
    <!-- 표시되는 주소는 어떻게 나오는가? -->
        <form action="" method="post">
        	<table>
        		<tr>
        			<td>이름</td>
        			<td><%= request.getParameter("name") %></td>
        		</tr>
        		<tr>
        			<td>나이</td>
        			<td><%= request.getParameter("age") %></td>
        		</tr>
        		<tr>
        			<td>주소</td>
        			<td><%= request.getParameter("addr") %></td>
        		</tr>
        		<tr>
        			<td>전화번호</td>
        			<td><%= request.getParameter("tel") %></td>
        		</tr>
        	</table>
        </form>
    </body>
    <script>

    </script>
</html>