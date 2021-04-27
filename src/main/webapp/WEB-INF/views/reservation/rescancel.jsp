<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/default2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/default3.css">
<script
	src="${pageContext.request.contextPath }/inc/jquery-1.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath }/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/wow.js"></script>
<script src="${pageContext.request.contextPath }/inc/nav_sub.js"></script>
<style>
a.on {
	background: #74653e !important;
	color: #fff !important;
	display: block !important;
	height: 55px !important;
}

.board_s_warp {
	margin-top: 20px !important;
}

/* .menu1, .menu2, .menu3, .menu4, .menu5, .menu6, .menu7, .menu8, .menu9,
	.menu10, .menu11, .menu100, .menu1000 {
	display: none; */
}
#nav_sub {
	display: block;
	text-align: center;
	letter-spacing: normal;
	width: 100%;
	background: #fff;
	height: 60px;
	border-bottom: 0px solid #988b6b;
}

#nav_sub {
	display: block;
	text-align: center;
	letter-spacing: normal;
	width: 100%;
	background: #fff;
	height: 52px;
	max-width: 1200px;
	position: relative;
	left: 0;
	right: 0;
	margin: auto;
	top: -50px;
	border-bottom: 1px solid #f9f9f9;
}

#nav_sub ul {
	padding: 0;
	text-align: center;
	width: 100%;
	font-size: 0;
	list-style: none;
	position: relative;
	left: 0%;
	top: 0%;
	transform: translate(0%, 0%);
}

#nav_sub ul li a {
	padding: 0px 0px 0px 0px;
	color: #333;
}

#nav_sub ul li {
	border-right: 1px solid #f9f9f9;
	border-bottom: 1px solid #f9f9f9;
	margin: 0;
	height: 52px;
	padding: 0px 0px 0px 0px;
	font-size: 16px;
	width: 16.6666666666667%;
	float: left;
	/*display:inline-block;
    *display:inline;*/
	/*zoom:1; /*for IE6-7*/
	position: relative;
	line-height: 52px; /*This determines the height of the menu*/
	/*vertical-align:middle;
    transition:background-color 0.2s;
    outline:none;
	-moz-user-select:none;
    -webkit-user-select: none;
    -ms-user-select: none;*/
}

#nav_sub ul li:nth-child(1) {
	border-left: 1px solid #f9f9f9;
} /* nth-child(1) 매뉴의 첫번째*/
@media ( max-width : 900px) {
	a.on {
		background: #74653e !important;
		color: #fff !important;
		display: block !important;
		height: 35px !important;
	}
	#nav_sub ul {
		padding: 0;
		text-align: center;
		width: 100%;
		font-size: 0;
		list-style: none;
		position: relative;
		left: 0%;
		top: 0%;
		transform: translate(0%, 0%);
		background: #fff;
	}
	#nav_sub {
		display: block;
		text-align: center;
		letter-spacing: normal;
		width: 95%;
		background: #fff;
		height: 52px;
		max-width: 1200px;
		position: relative;
		left: 0;
		right: 0;
		margin: auto;
		top: -30px;
		border-bottom: 0px solid #f9f9f9;
	}
	#nav_sub ul li a {
		padding: 0px 0px 0px 0px;
		color: #333;
	}
	#nav_sub ul li {
		border-right: 1px solid #f9f9f9;
		border-bottom: 1px solid #f9f9f9;
		margin: 0;
		height: 35px;
		padding: 0px 0px 0px 0px;
		font-size: 11px;
		width: 33.33333%;
		float: left;
		/*display:inline-block;
    *display:inline;*/
		/*zoom:1; /*for IE6-7*/
		position: relative;
		line-height: 35px; /*This determines the height of the menu*/
		/*vertical-align:middle;
    transition:background-color 0.2s;
    outline:none;
	-moz-user-select:none;
    -webkit-user-select: none;
    -ms-user-select: none;*/
	}

	/*.content_img{ position:relative; display:table; width:100%; left:0%; margin-left:0%;}*/
}
</style>

<!--모바일메뉴종료-->
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
</style>
<style>
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
</style>


<style>
#wrap_sub img {
	width: auto !important;
	display: inline-block !important;
}
</style>
<script type="text/javascript">
	$(function() {
		gnb(1, 3);
	})
</script>

<Script language="javascript">
	
</Script>


</head>
<body class="main_bg">


	<div id="wrap">
		<!-- wrapper -->
		<div id="wrapper">

			<div class="contents-box">
				<div class="visual">

					<div class="subAllContent">
						<div class="top_fix_bg">
							<div class="noto c_w f18 letter_sp10 fix_text">
								HANSUNG <span class="fw100">COUNTRY CLUB</span>
							</div>
						</div>

						<!-----------sub---------->



						<div id="nav_sub" class="noto">
							<ul class="menu1">
								<li class="nav_sub cl-effect-3"
									style="width: 0px !important; margin: 0px; padding: 0px; border: 0px;"></li>
								<li class="nav_sub cl-effect-3"
									style="width: 0px !important; margin: 0px; padding: 0px; border: 0px;"></li>
								<li class="nav_sub  cool-link3"><a
									href="${pageContext.request.contextPath }/resinfo">예약안내</a></li>
								<li class="nav_sub  cool-link3"><a
									href="${pageContext.request.contextPath }/resnetroot">인터넷예약방법</a></li>
								<li class="nav_sub cool-link3"><a
									href="${pageContext.request.contextPath }/resmobroot">모바일예약방법</a></li>
								<li class="nav_sub cool-link3"><a
									href="${pageContext.request.contextPath}/netres">인터넷예약</a></li>
								<li class="nav_sub cool-link3"><a
									href="${pageContext.request.contextPath}/rescancel">예약확인/취소</a></li>
								<li class="nav_sub  cool-link3"><a
									href="${pageContext.request.contextPath }/resreg">위약규정</a></li>

							</ul>




							<div style="clear: both;"></div>

						</div>
						<div class="clear_fix"></div>

						<!-----------sub---------->
						<div class="subTrue">
							<!-- True Content start -->

							<div class="subContent">
								<div class="page_navi">
									<span><img
										src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
									<span><a href="/index.asp">홈</a></span> <span><img
										src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
									<span><a href="/html/reserve/reserve01.asp">인터넷예약</a></span> <span><img
										src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
									<span><a href="/html/reserve/reserve01.asp">인터넷신청</a></span> <span><img
										src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
									<span class="thispage">예약확인/취소</span>
								</div>
								<div class="subTitAll">
									<div class="subTitArea">
										<img
											src="${pageContext.request.contextPath }/images/subTit/reser03.jpg"
											alt="예약확인취소" />
									</div>

								</div>
								<div class="subTxtArea">
									<div style="padding-bottom: 100px;">
										<!-- 게시판 리스트 시작 -->
										<form action="${pageContext.request.contextPath }/resdelete"
											method="post">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0" class="memboard">
												<tr style="background: #f7f8fa;">
													<th width="45" class="tline">순번</th>
													<th width="130" class="tline">예약일자</th>
													<th width="80" class="tline">예약시간</th>
													<th class="tline">코스</th>
													<th width="150" class="tline">등록일시</th>
													<th width="140" class="tline">처리</th>
												</tr>

												<c:forEach var="res" items="${resList }" varStatus="i">
														 <c:if test="${res.resId == sessionScope.loginMember.id}">
													<tr>
														<td style="text-align: center;">${i.count}</td>
														<td style="text-align: center;">${fn:substring(res.resResdate,0,10) }</td>
														<td style="text-align: center;">${res.resPlaytime }</td>
														<td style="text-align: center;">${res.resCosname }</td>
														<td style="text-align: center;">${fn:substring(res.resMydate,0,10) }</td>
														<td style="text-align: center;"><button type="button"
																onclick="del(${res.resCode})">예약취소</button></td>
													</tr>
													</c:if>
													
												</c:forEach>																							
											</table>
										</form>
									</div>
								</div>
							</div>
							<script type="text/javascript">
							function del(resCode) {
								
							var con = confirm( "선택한 예약을 삭제하시겠습니까?");
							if(con){
								alert("삭제!");
								location.href = '${pageContext.request.contextPath}/resdelete?resCode='+resCode;
							}else{
								alert("삭제 취소!");
								return;
								}
							}
							</script>
							<div class="subBot">
								<!-- -->
							</div>
						</div>
					</div>
					<!-- //True Content end -->
				</div>


			</div>

		</div>
	</div>
</body>
</html>