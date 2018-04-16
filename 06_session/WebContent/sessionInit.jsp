<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
// 세션 초기화 후 index.jsp로 다시 이동
// 초기화를 하면 세션 ID도 바뀜.
session.invalidate();
response.sendRedirect("index.jsp");
%>