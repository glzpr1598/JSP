<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL을 사용하기 위해 로드(라이브러리가 추가되어 있어야함)
	Apach taglibs에서 Impl, Spec, EL 라이브러리 추가 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h3>JSTL 태그 사용법</h3>
        <ul>
        	<li><a href="taglist/setTag.jsp">c:set</a></li>
        	<li><a href="taglist/ifTag.jsp">c:if</a></li>
        	<li>c:choose
        		<form action="taglist/chooseTag.jsp">
        			<input type="text" name="num"/>
        			<input type="submit" value="전송"/>
       			</form>
        	</li>
        	<li><a href="taglist/forEachTag.jsp">c:forEach</a></li>
        	<li><a href="taglist/forTokens.jsp">c:forTokens</a></li>
        	<li><a href="taglist/importTag.jsp">c:import</a></li>
        	<li><a href="taglist/">c:url</a></li>
        	<li><a href="taglist/redirectTag.jsp">c:redirect</a></li>
        	<li><a href="taglist/">c:catch</a></li>
        	<li><a href="taglist/">c:out</a></li>
        	<li><a href="taglist/functionTag.jsp">function tag</a></li>
        </ul>
    </body>
    <script>
		
    </script>
</html>