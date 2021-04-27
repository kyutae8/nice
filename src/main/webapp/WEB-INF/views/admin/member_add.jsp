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
                                <h1 class="h4 text-gray-900 mb-4">회원등록</h1>
                            </div>
                            <hr>
                            <form method="post" name="addForm" class="panel-body form-horizontal form-padding">
                            	
								<!--아이디-->
								<div class="form-group row">
									<label class="col-md-3 control-label" for="demo-text-input">아이디</label>
									<div class="col-md-9">
										<input type="text" name="id" id="id" class="form-control id" style="width: 300px;" value="${member.id }">
									</div>
								</div>
			                    <br>
								
								<!--비밀번호-->
								<div class="form-group row">
									<label class="col-md-3 control-label" for="demo-text-input">비밀번호</label>
									<div class="col-md-9">
										<input type="password" id="password" name="password" class="form-control" style="width: 300px;" value="${member.password }" placeholder="비밀번호를 입력해주세요.">
									</div>
								</div>
			                    <br>
								
								<!--회원상태-->
								<div class="form-group pad-ver row">
									<label class="col-md-3 control-label">회원상태</label>
									<div class="col-md-9">
										<div class="radio">
											<label class="form-radio form-normal"><input type="radio" name="status" value="1"> 일반회원</label>
											<label class="form-radio form-normal"><input type="radio" name="status" value="9"> 관리자</label>
										</div>
									</div>
								</div>
			                    <br>
								
								<!--이름-->
								<div class="form-group row">
									<label class="col-md-3 control-label" for="demo-text-input">이름</label>
									<div class="col-md-9">
										<input type="text" name="name" id="name" class="form-control" style="width: 300px;" value="${member.name }" placeholder="이름을 입력해주세요.">
									</div>
								</div>
			                    <br>
								
								<!--휴대전화 -->
								<div class="form-group row">
									<label class="col-md-3 control-label" for="demo-text-input">휴대전화</label>
									<div class="col-md-9">
										<input type="text" name="phone" id="phone" class="form-control" style="width: 300px;" value="${member.phone }" placeholder="휴대전화를 입력해주세요.">
									</div>
								</div>
			                    <br>
								
								<!--이메일 -->
								<div class="form-group row">
									<label class="col-md-3 control-label" for="demo-text-input" >이메일</label>
									<div class="col-md-9">
										<input type="text" name="email" id="email" class="form-control" style="width: 300px;" value="${member.email }" placeholder="이메일을 입력해주세요.">
									</div>
								</div>
			                    <br>
								
								<!-- 버튼-->
								<div style="text-align: center;">
									<button id="addBtn" class="btn btn-primary" type="button" onclick="addMember();">등록</button>
									<button class="btn btn-primary"	onclick="location.href='${pageContext.request.contextPath }/admin/member'">취소</button>
								</div>
								
								<br>
							
							</form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
obj = document.addForm;

function addMember() {
	
	if ( obj.id.value == "" ) {
		alert("아이디를 입력하십시요.");
		return;
	} 
	if ( obj.password.value == "" ) {
		alert("비밀번호를 입력하십시요.");
		return;
	}
	if ( obj.name.value == "" ) {
		alert("이름을 입력하십시요.");
		return;
	}
	
	obj.action = "${pageContext.request.contextPath }/admin/member_add";
	obj.submit();
}
</script>