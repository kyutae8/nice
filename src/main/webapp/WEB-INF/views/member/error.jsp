<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한성컨트리클럽</title>
<style type="text/css">
body {
	text-align: center;
}

.message {
	color: red;
	font-size: 1.5em;
	margin: 100px;
}
</style>
</head>
<body>
	<h1>에러페이지</h1>
	<hr>
	<p class="message">
	프로그램 실행에 예기치 못한 오류가 발생 되었거나 비정상적인 방법으로 프로그램이 실행되어 오류가 발생 되었습니다.</p>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/login';">로그인으로 이동</button>
</body>
</html>

