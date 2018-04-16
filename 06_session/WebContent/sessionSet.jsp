<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
/* 세션에 값을 넣어주고, index.jsp 페이지로 다시 돌려보낸다. */
// 세션에 값 넣기
session.setAttribute("name", "Kim");
// 아무 동작 없을때 유지하는 시간
// 톰캣에서는 기본값을 30분으로 설정
session.setMaxInactiveInterval(60); // 단위 : 초
response.sendRedirect("index.jsp");
%>