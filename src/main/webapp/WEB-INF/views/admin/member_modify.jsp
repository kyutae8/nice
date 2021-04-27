<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row" style="width: 100%">
                    <div class="col-lg-7" style="left:150px;">
                    <br>
                          <div class="text-center">
                              <h1 class="h4 text-gray-900 mb-4">회원정보 수정</h1>
                          </div>
                          <hr>
                          <form name="modifyForm" method="post" class="panel-body form-horizontal form-padding">
						<br>
						<div class="form-group row">
							<div class="col-md-3 control-label">회원아이디</div>
							<div class="col-md-9"><input type="text" name="id" id="id" class="form-control" style="width: 300px;" value="${member.id }"></div>
						</div>
						<br>
						
						<!--회원상태-->
						<div class="form-group pad-ver row">
							<label class="col-md-3 control-label">회원상태</label>
							<div class="col-md-9">
								<div class="radio">
									<label class="form-radio form-normal"><input type="radio"name="status" value="1" <c:if test="${member.status==1 }">checked="checked"</c:if>> 일반회원</label>
									<label class="form-radio form-normal"><input type="radio" name="status" value="5" <c:if test="${member.status==5 }">checked="checked"</c:if>> 탈퇴회원</label>
									<label class="form-radio form-normal"><input type="radio" name="status" value="9"  <c:if test="${member.status==9 }">checked="checked"</c:if>> 관리자</label>
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
								<input type="text" name="phone" class="form-control" style="width: 300px;" value="${member.phone }"  placeholder="휴대전화를 입력해주세요.">
							</div>
						</div>
						<br>
						
						<!--이메일 -->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input">이메일</label>
							<div class="col-md-9">
								<input type="text" name="email" class="form-control" style="width: 300px;" value="${member.email }">
							</div>
						</div>
						<br>
						
		
						<!--주소-->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input">우편번호</label>
							<div class="col-md-9" data-validate="Userzip is required" >
								<input type="text"  name="userZipcode" id="postZip" class="form-control" readonly="readonly" style="width: 130px; display: inline-block;" value="${member.zipcode }">
								<input type="text" id="address1" name="address1" class="form-control" readonly="readonly" style="width: 300px;" value="${member.address1 }">
								<input type="text" name="address2" class="form-control" style="width: 300px;"  value="${member.address2 }">
							</div>
						</div>
						<br>
						
						<!--JoinDate-->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input">가입날짜</label>
							<div class="col-md-9">
								<input type="text" id="joinDate" class="form-control" style="width: 300px;" value="${member.joindate }" readonly="readonly">
							</div>
						</div>
						<br>
						
						
						
						<!-- 버튼-->
						<div style="text-align: center;">
							<button id="modifyBtn" class="btn btn-primary" type="button" onclick="modifyMember();">수정</button>
							<button class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/member'">취소</button>
						</div>
						<br>
					</form>
                    </div>
                </div>
            </div>
        </div>

    </div>
<script type="text/javascript">
obj = document.modifyForm;

function modifyMember() {
	obj.action = "${pageContext.request.contextPath }/admin/member_modify";
	obj.submit();
}
</script> 
    