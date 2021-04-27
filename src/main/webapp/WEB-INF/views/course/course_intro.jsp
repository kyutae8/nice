<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

#on_nav_new4 {
	background: #none !important;
	border-top: 2px solid #74653e !important;
}
</style>
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

				<div id="nav_sub" class="noto">
					<ul class="menu4">
						<li class="nav_sub cool-link3"><a class="on" href="${pageContext.request.contextPath }/course/intro">코스소개</a></li>
						<li class="nav_sub cool-link3"><a href="${pageContext.request.contextPath }/course/info">코스공략</a></li>
						<li class="nav_sub cool-link3"><a
							href="${pageContext.request.contextPath }/course/gallery">코스갤러리</a></li>
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
								src="${pageContext.request.contextPath}/images/icon/ico_h.gif" /></span> <span><a
								href="${pageContext.request.contextPath}/main">홈</a></span> <span><img
								src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span> <span><a
								href="${pageContext.request.contextPath }/course/intro">코스소개</a></span> <span><img
								src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span> <span
								class="thispage">코스소개</span>
						</div>
						<div class="subTitAll">
							<div class="subTitArea">
								<img
									src="${pageContext.request.contextPath}/images/subTit/course01.jpg"
									alt="코스소개" />
								<map name="Map" id="Map">
									<area shape="circle" coords="559,516,12"
										href="javascript:toInfo('Orange', 5)" alt="오렌지5번홀" title="오렌지5번홀" />
									<area shape="circle" coords="579,545,12"
										href="javascript:toInfo('Orange', 2)" alt="오렌지2번홀" title="오렌지2번홀" />
									<area shape="circle" coords="469,507,11"
										href="javascript:toInfo('Orange', 3)" alt="오렌지3번홀" title="오렌지3번홀" />
									<area shape="circle" coords="658,507,12"
										href="javascript:toInfo('Orange', 1)" alt="오렌지1번홀" title="오렌지1번홀" />
									<area shape="circle" coords="460,478,12"
										href="javascript:toInfo('Orange', 4)" alt="오렌지4번홀" title="오렌지4번홀" />
									<area shape="circle" coords="643,265,11"
										href="javascript:toInfo('Green', 2)" alt="그린2번홀" title="그린2번홀" />
									<area shape="circle" coords="498,374,12"
										href="javascript:toInfo('Orange', 7)" alt="오렌지7번홀" title="오렌지7번홀" />
									<area shape="circle" coords="586,461,13"
										href="javascript:toInfo('Orange', 8)" alt="오렌지8번홀" title="오렌지8번홀" />
									<area shape="circle" coords="720,284,12"
										href="javascript:toInfo('Green', 7)" alt="그린7번홀" title="그린7번홀" />
									<area shape="circle" coords="642,136,12"
										href="javascript:toInfo('Green', 4)" alt="그린4번홀" title="그린4번홀" />
									<area shape="circle" coords="625,447,13"
										href="javascript:toInfo('Blue', 2)" alt="블루2번홀" title="블루2번홀" />
									<area shape="circle" coords="537,201,12"
										href="javascript:toInfo('Blue', 6)" alt="블루6번홀" title="블루6번홀" />
									<area shape="circle" coords="671,397,11"
										href="javascript:toInfo('Blue', 1)" alt="블루1번홀" title="블루1번홀" />
									<area shape="circle" coords="525,426,12"
										href="javascript:toInfo('Orange', 6);" alt="오렌지6번홀" title="오렌지6번홀" />
									<area shape="circle" coords="774,400,13"
										href="javascript:toInfo('Green', 9)" alt="그린9번홀" title="그린9번홀" />
									<area shape="circle" coords="723,381,11"
										href="javascript:toInfo('Green', 1)" alt="그린1번홀" title="그린1번홀" />
									<area shape="circle" coords="678,456,13"
										href="javascript:toInfo('Orange', 9);" alt="오렌지9번홀" title="오렌지9번홀" />
									<area shape="circle" coords="769,308,13"
										href="javascript:toInfo('Green', 8)" alt="그린8번홀" title="그린8번홀" />
									<area shape="circle" coords="579,415,11"
										href="javascript:toInfo('Blue', 3)" alt="블루3번홀" title="블루3번홀" />
									<area shape="circle" coords="567,213,12"
										href="javascript:toInfo('Blue', 7)" alt="블루7번홀" title="블루7번홀" />
									<area shape="circle" coords="552,285,14"
										href="javascript:toInfo('Blue', 5)" alt="블루5번홀" title="블루5번홀" />
									<area shape="circle" coords="683,282,11"
										href="javascript:toInfo('Green', 6)" alt="그린6번홀" title="그린6번홀" />
									<area shape="circle" coords="633,206,12"
										href="javascript:toInfo('Green', 5)" alt="그린5번홀" title="그린5번홀" />
									<area shape="circle" coords="611,289,11"
										href="javascript:toInfo('Blue', 8)" alt="블루8번홀" title="블루8번홀" />
									<area shape="circle" coords="675,356,12"
										href="javascript:toInfo('Blue', 9)" alt="블루9번홀" title="블루9번홀" />
									<area shape="circle" coords="573,342,12"
										href="javascript:toInfo('Blue', 4)" alt="블루4번홀" title="블루4번홀" />
									<area shape="circle" coords="603,168,13"
										href="javascript:toInfo('Green', 3)" alt="그린3번홀" title="그린3번홀" />
								</map>
							</div>

						</div>
						<div class="subTxtArea">
							<img
								src="${pageContext.request.contextPath}/course/images/intro/course_intro.jpg"
								usemap="#Map">
						</div>
						<!-- //True Content end -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<form id="toInfo" action="${pageContext.request.contextPath}/course/info" method="post">
<input type="hidden" name="courseName" id="courseName">
<input type="hidden" name="holeNo" id="holeNo">
</form>
<script type="text/javascript">
function toInfo(targetCourseName, targetHoleNo) {
	$("#courseName").val(targetCourseName);
	$("#holeNo").val(targetHoleNo);
	$("#toInfo").submit();
}
</script>