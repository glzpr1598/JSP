<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
	// requset에서 forwardPage(hidden) 값 가져오기
	String endPage = request.getParameter("forwardPage");
%>

<!-- action tag(jsp:*)는 scriptlet이 아니므로 영역 밖에 써준다. -->

<!-- forward : 파라미터를 추가하여 페이지 이동 -->
<!-- 주소는 이동되지 않음. -->
<jsp:forward page="<%= endPage %>">
	<jsp:param value="010-1234-5678" name="tel"/>
</jsp:forward>