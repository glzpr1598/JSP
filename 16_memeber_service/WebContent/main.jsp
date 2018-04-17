<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
	String id = (String)session.getAttribute("id"); 
	if (id != null) {
		out.print("로그인 상태");
	} else {
		out.print("로그아웃 상태");
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
        <div class="classLogin">
        	<%= id %>님 반갑습니다. <button>로그아웃</button>
        </div>
        <h1>Main page</h1>
        
        <!-- memberList.jsp 불러오기 -->
        <%-- <%@include file="memberList.jsp" %> --%>
        <jsp:include page="memberList.jsp"></jsp:include>
    </body>
    <script>

    </script>
</html>