<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한성 컨트리 클럽</title>
<style type="text/css">
#write {
	width: 860px;
	margin: 100px auto;
}

table {
	margin: 0 auto;
}

td {
	text-align: left;
}
#category{
	float: left;
	height: 40px;
	width: 630px;
}
#subject{
	width:860px;
	height: 40px;
}
#contentone{
	width: 860px;
	resize: none;
	margin: 0 auto;
}
</style>
</head>
<body>
<div id="write">
	<h2 style="margin-bottom: 16px; font-size: 22px; color: black;">글쓰기</h2>
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/board_add">
	<%-- action="${pageContext.request.contextPath}/board_add" --%>
	<table>
		<tr>
		<%--
			<td>게시판 종류</td> --%>
			<td>
				<select name="category" id="category" >
					<option value="1" <c:if test="${category==1 }">selected="selected"</c:if>>공지사항</option>
					<option value="2" <c:if test="${category==2 }">selected="selected"</c:if>>이벤트</option>
				</select>
			</td>
		<tr>
		<tr>
			<!-- 
			<td>제목</td>rows="7" cols="60"  -->
			<td>
				<input type="text" name="subject" id="subject" placeholder="제목을 입력해 주세요">
			</td>
		</tr>
		<tr>
			<td style="border: 1px solid gray; padding: 5px; color: gray;" >이미지 추가 &nbsp;&nbsp;&nbsp;<input type="file" name="file" id="file"></td>	
		</tr>
		<tr>
			<td>
				<textarea rows="30" cols="500" name="content" id="contentone" placeholder="내용을 적어주세요"></textarea>
			</td>
		</tr>
		<tr>
			<td><button type="submit" style="background: #c39f78; color: white;">등록</button></td>
		</tr>
	</table>
	</form>
	</div>
</body>
</html>