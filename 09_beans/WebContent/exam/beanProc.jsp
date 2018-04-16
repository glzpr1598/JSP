<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 받아온 값을 bean에 추가 -->

<!-- 사용할 bean 정의 -->
<jsp:useBean id="firstBean" class="com.beans.FirstBean" scope="session"/>

<%
	/* 
	String name = request.getParameter("name");
	firstBean.setName(name);
	request.sendRedirect("beanResult.jsp");
	*/
%>

<!-- 위의 scriptlet을 action태그로 -->
<!-- property : 변경할 속성, name : 사용할 bean, param : 파라미터(값) -->
<!-- 페이지 이동 -->
<jsp:setProperty property="name" name="firstBean" param="name"/>
<jsp:forward page="beanResult.jsp"/>