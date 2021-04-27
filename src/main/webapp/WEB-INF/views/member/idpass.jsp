<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>한성컨트리클럽</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=3.0, user-scalable=yes">
<link rel="stylesheet" href="/inc/default2.css">
<script src="/inc/jquery-1.8.3.min.js"></script>
<script src="/inc/jquery.sliderPro.min.js"></script>
<script src="/inc/wow.js"></script>
<script src="/inc/nav_sub.js"></script>
<link rel="stylesheet" href="/inc/animate.css">
<link rel="stylesheet" href="/inc/default.css">
<link rel="stylesheet" href="/inc/default3.css">
<script type="text/javascript">

function id_ok() {

	obj = document.idform;

	if (obj.name.value == "") {
	
		alert("이름을 입력하여 주십시오.");
		obj.name.focus();
		return;
	}

	if (obj.email.value == "") {
		
		alert("이메일을 입력하여 주십시오.");
		obj.email.focus();
		return;
	}
	var con = confirm("아이디를 찾으시겠습니까?");
	if (con) {
		obj.action = "${pageContext.request.contextPath}/idpass";
		obj.submit();		
	} else {
		return false;
	}
}

function pass_ok() {

	obj = document.passform;
	
	if (obj.id.value == "") {
	
		alert("아이디를 입력하여 주십시오.");
		obj.id.focus();
		return;
	}

	if (obj.name.value == "") {
	
		alert("이름을 입력하여 주십시오.");
		obj.name.focus();
		return;
	}
	
	if (obj.email.value == "") {
		
		alert("이메일을 입력하여 주십시오.");
		obj.email.focus();
		return;
	}
	var con = confirm("비밀번호를 찾으시겠습니까?");
	if (con) {
		obj.action = "${pageContext.request.contextPath}/idpasspw";
		obj.submit();
	} else {
		return false;
	}
}

	

	
	

</script>

<div id="wrap">
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
								<span>로그인</span> <span><img
									src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
								<span class="thispage">회원정보찾기</span>
							</div>
							<div class="subTitAll">
								<div class="subTitArea">
									<img
										src="${pageContext.request.contextPath }/images/subTit/login.jpg"
										alt="대표인사말" />
								</div>
							</div>
							
							<div class="subTxtArea">


								<form name="idform" method="post" action="./id_search_ok.asp">
									<input type="hidden" name="apply_no_save" /> <input
										type="hidden" name="memb_div" />
									<p class="stxtArea">
										<img
											src="${pageContext.request.contextPath }/images/member/s_tit_idsearch.gif" />
									</p>
									<div class="loginAll02"
										style="margin-bottom: 20px; padding: 0; margin-left: auto; margin-right: auto;">
										<div class="loginBox" style="width: 80%;">
											<table class="login" style="width: width:100%;">
												<tr>
													<td class="logt01" style="text-align: center;">이름</td>
													<td class="logt02" style="width: 60%;"><input
														type="text" name="name" id="user_name"
														class="inputText" style="width: 200px;" /></td>
												</tr>
												<tr>
													<td class="logt01" style="text-align: center;">이메일</td>
													<td class="logt02" style="width: 60%;"><input
														type="text" name="email" id="user_email"
														class="inputText" style="width: 200px;" /></td>
												</tr>

											</table>
											<p style="text-align: center; color: red; font-size: 16px;">${msg }</p>
											<p class="toptxt03">
												<a href="#"><img
													src="${pageContext.request.contextPath }/images/member/btn_id.gif"
													onClick="JavaScript:id_ok();" style="cursor: hand;" /></a>
											</p>
											<br>
											<div style="height: 15px;"></div>
										</div>
									</div>

								</form>

								<form name="passform" method="post">
									<input type="hidden" name="apply_no_save" /> <input
										type="hidden" name="memb_div" />
									<p class="stxtArea">
										<img
											src="${pageContext.request.contextPath }/images/member/s_tit_pass.gif" />
									</p>
									<div class="loginAll02"
										style="margin-bottom: 20px; padding: 0; margin-left: auto; margin-right: auto;">
										<div class="loginBox" style="width: 80%;">
											<table class="login" style="width: 80%;">
												<tr>
													<td class="logt01" style="text-align: center;">아이디</td>
													<td class="logt02" style="width: 60%;"><input
														type="text" name="id" id="user_name"
														class="inputText" style="width: 200px;" /></td>
												</tr>
												<tr>
													<td class="logt01" style="text-align: center;">이름</td>
													<td class="logt02" style="width: 60%;"><input
														type="text" name="name" id="user_id"
														class="inputText" style="width: 200px;" /></td>
												</tr>
												<tr>
													<td class="logt01" style="text-align: center;">이메일</td>
													<td class="logt02" style="width: 60%;"><input
														type="text" name="email" id="user_id"
														class="inputText" style="width: 200px;" /></td>
												</tr>
											</table>
											<p class="toptxt03">
												<a href="#"><img
													src="${pageContext.request.contextPath }/images/member/btn_idpass.gif"
													onClick="JavaScript:pass_ok();" style="cursor: hand;" /></a>
											</p>
											<p class="stxtArea02" style="text-align: center;">*
												임시비밀번호를 이메일로 발송해드립니다. 로그인후 비밀번호를 변경하시기 바랍니다.</p>
											<div style="height: 15px;"></div>
										
										</div>
									</div>

								</form>
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