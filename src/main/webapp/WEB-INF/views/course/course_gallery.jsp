<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
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


<div style="clear: both;"></div>
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
							<li class="nav_sub cool-link3"><a href="${pageContext.request.contextPath }/course/intro">코스소개</a></li>
							<li class="nav_sub cool-link3"><a href="${pageContext.request.contextPath }/course/info">코스공략</a></li>
							<li class="nav_sub cool-link3"><a class="on" href="${pageContext.request.contextPath }/course/gallery">코스갤러리</a></li>
						</ul>
						<div style="clear: both;"></div>

					</div>
					<div class="clear_fix"></div>

					<!-----------sub---------->


					<div class="subTrue">
						<!-- True Content start -->

						<!-- True Content start -->

						<div class="subContent">
							<div class="page_navi">
								<span><img src="${pageContext.request.contextPath}/images/icon/ico_h.gif" /></span> <span><a
									href="${pageContext.request.contextPath}/main">홈</a></span> <span><img
									src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span> <span><a>시설소개</a></span> <span><img
									src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span> <span class="thispage">코스갤러리</span>
							</div>
							<div class="subTitAll">
								<div class="subTitArea">
									<img src="${pageContext.request.contextPath}/images/subTit/course03.jpg" alt="코스갤러리" />
								</div>

							</div>

							<div class="tableAll" style="padding-bottom: 50px;">
								<div class="tebArea">
									<c:forEach var="course" items="${courseList }">
									<div id="${course.courseName }Btn" class="courseBtn" style="margin-right: 14px;">
										<span class="tebOn_l"> <!-- -->
										</span> <span class="tebOn_m">
										<a href="javascript:changeCurrentCourse('${course.courseName }')">${course.courseName } Course</a></span> <span class="tebOn_r"> <!-- -->
										</span>
									</div>
									</c:forEach>
								</div>

								<!-- 메인슬라이드 종료{ -->
								<div class="h10"></div>
								<!-- 메인슬라이드 시작{ -->
								<h2 class="sound_only">메인슬라이드</h2>
								<div id="example8" class="slider-pro">
									<%-- 슬라이드 영역 --%>
								</div>
							</div>
							<!-- //True Content end -->
						</div>
					</div>
				</div>
			</div>
			<!-- //wrapper -->
		</div>
	</div>
</div>
<script type="text/javascript">
</script>
<script id="courseGalleryTemplate" type="text/x-handlebars-template">
<div class="sp-slides">
{{#each .}}
	<div class="sp-slide">
		<img src="${pageContext.request.contextPath}/course/images/info/holeimg/{{courseGalleryPicture}}.jpg" style="" alt="이동" width="100%" />
	</div>
{{/each}}
</div>
<div class="sp-thumbnails">
{{#each .}}
	<img class="sp-thumbnail" src="${pageContext.request.contextPath}/course/images/info/holeimg/{{courseGalleryPicture}}.jpg"/>
{{/each}}
</div>
</script>
<script type="text/javascript">
	var courseName = "Orange";
	setCurrentCourse(courseName);
	
	function addSliderPro() {
		$('#example8').sliderPro({
			width : 1200,
			height : 800,
			fade : true,
			arrows : true,
			buttons : false,
			fullScreen : true,
			shuffle : false,
			smallSize : 500,
			mediumSize : 1000,
			largeSize : 3000,
			thumbnailArrows : true,
			autoplay : false
		});
	}
	
	function setCurrentCourse(currentCourseName) {
		$(".courseBtn").addClass("tebOff");
		$(".courseBtn").removeClass("tebOn");
		$("#"+currentCourseName+"Btn").addClass("tebOn");
		$("#"+currentCourseName+"Btn").removeClass("tebOff");
		
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/course/get_courseGallery?courseName="+currentCourseName,
			dataType: "json",
			async: false,
			success: function(json) {
				var template = Handlebars.compile($("#courseGalleryTemplate").html());
				$("#example8").html(template(json));
				addSliderPro();
			},
			error: function(xhr) {
				alert("[에러] 갤러리 정보를 가져오는 데 실패했습니다. 에러코드 = "+xhr.getStatus());
			}
		});
		
		addSliderPro();
	}
	
	function changeCurrentCourse(changeCourseName) {
		courseName = changeCourseName;
		$("#example8").sliderPro('destroy');
		setCurrentCourse(courseName);
	}
</script>