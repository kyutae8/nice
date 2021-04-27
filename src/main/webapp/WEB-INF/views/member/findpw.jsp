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
<!--<script src="/inc/gambit-smoothscroll-min.js"></script>-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default3.css">
<style type="text/css">
.popbtn {
	font-family: "Noto Sans Korean", sans-serif;
	font-size: 12px;
    width:100px;
    background-color: #E99805;
    border: none;
    color:#fff;
    padding: 6px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px;
    cursor: pointer;
    border-radius:4px;
}
</style>
</head>
<body>



<div id="wrap">
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
								<span class="thispage">아이디찾기</span>
							</div>
							<div class="subTitAll">
								<div class="subTitArea">
									<img
										src="${pageContext.request.contextPath }/images/subTit/login.jpg"
										alt="대표인사말" />
								</div>
							</div>
							<div class="subTxtArea">


								<p class="stxtArea">
									<img
										src="${pageContext.request.contextPath }/images/member/s_tit_idsearch.gif" />
								</p>
								<div class="loginAll02"
									style="margin-bottom: 20px; padding: 0; margin-left: auto; margin-right: auto;">
									<div class="loginBox" style="width: 80%;">
										<table class="login"
											style="width: width:80%; text-align: center;">
											<tr>
												<td>&nbsp;&nbsp;
													<p style="text-align: center; font-size: 25px; width: 466px; font-weight: bold; font-family: sans-serif;">
													${name} 님의 아이디는 ${id } 입니다.</p>
													&nbsp;
												</td>
											</tr>
										</table>
										<div style="text-align: center;">
											<button type="button" class="popbtn" onClick="location.href='${pageContext.request.contextPath }/login';">로그인</button>
											&nbsp;
											<button type="button" class="popbtn" onclick="location.href='${pageContext.request.contextPath }/idpass';">회원정보찾기</button>
										</div>
										<br>
										<br>
										<br>
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