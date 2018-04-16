<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// session은 내장 객체(선언하지 않아도 됨)이다.(request의 하위 객체)
// session 안에 여러 속성과 값을 부여할 수 있다.
String msg = "";
if (session.getAttribute("name") != null) {
	msg = "name : " + session.getAttribute("name").toString();
} else {
	msg = "세션에 값이 없습니다.";
}

// 세션 유지 시간
System.out.println("세션 유지 시간 : " + session.getMaxInactiveInterval() + "초");
// 세션의 모든 값 가져오기
String[] names = session.getValueNames();
for (String temp : names) {
	System.out.println(temp + " : " + session.getAttribute(temp));
}
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
        <h2>Session Test</h2>
        <!-- 세션에 값을 넣지 않아도 세션은 존재 -->
        <h3>session ID : <%= session.getId() %></h3>
        <h3><%= msg %></h3>
        <button id="btn1">세션 저장</button>
        <button id="btn2">세션 속성 삭제</button>
        <button id="btn3">세션 초기화</button>
        <br>
        <a href="example/login.jsp">로그인 예제</a>
    </body>
    <script>
		$("#btn1").click(function() {
			location.href="sessionSet.jsp";
		});
		
		$("#btn2").click(function() {
			location.href="attrDel.jsp";
		});

		$("#btn3").click(function() {
			location.href="sessionInit.jsp";
		});
    </script>
</html>