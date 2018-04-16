<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
// request로 값을 받아온다.
String param = request.getParameter("lang");
// 값으로 쿠키를 만든다.
if (param != null) {
	// 쿠키 생성
	Cookie cookie = new Cookie("lang", param);
	// 수명 설정
	cookie.setMaxAge(60*60*24); // 24시간
	// response로 만든 쿠키를 내려준다.
	response.addCookie(cookie);
	// 페이지 이동
	response.sendRedirect("cookieGet.jsp");
}
%>