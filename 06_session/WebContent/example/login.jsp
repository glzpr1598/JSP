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
            	padding: 10px;
            	text-align: center;
            }
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
    	<form action="./loginAction.jsp" method="post">
	        <table>
	        	<tr>
	        		<td>ID</td>
	        		<td><input type="text" name="userId"></td>
	        	</tr>
	        	<tr>
	        		<td>PW</td>
	        		<td><input type="password" name="userPw"></td>
	        	</tr>
	        	<tr>
	        		<td colspan="2"><input type="submit" value="Log In"></td>
	        	</tr>
	        </table>
        </form>
    </body>
    <script>

    </script>
</html>