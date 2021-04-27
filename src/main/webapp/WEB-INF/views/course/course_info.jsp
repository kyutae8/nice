<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script language="JavaScript">
<!--
	function _open(img) {
		document.all.imgpop.src = img;
		document.all.imgpop.style.display = "block";
		document.all.gallery.style.display = "block";
	}

	function _close() {
		document.all.imgpop.style.display = "none";
		document.all.gallery.style.display = "none";
	}
	-->
</script>
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
						<li class="nav_sub cool-link3"><a class="on"
							href="${pageContext.request.contextPath }/course/info">코스공략</a></li>
						<li class="nav_sub cool-link3"><a
							href="${pageContext.request.contextPath }/course/gallery">코스갤러리</a></li>
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
							<span><img
								src="${pageContext.request.contextPath }/images/icon/ico_h.gif"/></span> <span><a
								href="${pageContext.request.contextPath }/main">홈</a></span> <span><img
								src="${pageContext.request.contextPath }/images/icon/ico_I.gif"/></span> <span><a
								href="${pageContext.request.contextPath }/course/intro">코스소개</a></span> <span><img
								src="${pageContext.request.contextPath }/images/icon/ico_I.gif"/></span> <span
								class="thispage">코스공략</span>
						</div>
						<div class="subTitAll">
							<div class="subTitArea">
								<img
									src="${pageContext.request.contextPath }/images/subTit/course02.jpg"
									alt="코스공략" />
							</div>

						</div>
						<div class="subTxtArea">
							<!-- 코스시작 -->

							<div class="tableAll" style="padding-bottom: 50px;">
								<div class="tebArea">
									<c:forEach var="course" items="${courseList }">
									<div id="${course.courseName }CourseBtn" class="courseBtn" style="margin-right: 14px;">
										<span class="tebOn_l"> <!-- -->
										</span> <span class="tebOn_m"> <a href="javascript:changeCurrentCourse('${course.courseName }');">
											${course.courseName } Course</a></span> <span class="tebOn_r"> <!-- -->
										</span>
									</div>
									</c:forEach>
								</div>
								<div id="holeBtnArea" class="courseTeb"></div>
								<div id="holeContentArea" class="courseContent">
									<!--gallery end -->
								</div>

							</div>
						</div>
						<!--//코스끝 -->
					</div>
					<!-- //True Content end -->
					<div class="h50 clear_fix"></div>

				</div>
			</div>
		</div>
	</div>
</div>
<script id="holeBtnTemplate" type="text/x-handlebars-template">
{{#each .}}
<span class="holeBtn" id="{{HOLE_NO}}Btn">
<a href="javascript:changeCurrentHole({{HOLE_NO}})" style="cursor: hand">{{HOLE_NO}}H PAR{{HOLE_PAR}}</a>
</span>
{{/each}}
</script>
<script id="holeContentTemplate" type="text/x-handlebars-template">
<div class="courseImg">
	<img src="${pageContext.request.contextPath }/course/images/info/course/{{hole.holePicture}}"
		alt="홀사진">
</div>
<div class="courseTable">
	<div id="gallery">
		<img id="imgpop" src="#" width="653px" height="369px"
			align="middle" border="0" style="display: none"
		onclick="_close();" alt="클릭하면 이미지가 사라집니다.">
</div>
<table width="285" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td
			style="padding: 10px 5px 0px 7px; background: #fff; font-size: 20px; line-height: 22px; font-weight: bold; font-family: arial;">
			{{hole.holeCourseName}} Course {{hole.holeNo}}Hole
		</td>

	</tr>
	<tr>
		<td
			style="padding: 20px 5px 10px 10px; background: #fff; font-size: 12px; line-height: 18px; height: 250px;"
			valign="top">{{hole.holeDetail}}</td>

	</tr>
	<tr>
		<td style="padding-bottom: 20px;" valign="top">
			<div class="distBox">
				<table class="courseinfo">
					<thead>
						<tr>
							<th class="top col14">Blue</th>
							<th class="top col14">White</th>
							<th class="top col14">Gold</th>
							<th class="top col14">Red</th>
							<th class="top col14">PAR</th>
							<th class="top col14">HDCP</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="bottom">{{hole.holeBlue}}M</td>
							<td class="bottom">{{hole.holeWhite}}M</td>
							<td class="bottom">{{hole.holeGold}}M</td>
							<td class="bottom">{{hole.holeRed}}M</td>
							<td class="bottom">{{hole.holePar}}</td>
							<td class="bottom">{{hole.holeHdcp}}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</td>

	</tr>
	<tr>
		<td height="110"
			background="${pageContext.request.contextPath }/course/images/info/course/course_img_bg.gif"
			style="padding-top: 14px;">
			<table width="269" border="0" align="center"
				cellpadding="4" cellspacing="0">
				<tr>
					{{#each courseGalleryList}}
					<td><a style="cursor: hand"><img
							src="${pageContext.request.contextPath }/course/images/info/holeimg/{{courseGalleryPicture}}_a.jpg"
							width="85" height="55" border="0"
							onclick="_open('${pageContext.request.contextPath }/course/images/info/holeimg/{{courseGalleryPicture}}.jpg');" /></a></td>
					{{/each}}
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>
</script>
<script type="text/javascript">
	var courseName = "${courseName}";
	var holeNo = ${holeNo};
	setCurrentCourse(courseName);
	setCurrentHole(courseName, holeNo);
	
	function setCurrentCourse(currentCourseName) {
		$(".courseBtn").addClass("tebOff");
		$(".courseBtn").removeClass("tebOn");
		$("#"+currentCourseName+"CourseBtn").addClass("tebOn");
		$("#"+currentCourseName+"CourseBtn").removeClass("tebOff");
		
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/course/get_holeList?courseName="+currentCourseName,
			async: false,
			dataType: "json",
			success: function(json) {
				var template = Handlebars.compile($("#holeBtnTemplate").html());
				$("#holeBtnArea").html(template(json));
			},
			error : function(xhr) {
				alert("[에러] 홀 정보를 가져오는 데 실패했습니다. 에러코드 = "+xhr.getStatus());
			}
		});
	}
	
	function changeCurrentCourse(changeCourseName) {
		courseName = changeCourseName;
		setCurrentCourse(courseName);
		setCurrentHole(courseName, 1);
	}
	
	function setCurrentHole(currentCourseName, currentHoleNo) {
		$(".holeBtn").addClass("cbox");
		$(".holeBtn").removeClass("cbox_on");
		$("#"+currentHoleNo+"Btn").removeClass("cbox");
		$("#"+currentHoleNo+"Btn").addClass("cbox_on");
		
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/course/get_holeContent?courseName="+currentCourseName+"&holeNo="+currentHoleNo,
			async: false,
			dataType: "json",
			success: function(json) {
				var template = Handlebars.compile($("#holeContentTemplate").html());
				$("#holeContentArea").html(template(json));
			},
			error: function(xhr) {
				alert("[에러] 홀 정보를 가져오는 데 실패했습니다. 에러코드 = "+xhr.getStatus());
			}
		})
	}
	
	function changeCurrentHole(changeHoleNo) {
		holeNo = changeHoleNo;
		setCurrentHole(courseName, holeNo);
	}
</script>
<!-- //wrapper -->