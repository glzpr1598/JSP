<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            table, tr, th, td {
            	border: thin solid black;
            	border-collapse: collapse;
            	padding: 5px;
            }
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <h3>member table 생성</h3>
        <table>
        	<tr>
        		<th>Field</th>
        		<th>Type</th>
        		<th>Size</th>
        	</tr>
        	<tr>
        		<td>id</td>
        		<td>VARCHAR2</td>
        		<td>50</td>
        	</tr>
        	<tr>
        		<td>pw</td>
        		<td>VARCHAR2</td>
        		<td>100</td>
        	</tr>
        	<tr>
        		<td>name</td>
        		<td>VARCHAR2</td>
        		<td>50</td>
        	</tr>
        	<tr>
        		<td>age</td>
        		<td>NUMBER</td>
        		<td>4</td>
        	</tr>
        	<tr>
        		<td>gender</td>
        		<td>CHAR</td>
        		<td>4</td>
        	</tr>
        	<tr>
        		<td>email</td>
        		<td>VARCHAR2</td>
        		<td>100</td>
        	</tr>
        </table>
        <a href="stmt.jsp">Statement를 이용한 테이블 생성</a>
        <br>
        <a href="pstmt.jsp">PreparedStatement를 이용한 테이블 생성</a>
    </body>
    <script>

    </script>
</html>