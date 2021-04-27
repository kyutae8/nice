<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>한성컨트리클럽</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=3.0, user-scalable=yes">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default2.css">
<script src="${pageContext.request.contextPath }/inc/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/wow.js"></script>
<script src="${pageContext.request.contextPath }/inc/nav_sub.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default3.css">
</head>
<body>
	<div
		style="height: 70px; width: 100%; padding: 0px 2% 0 5%; line-height: 70px; font-size: 12px; border-top: 1px solid #f1f1f1;"
		class="m_on_footers noto login_color">
		<ul>
			<li class="left_pull "><a
				href="${pageContext.request.contextPath }/login" class="">로그인</a>&nbsp;<span
				style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>
			<li class="left_pull "><a
				href="${pageContext.request.contextPath }/join01"
				class="">회원가입</a></li>
		</ul>
	</div>

	<!-- 카카오 주소 -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function Find_Address2() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = ''; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수

					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						fullAddr = data.roadAddress;

					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						fullAddr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('address1').value = fullAddr;

					// 커서를 상세주소 필드로 이동한다.
					document.getElementById('address2').focus();
				}
			}).open();
		}
	</script>

<script type="text/javascript">
function ID_Check() {

	obj = document.membform;
	
	if (obj.id.value == "") {
		alert("아이디를 먼저 입력하십시오.");
		obj.id.focus();
		return;
	}

	if (obj.id.value.indexOf(' ') != -1) {
		alert("아이디에는 공백문자를 입력할수 없습니다.");
 		obj.id.focus();
		return;
	}
}



function pass_check(ipass_str) {

	var pattern1 = /[0-9]/;
	var pattern2 = /[a-zA-Z]/;
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/;

	var pwd = ipass_str.value;

	if( !pattern1.test(pwd) || !pattern2.test(pwd) || !pattern3.test(pwd) || pwd.length<8 || pwd.length>12 ){

		alert("비밀번호는 문자,숫자,특수문자 8~12자리로 구성하여야 합니다.");
		ipass_str.focus();
		return false;
	}
}

function ok() {

	obj = document.membform;

	if (obj.id.value == "") {
	
		alert("아이디를 입력하여 주십시오.");
		obj.id.focus();
		return;
	}
	

	if (obj.password.value == "") {
	
		alert("비밀번호를 입력하여 주십시오.   ");
		obj.password.focus();
		return;
	}

	if (pass_check(obj.password) == false) {
			return;
		}

	       
        if(obj.password.value != obj.password1.value) {
		alert("비밀번호와 확인번호가 일치하지 않습니다.");
                obj.password.focus();
             	return;
        }

	if (obj.name.value == "") {
	
		alert("성명을 입력하여 주십시오.   ");
		obj.name.focus();
		return;
	}

	if(obj.email.value == "") 
	{
		alert("E-Mail 주소를 입력해 주십시오.");
        obj.email.focus();
		return;
	}
	
	if(obj.email.value != "") 
	{
		if(obj.email.value.indexOf("@") == -1) {
			alert("E-Mail 주소를 확인하십시오. \n\n '@' 마크가 필요합니다.");
	                obj.email.focus();
			return;
        	} else if(obj.email.value.indexOf(".") == -1) {
        		alert("E-Mail 주소를 확인하십시오. \n\n도메인 주소가 필요합니다."); 
	                obj.email.focus();
			return;
        	}
       	}
        
        if(obj.phone.value == "") 
       	{
			alert("통신사번호를 선택해 주십시오.");
	                obj.phone.focus();
			return;
		}
		
		if(obj.phone1.value == "") 
	       	{
			alert("전화번호를 입력해 주십시오.");
	        obj.phone1.focus();
			return;
		}
	
	    if(obj.phone2.value == "") 
	      	{
			alert("나머지번호를 입력해 주십시오.");
	        obj.phone2.focus();
			return;
		}	
       	
        obj.action = "${pageContext.request.contextPath}/join02"
 		obj.submit(); 

}

function apply_send() {

	obj = document.membform;

	if (obj.id.value == "") {
	
		alert("아이디를 입력하여 주십시오.");
		obj.id.focus();
		return;
	}

	if (obj.name.value == "") {
	
		alert("성명을 입력하여 주십시오.");
		obj.name.focus();
		return;
	}

	if ((obj.phone1.value == "") || (obj.phone2.value == "") || (obj.phone3.value == "")) {
	
		alert("휴대폰 번호를 입력해 주십시오.");
		
		obj.phone1.focus();
		return;
	}
	
	
	var_str = '';
	var_str = var_str + 'memb_div=P&';
	var_str = var_str + 'id='    + obj.id.value    + '&';
	var_str = var_str + 'name='       + obj.name.value       + '&';
//	var_str = var_str + 'memb_residentno=' + obj.memb_residentno1.value + obj.memb_residentno2.value + '&';
	var_str = var_str + 'memb_residentno=' + obj.id.value    + '&';
}

</script>



	<div id="wrap_sub">
		<!-- wrapper -->
		<div id="wrapper">

			<div class="contents-box">
				<div class="visual">

					<div class="subAllContent">


						<div class="subTrue">
							<!-- True Content start -->

							<div class="subContent">
								<div class="page_navi">
									<span><img
										src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
									<span><a
										href="${pageContext.request.contextPath }/index.asp">홈</a></span> <span><img
										src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
									<span>마이페이지</span> <span><img
										src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
									<span class="thispage">회원가입</span>
								</div>
								<div class="subTitAll">
									<div class="subTitArea">
										<img
											src="${pageContext.request.contextPath }/images/subTit/join.jpg" />
									</div>

								</div>
								<div class="subTxtAreaTwo">

									<div class="tableAll">
										<div class="jtext02">
											<span class="t_red_b" title="필수항목">＊</span>필수정보를 입력 하세요.
										</div>
										<form name="membform" method="post">
											<input type="hidden" name="r_birth_div"> <input
												type="hidden" name="id_check_yn" value="N"> <input
												type="hidden" name="apply_no_save" />
											<table class="join_form" summary="회원가입정보 입력폼">
												<tbody>
													<tr>
														<th style="padding-left: 10px;">아이디<span
															class="t_red_b" title="필수항목">＊</span></th>
														<td><input type="text" name="id" id="id" value="${member.id }" class="input" style="width: 20%; min-width: 80px;" maxlength="14" />&nbsp;<span style="color: red;">${message }</span>
														</td>
													</tr>
													<tr>
														<th style="padding-left: 10px;">비밀번호<span
															class="t_red_b" title="필수항목">＊</span></th>
														<td><input type="password" name="password" value="${member.password }"
															id="pass2" class="input"
															style="width: 20%; min-width: 80px;" maxlength="12" />
															(영문/숫자/특수문자조합 8자이상 16자이내)</td>
													</tr>
													<tr>
														<th style="padding-left: 10px;">비밀번호확인<span
															class="t_red_b" title="필수항목">＊</span></th>
														<td><input type="password" name="password1" value="${member.password }"
															id="pass" class="input"
															style="width: 20%; min-width: 80px;" maxlength="12" /></td>
													</tr>
													<tr>
														<th style="padding-left: 10px;">이름<span
															class="t_red_b" title="필수항목">＊</span></th>
														<td><input type="text" name="name" id="name" value="${member.name }"
															class="input" style="width: 20%; min-width: 80px;"
															maxlength="10" /></td>
													</tr>
													<tr>
														<th style="padding-left: 10px;">이메일<span
															class="t_red_b" title="필수항목">＊</span></th>
														<td><input type="text" name="email" value="${member.email }"
															id="email_head" class="input" size="40"
															style="width: 50%;" maxlength="50" /> <!--
							@
							<input type="text" name="email_tail" id="email_tail" class="input" size="22" style="" readOnly/>
							<select name="email_select" id="email_select" onchange="">
								<option value="">선택</option>
								<option value='hanmail.net'>hanmail.net</option><option value='empal.com'>empal.com</option><option value='freechal.com'>freechal.com</option><option value='chol.com'>chol.com</option><option value='dreamwiz.com'>dreamwiz.com</option><option value='hanmir.com'>hanmir.com</option><option value='hotmail.com'>hotmail.com</option><option value='korea.com'>korea.com</option><option value='lycos.co.kr'>lycos.co.kr</option><option value='msn.com'>msn.com</option><option value='nate.com'>nate.com</option><option value='naver.com'>naver.com</option><option value='paran.com'>paran.com</option><option value='yahoo.co.kr'>yahoo.co.kr</option><option value='gmail.com'>gmail.com</option>
								<option value="etc">직접입력</option>
							</select>
//--></td>
													</tr>
													<tr>
														<th style="padding-left: 10px;">주소</th>
														<td><input type="text" name="zipcode" id="zipcode" value="${member.zipcode }" class="input" size="7" maxlength="6" readOnly /> <a href="JavaScript:Find_Address2();">
														<img src="${pageContext.request.contextPath }/images/btn/btn_post.gif" alt="우편번호찾기" align="top" /></a> 
														<input type="text" name="address1" id="address1" value="${member.address1 }" class="input" size="79" style="margin-bottom: 5px; margin-top: 5px; width: 20%;" readOnly />
														<input type="text" name="address2" id="address2" value="${member.address2 }" class="input" size="79" style="width: 50%;" />
														</td>
													</tr>
													<tr>
							
															<c:set var="phone" value="${member.phone }"/>
														<th style="padding-left: 10px;">휴대폰번호<span
															class="t_red_b" title="필수항목">＊</span></th>
														<td><select name="phone" id="hp1">
																<option value="">선택</option>
																<option value="010" <c:if test="${fn:substring(phone,0,3)==010}">selected="selected"</c:if>>010</option>
																<option value="011" <c:if test="${fn:substring(phone,0,3)==011}">selected="selected"</c:if>>011</option>
																<option value="016" <c:if test="${fn:substring(phone,0,3)==016}">selected="selected"</c:if>>016</option>
																<option value="017" <c:if test="${fn:substring(phone,0,3)==017}">selected="selected"</c:if>>017</option>
																<option value="018" <c:if test="${fn:substring(phone,0,3)==018}">selected="selected"</c:if>>018</option>
																<option value="019" <c:if test="${fn:substring(phone,0,3)==019}">selected="selected"</c:if>>019</option>

														</select> <input type="text" name="phone1" id="hp4" value="${fn:substring(phone,4,8)}" class="input" size="7" style="width: 15%;" maxlength="4" />
														 - <input type="text" name="phone2" id="hp3" value="${fn:substring(phone,9,13)}" class="input" size="7" style="width: 15%;" maxlength="4" /></td>
													
													</tr>
												</tbody>
											</table>
										</form>
									</div>
									<!-- 버튼 -->
									<div class="btn_c" style="max-width: 200px; margin: 0 auto;">
										<img src="${pageContext.request.contextPath }/images/btn/btn_memberjoin.gif"
											alt="회원가입" onClick="ok()"
											style="cursor: hand; margin-right: 10px;" class="left_pull" />
										<a href="JavaScript:document.membform.reset();">
										<img src="${pageContext.request.contextPath }/images/btn/btn_rewrite.gif"
											alt="다시입력" class="left_pull" /></a>
									</div>
									<!-- //버튼 -->

								</div>
							</div>

						</div>

					</div>


				</div>

			</div>
		</div>
	</div>
</body>
</html>