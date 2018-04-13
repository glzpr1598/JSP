<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            table, tr, td {
            	border: thin solid black;
            	border-collapse: collapse;
            	padding: 5px;
            }
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
    	<!-- Servlet 이용 -->
        <!-- <form action="result.jsp" method="get"> -->
        <!-- JavaScript 이용 -->
        <form action="resultJS.jsp" method="get">
        	<table>
        		<tr>
        			<td>이름</td>
        			<td>
        				<input type="text" name="name">
        			</td>
        		</tr>
        		<tr>
        			<td>성별</td>
        			<td>
        				<input type="radio" name="gender" value="male">남자
        				<input type="radio" name="gender" value="female">여자
        			</td>
        		</tr>
        		<tr>
        			<td>취미</td>
        			<td>
        				<input type="checkbox" name="hobby" value="독서">독서
        				<input type="checkbox" name="hobby" value="게임">게임
        				<input type="checkbox" name="hobby" value="축구">축구
        				<input type="checkbox" name="hobby" value="영화">영화
        			</td>
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