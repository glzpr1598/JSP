<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
/* 세션에서 userId 속성 삭제 후 loginChk.jsp로 보냄 */
session.removeAttribute("userId");
response.sendRedirect("loginChk.jsp");
%>
