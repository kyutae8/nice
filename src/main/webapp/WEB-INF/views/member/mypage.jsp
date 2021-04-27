<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>한성컨트리클럽</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=3.0, user-scalable=yes">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default2.css">
<script src="${pageContext.request.contextPath }/inc/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/wow.js"></script>
<script src="${pageContext.request.contextPath }/inc/nav_sub.js"></script>
<!--<script src="/inc/gambit-smoothscroll-min.js"></script>-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default3.css">
</head>
<body>

<div class="ani_fade3">
<style>
a {
	opacity: 1;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

a:hover {
	opacity: 0.8;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.link_z {
	z-index: 1 !important;
}
.movie_main {
	border: 0px;
	padding: 0px;
}

iframe {
	border: 0px;
	margin: 0px;
	padding: 0px;
}

.hidek {
	display: none;
}

#squarek {
	display: none;
}

#player1 {
	margin-top: -9%;
	opacity: 1;
}

.en_h {
	text-transform: uppercase;
}

.movie_mobile {
	display: none;
}

@media only screen and (max-width: 1880px) {
	#player1 {
		width: 100% !important;
		height: 125% !important;
	}
}

@media only screen and (max-width: 980px) {
	.movie_mobile {
		display: block;
	}
	#player1 {
		margin-top: 0%;
		width: 100% !important;
		height: 100% !important;
	}
}
#wrap_sub img {
	width: auto !important;
	display: inline-block !important;
}
</style>

		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
			function Find_Address2() {
				new daum.Postcode(
						{
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
												+ data.buildingName
												: data.buildingName);
									}
									// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
									fullAddr += (extraAddr !== '' ? ' ('
											+ extraAddr + ')' : '');
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

			function ok() {
				obj = document.membform;

				if (obj.email.value != "") {
					if (obj.email.value.indexOf("@") == -1) {
						alert("E-Mail 주소를 확인하십시오. \n\n '@' 마크가 필요합니다.");
						obj.email.focus();
						return;
					} else if (obj.email.value.indexOf(".") == -1) {
						alert("E-Mail 주소를 확인하십시오. \n\n도메인 주소가 필요합니다.");
						obj.email.focus();
						return;
					}
				}

				//핸드폰
				if (obj.phone.value == "") {
					alert("핸드폰번호를 입력하여 주십시오.");
					obj.phone.focus();
					return;
				}
				
			
				obj.action = "${pageContext.request.contextPath}/mypage"
				obj.submit();
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
										<span><a href="/index.asp">홈</a></span> <span><img
											src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
										<span>마이페이지</span> <span><img
											src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
										<span class="thispage">회원정보변경</span>
									</div>
									<div class="subTitAll">
										<div class="subTitArea">
											<img
												src="${pageContext.request.contextPath }/images/subTit/modify.jpg" />
										</div>

									</div>
									<div class="subTxtArea">

										<div class="tableAll">
											<div class="jtext02">
												<span class="t_red_b" title="필수항목">＊</span>필수정보를 입력 하세요.
											</div>
											<form name="membform" method="post" action="./modify2_ok.asp">
												<input type="hidden" name="r_birth_div"> <input
													type="hidden" name="id_check_yn" value="N">
													<input type="hidden" name="apply_no_save" />
												<table class="join_form"
													summary="회원가입정보 입력폼">
													<tbody>
														<tr>
															<th style="padding-left: 10px;">아이디</th>
															<td><input type="text" name="id" readonly="readonly" value="${loginMember.id }" /></td>
														</tr>
														<tr>
															<th style="padding-left: 10px;">이름</th>
															<td><input type="text" name="name" readonly="readonly"
																value="${loginMember.name }" /></td>
														</tr>
														<tr>
															<th style="padding-left: 10px;">비밀번호 변경<span
																class="t_red_b" title="필수항목">＊</span></th>
																<td><input type="password" name="password"
																id="password" class="input" size="40" maxlength="50" value="${member.password }"/>
														</tr>
														<tr>
															<th style="padding-left: 10px;">이메일<span
																class="t_red_b" title="필수항목">＊</span></th>
															<td><input type="text" name="email"
																id="email_head" class="input" size="40" maxlength="50"
																value="${loginMember.email }" /> <!--
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
															<td><input type="text" name="zipcode"
																id="zipcode" class="input" size="7" maxlength="6"
																readOnly value="${loginMember.zipcode }" /> <!---
							<input type="text" name="memb_house_zip2" id="zipcode2" class="input" size="7" maxlength="3" readOnly value="20"/>//-->
																<a href="JavaScript:Find_Address2();"><img
																	src="${pageContext.request.contextPath }/images/btn/btn_post.gif"
																	alt="우편번호찾기" align="top" /></a> <input type="text"
																name="address1" id="address1" class="input"
																size="79" style="margin-bottom: 5px; margin-top: 5px;"
																readOnly value="${loginMember.address1 }" /> <input
																type="text" name="address2" id="address2"
																class="input" size="79" value="${loginMember.address2 }" /></td>
														</tr>
														<tr>
															<th style="padding-left: 10px;">휴대폰번호<span
																class="t_red_b" title="필수항목">＊</span></th>
															<td><input type="text" name="phone"
																id="tel2" class="input" size="15" maxlength="20"
																value="${loginMember.phone }" /></td>
														</tr>
													</tbody>
												</table>
										</form>
										</div>
										<div class="withdrawal">
											<a href="${pageContext.request.contextPath }/delete">
											<img src="${pageContext.request.contextPath }/images/btn/btn_withdrawal.jpg" alt="회원탈퇴" /></a>
										</div>
										<!-- 버튼 -->
										<div class="btn_c">
											<img
												src="${pageContext.request.contextPath }/images/btn/btn_membermodify.gif"
												alt="정보변경" onClick="ok()" style="cursor: hand;" />
											<a href="JavaScript:document.membform.reset();"><img
												src="${pageContext.request.contextPath }/images/btn/btn_rewrite.gif"
												alt="다시입력" /></a>
										</div>
</div>
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