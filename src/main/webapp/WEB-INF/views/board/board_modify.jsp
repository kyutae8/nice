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
	<h2 style="margin-bottom: 16px; font-size: 22px; color: black;">글 수정</h2>
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/board_update">
	<input type="hidden" name="num" value="${board.num }">
	<input type="hidden" name="currentImage" value="${board.image }">
	<table>
		<tr>
			<td>
				<select name="category" id="category">
					<option value="1" <c:if test="${board.category==1 }">selected="selected"</c:if>>공지사항</option>
					<option value="2" <c:if test="${board.category==2 }">selected="selected"</c:if> >이벤트</option>
				</select>
			</td>
		<tr>
		<tr>
			<td>
				<input type="text" name="subject" id="subject" placeholder="제목을 입력해 주세요" value="${board.subject }">
			</td>
		</tr>
		<tr>
			<td style="border: 1px solid gray; padding: 5px; color: gray;" >이미지 수정 &nbsp;&nbsp;&nbsp;<input type="file" name="file" id="file"></td>	
		</tr>
		<tr>
			<td>
				<textarea rows="30" cols="500"  name="content" id="contentone" placeholder="내용을 적어주세요">${board.content }</textarea>
			</td>
		</tr>
		<tr>
			<td><button type="submit" style="background: #c39f78; color: white;">수정</button></td>
		</tr>
	</table>
	</form>
	</div>
</body>
</html>