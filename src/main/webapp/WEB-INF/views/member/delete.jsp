<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
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


<style type="text/css">
.subTxtArea1 {
width:100%; 
clear:both; 
padding-top:30px;
border-top:3px solid #eee;
}

</style>

<script type="text/javascript">


function withdraw_ok() {

	obj = document.mainform;

	if (obj.password.value == "" )
	{
		alert("비밀번호를 입력해 주십시오.");
		obj.password.focus();
		return;
	}

	if (obj.memb_inet_pass_re.value == "")
	{
		alert("비밀번호 확인을 입력하십시오.");
		obj.memb_inet_pass_re.focus();
		return;
	}

	if (obj.password.value != obj.memb_inet_pass_re.value)
	{
		alert("비밀번호가 비밀번호 확인과 일치하지 않습니다.\n다시 입력하십시오.");
		obj.password.value = "";
		obj.memb_inet_pass_re.value = "";
		obj.password.focus();
		return;
	}
	
	var delConfirm = confirm("정말로 탈퇴 하시겠습니까?");
		if(delConfirm == true ) {
		obj.action = "${pageContext.request.contextPath}/delete";
		obj.submit();				
	} else {
		return;
	}
	
	
	
}




</script>


<body class="main_bg">
	<div id="wrap_sub">
		<div id="wrapper">
			<div class="contents-box">
				<div class="visual">
					<div class="subAllContent">
				
						<div class="subTrue">
							<div class="subContent">
								<div class="page_navi">
									<span><img src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
									<span><a href="/index.asp">홈</a></span>
									<span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
									<span>마이페이지</span>
									<span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
									<span class="thispage">회원탈퇴</span>
								</div>
								<div class="subTitAll">
									<div class="subTitArea">
									  <img src="${pageContext.request.contextPath }/images/subTit/withdrawal.jpg"  />
									</div>
								</div><!-- //subTitAll -->
								<div class="subTxtArea1">
								<!-- 내용 -->
			<form name="mainform" method="post" action="${pageContext.request.contextPath }/delete">
			<input type="hidden" name="id" value="${loginMember.id }">
									<table summary="회원탈퇴"  class="table_col">
										<colgroup>
											<col width="20%" />
											<col width="*" />
										</colgroup>
										<tbody>
											<tr>
												<th>비밀번호</th>
												<td><input type="password" name="password" id="delete_pw"  /></td>
											</tr>
											<tr>
												<th>비밀번호 확인</th>
												<td><input type="password" name="memb_inet_pass_re" id="delete_pwre" /></td>
											</tr>
											<tr>
												<td>&nbsp;</td><td style="color: red; font-size: 14px;">${message }</td>
											</tr>
										</tbody>
									</table>
			</form>
									<!-- 버튼 -->
									<div class="btn_c">
										<a href='#'><img src="${pageContext.request.contextPath }/images/btn/btn_withdrawal.jpg" alt="회원탈퇴" onclick="withdraw_ok()"/></a>
										<a href="${pageContext.request.contextPath }/mypage"><img src="${pageContext.request.contextPath }/images/btn/btn_withdrawal_off.jpg" alt="취소" style="display: inline-block;" /></a>
									</div>
									<!-- //버튼 -->
								<!--// 내용 -->	
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