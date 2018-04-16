<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
/* 
기존 아이디(admin)와 패스워드(pass)를 확인하여 
일치하면 session에 ID 추가 후 loginOk.jsp로, 
일치하지 않으면 login.jsp로 이동 
*/

// userId와 userPw 받아오기
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");

// 아이디, 패스워드 비교
if (userId.equals("admin") && userPw.equals("pass")) { // 일치
	// 세션에 ID 추가
	session.setAttribute("userId", userId);
	response.sendRedirect("loginOk.jsp");
} else { // 불일치 %>
	<%
	response.sendRedirect("login.jsp");
}
%>