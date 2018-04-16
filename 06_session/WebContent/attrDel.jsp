<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
/* 세션에서 name 속성을 삭제한 후 index.jsp로 다시 이동 */
session.removeAttribute("name");
response.sendRedirect("index.jsp");
%>