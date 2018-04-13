<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// sendRedirect : 페이지를 이동 시켜주는 기능(데이터는  x)
	// href와 비슷
	// 보통 데이터를 받아 결과에 따라서 다른 페이지로 이동 시킬 때 사용
	// 예) 로그인 체크
	response.sendRedirect("goToPage.jsp");
%>