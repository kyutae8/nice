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
                                <h1 class="h4 text-gray-900 mb-4">게시글 정보</h1>
                            </div>
                            <hr>
                            <form method="post" name="addForm" class="panel-body form-horizontal form-padding">
                            <br>	
				<div class="form-group pad-ver row">
					<label class="col-md-3 control-label" style="font-weight: bold;">게시글 분류</label>
					<div class="col-md-9">
						<p  class="form-control-static">
						<c:if test="${board.category==1}">공지사항</c:if>
						<c:if test="${board.category==2}">QnA</c:if>
						<c:if test="${board.category==3}">이벤트</c:if>
						</p>
					</div>
				</div>
				<br>
				<!--글번호 -->
				<div class="form-group row">
					<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">글번호</label>
					<div class="col-md-9"><p  class="form-control-static" readonly="readonly">${board.num }</p></div>
				</div>
				<br>
				<!--작성일 -->
				<div class="form-group row">
					<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">작성일</label>
					<div class="col-md-9"><p  class="form-control-static" readonly="readonly">${board.regdate }</p></div>
				</div>
				<br>
				<!--제목 -->
				<div class="form-group row">
					<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">제목</label>
					<div class="col-md-9"><p  class="form-control-static" readonly="readonly">${board.subject }</p></div>
				</div>
				<br>
				<!--이미지 -->
				<div class="form-group row">
					<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">이미지</label>
					<div class="col-md-9">
					<c:if test="${board.image eq null }">이미지 없음</c:if>
					<c:if test="${board.image!=null }"><img src="${pageContext.request.contextPath }/b_image/${board.image}" border="0"  align="middle"></c:if>
					</div>
				</div>
				<!--내용 -->
				<div class="form-group row">
					<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">내용</label>
					<div class="col-md-9"><p  class="form-control-static" readonly="readonly">${board.content }</p></div>
				</div>
				<br>
				<div style="text-align: center;">
					<c:if test="${board.category==1}">
					<button id="modifyBtn" class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/board_modify/${board.num}'">수정</button>
					<button id="modifyBtn" class="btn btn-primary" type="button" onclick="boardRemove('${board.num}');">삭제</button>
					<button class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/notice'">리스트</button>
					</c:if>
					<c:if test="${board.category==2}">
					<button id="modifyBtn" class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/board_modify/${board.num}'">수정</button>
					<button class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/qna'">리스트</button>
					</c:if>
					<c:if test="${board.category==3}">
					<button id="modifyBtn" class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/board_modify/${board.num}'">수정</button>
					<button class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/event'">리스트</button>
					</c:if>
				</div>
				<br>			
							</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
function remove(num) {
			location.href='${pageContext.request.contextPath }/admin/board_remove?num='+num;
		}
		</script>