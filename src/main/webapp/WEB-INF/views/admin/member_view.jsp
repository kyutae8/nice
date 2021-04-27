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
                          <div class="text-center">
                              <h1 class="h4 text-gray-900 mb-4">회원 정보</h1>
                          </div>
                          <hr>
                          <form name="modifyForm" class="panel-body form-horizontal form-padding">
						<br>
						<div class="form-group row">
							<div class="col-md-3 control-label" style="font-weight: bold;">회원아이디</div>
							<div class="col-md-9"><p  class="form-control-static">${member.id }</p></div>
						</div>
						<br>
						
						<!--회원상태-->
						<div class="form-group pad-ver row">
							<label class="col-md-3 control-label" style="font-weight: bold;">회원상태</label>
							<div class="col-md-9">
								<p  class="form-control-static">
								<c:if test="${member.status==1}">일반회원</c:if>
								<c:if test="${member.status==5}">탈퇴회원</c:if>
								<c:if test="${member.status==9}">관리자</c:if>
								</p>
							</div>
						</div>
						<br>
						
						<!--이름-->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">이름</label>
							<div class="col-md-9"><p  class="form-control-static">${member.name }</p></div>
						</div>
						<br>
						
						<!--휴대전화 -->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">휴대전화</label>
							<div class="col-md-9"><div class="col-md-9"><p  class="form-control-static">${member.phone }</p></div></div>
						</div>
						<br>
						
						<!--이메일 -->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">이메일</label>
							<div class="col-md-9"><div class="col-md-9"><p  class="form-control-static">${member.email }</p></div></div>
						</div>
						<br>
						
		
						<!--주소-->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">우편번호</label>
							<div class="col-md-9" data-validate="Userzip is required" >
								<input type="text"  name="userZipcode" id="postZip" class="form-control" readonly="readonly" style="width: 130px; display: inline-block;" value="${member.zipcode }">
								<input type="text" id="address1" name="address1" class="form-control" readonly="readonly" style="width: 300px;" value="${member.address1 }">
								<input type="text" name="address2" class="form-control" readonly="readonly" style="width: 300px;"  value="${member.address2 }">
							</div>
						</div>
						<br>
						
						<!--JoinDate-->
						<div class="form-group row">
							<label class="col-md-3 control-label" for="demo-text-input" style="font-weight: bold;">가입날짜</label>
							<div class="col-md-9">
								<input type="text" id="joinDate" class="form-control" style="width: 300px;" value="${member.joindate }" readonly="readonly">
							</div>
						</div>
						<br>
						
						
						
						<!-- 버튼-->
						<div style="text-align: center;">
							<button id="modifyBtn" class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/member_modify?id=${member.id }'">수정</button>
							<button class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/member'">리스트로</button>
						</div>
						<br>
					</form>
                    </div>
                </div>
            </div>
        </div>

    </div>
    