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
        <form action="stopPage.jsp" method="post">
        	<table>
       			<!-- 최종 도달할 페이지 주소 -->
        		<input type="hidden" name="forwardPage" value="result.jsp">
        		<tr>
        			<td>이름</td>
        			<td><input type="text" name="name"></td>
        		</tr>
        		<tr>
        			<td>나이</td>
        			<td><input type="text" name="age"></td>
        		</tr>
        		<tr>
        			<td>주소</td>
        			<td><input type="text" name="addr"></td>
        		</tr>
        		<tr>
        			<td colspan="2">
        				<input type="submit" value="전송">
        			</td>
        		</tr>
        	</table>
        </form>
    </body>
    <script>

    </script>
</html>