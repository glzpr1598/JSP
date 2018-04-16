<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 모델1 : scriptlet 방식에서 데이터를 bean을 사용하여 분리한 모델 -->

<!-- id : bean 호출 시 아이디, class : bean의 위치, scope : 사용 영역(request, page, session, application) -->
<jsp:useBean id="firstBean" class="com.beans.FirstBean" scope="page"></jsp:useBean>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
    </head>
    <body>
        <h2>JavaBean 사용 예제</h2>
        <h3><%= firstBean.getName() %></h3>
        <a href="exam/beanForm.jsp">다른 방식</a>
    </body>
</html>