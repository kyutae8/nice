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
                            <form method="post" name="addForm" class="panel-body form-horizontal form-padding"
                            	enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/board_add">
                            	
								<table>
		<tr>
			<td style="font-weight: bold;">게시판 종류</td>
			<td>
				<select name="category" id="category">
					<option value="1" selected="selected">공지사항</option>
					<option value="2">자주 하는 질문</option>
					<option value="3">이벤트</option>
				</select>
			</td>
		<tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td style="font-weight: bold;">제목</td>
			<td>
				<input type="text" name="subject" id="subject">
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td style="font-weight: bold;">이미지 추가</td>
			<td>
				<input type="file" name="file" id="file">
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td style="font-weight: bold;">내용</td>
			<td>
				<textarea rows="7" cols="60" name="content" id="content"></textarea>
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td colspan="2"><button class="btn btn-primary" type="submit">등록</button></td>
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

