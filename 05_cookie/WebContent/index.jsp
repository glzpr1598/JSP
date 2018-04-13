<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	쿠키는 사용자 컴퓨터에 저장된다.(팝업창의 오늘 하루 띄우지 않음, 최근 본 상품 정보 등)
	request를 이용해 가져오고, response를 이용해 내보낸다.
	*/
	// 쿠키 생성(키, 값)
	Cookie cookie = new Cookie("name", "Kim");
	// 쿠키 수명(저장 기간) 설정
	cookie.setMaxAge(60*10); // 단위 : 초 -> 10분
	// 쿠키 내보내기
	// 경로 : C:\Users\사용자명\AppData\Local\Google\Chrome\User Data\Default\Cache
	response.addCookie(cookie);
%>
<html>
    <head>
        <meta charset="utf-8">
        <title>JSP</title>
        <style>
            
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <h2>쿠키 이름 : <%= cookie.getName() %></h2>
        <h2>쿠키 값 : <%= cookie.getValue() %></h2>
        <h2>쿠키 수명 : <%= cookie.getMaxAge() %></h2>
        <h2>쿠키 경로 : <%= cookie.getPath() %></h2>
        <button id="btnGet">쿠키 가져오기</button>
    </body>
    <script>
		$("#btnGet").click(function() {
			location.href = "cookieResult.jsp";
		});
    </script>
</html>