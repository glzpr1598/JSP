<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	// 변수 선언
	String title="1부터 100까지의 합";
	
	// 메서드 선언
	public int sum() {
		int result = 0;
		for (int i = 1; i <= 100; i++) {
			result += i;
		}
		return result;
	}
%>
<div class="footer">
	<p><%= title %></p>
	<p><%= sum() %></p>
</div>