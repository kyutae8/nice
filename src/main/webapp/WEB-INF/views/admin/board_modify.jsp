<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row" style="width: 100%">
                    <div class="col-lg-7" style="left: 150px;">
                    <br>
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">게시글등록</h1>
                            </div>
                            <hr>
                            <form method="post" name="modifyForm" class="panel-body form-horizontal form-padding"
                            	enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/board_modify/${board.num}">
                            	
								<table>
		<tr>
			<td style="font-weight: bold;">게시판 종류</td>
			<td>
				<select name="category" id="category">
					<option value="1" <c:if test="${board.category==1 }">selected="selected"</c:if>>공지사항</option>
					<option value="2" <c:if test="${board.category==2 }">selected="selected"</c:if>>자주 하는 질문</option>
					<option value="3" <c:if test="${board.category==3 }">selected="selected"</c:if>>이벤트</option>
				</select>
			</td>
		<tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td style="font-weight: bold;">제목</td>
			<td>
				<input type="text" name="subject" id="subject" value="${board.subject }">
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td style="font-weight: bold;">이미지</td>
			<td>
				<input type="file" name="file" id="file" value="${board.image }">${board.image }
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td style="font-weight: bold;">내용</td>
			<td>
				<textarea rows="7" cols="60" name="content" id="content">${board.content }</textarea>
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td colspan="2"><button class="btn btn-primary" type="submit" onclick="location.href='${pageContext.request.contextPath }/admin/board_modify/${board.num }'">수정</button></td>
		</tr>
		</table>
		<br>
		<br>
							
							</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
function boardModify() {
	m = document.modifyForm;
	
	m.action = "${pageContext.request.contextPath }/admin/board_modify?"+num;
	m.submit();
}
</script>
