<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
/* 받아온 email과 phone 값을 session에 저장 후 result.jsp로 이동 */
// 값 가져오기
String userEmail = request.getParameter("userEmail");
String userPhone = request.getParameter("userPhone");

// session에 저장
session.setAttribute("userEmail", userEmail);
session.setAttribute("userPhone", userPhone);

// result.jsp로 이동
response.sendRedirect("result.jsp");
%>