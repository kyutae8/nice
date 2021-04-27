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


<script type="text/javascript">
<!--

function withdraw_ok() {

	obj = document.mainform;

	if (obj.memb_inet_pass.value == "" )
	{
		alert("비밀번호를 입력해 주십시오.");
		obj.memb_inet_pass.focus();
		return;
	}

	if (obj.memb_inet_pass_re.value == "")
	{
		alert("비밀번호 확인을 입력하십시오.");
		obj.memb_inet_pass_re.focus();
		return;
	}

	if (obj.memb_inet_pass.value != obj.memb_inet_pass_re.value)
	{
		alert("비밀번호 입력이 비밀번호 확인과 일치하지 않습니다.\n다시 입력하십시오.");
		obj.memb_inet_pass.value = "";
		obj.memb_inet_pass_re.value = "";
		obj.memb_inet_pass.focus();
		return;
	}

	obj.submit();
}

//-->
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
									<span><a href="${pageContext.request.contextPath }/index.jsp">홈</a></span>
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
								<div class="subTxtArea">
								<!-- 내용 -->
			<form name="mainform" method="post" action="withdraw_ok.asp">
									<table summary="회원탈퇴" class="table_col">
										<colgroup>
											<col width="20%" />
											<col width="*" />
										</colgroup>
										<tbody>
											<tr>
												<th>비밀번호</th>
												<td><input type="password" name="memb_inet_pass" id="delete_pw"/></td>
											</tr>
											<tr>
												<th>비밀번호 확인</th>
												<td><input type="password" name="memb_inet_pass_re" id="delete_pwre" /></td>
											</tr>
										</tbody>
									</table>
			</form>
									<!-- 버튼 -->
									<div class="btn_c">
										<a href="JavaScript:withdraw_ok();"><img src="${pageContext.request.contextPath }/images/btn/btn_withdrawal.jpg" alt="회원탈퇴" /></a>
										<a href="/index.asp"><img src="${pageContext.request.contextPath }/images/btn/btn_withdrawal_off.jpg" alt="취소" /></a>
									</div>
									<!-- //버튼 -->
								<!--// 내용 -->	
								</div>
							</div><!-- //subContent -->
						</div>
					</div><!-- //subAllContent -->
				</div><!-- //visual -->
			</div><!-- //contents-box -->
		</div><!-- //wrapper -->
		

	</div><!-- //wrap_sub -->	
</body>
</html>