<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="header">
	<script>
		$(function() {
			$(".cool-link,.cool-link3,.cool-link4,.slider-pro,.logo_eff")
					.fadeIn(500, function() {
						$(this).animate({
							"margin-top" : "0px",
							"opacity" : "1"

						}, 1000);
					});

			$(
					".cool-link a,.cool-link3 a,.cool-link4 a,.slider-pro a,.logo_eff")
					.click(function() {
						var url = $(this).attr("href");
						$("body").animate({
							"opacity" : "0",
							"margin-top" : "-2%"

						}, 500, function() {
							document.location.href = url;
						});

						return false;
					});
		});
	</script>
	<style>
.top_logo {
	width: 100%;
	position: relative;
	background: #fff;
	height: 120px;
	border-bottom: 1px solid #f1f1f1;
	z-index: 10000000;
}

.logo_main {
	margin-top: 20px;;
}

@media only screen and (max-width: 1350px) {
	.top_logo {
		width: 100%;
		position: relative;
		top: 0px;
		padding: 20px 0 20px 0;
		z-index: 10000000;
		left: 0px;
		border-bottom: 1px solid #f1f1f1;
	}
	.logo_main {
		margin: 0 auto;
		display: block;
	}
}
</style>
	<div
		style="width: 100%; background: #c39f78; height: 40px; position: relative;"
		class="mayHide2">
		
		<div style="position: absolute; right: 5%; top: 10px;" class="f16">
		<c:if test="${sessionScope.loginMember!=null }">
		 <c:if test="${sessionScope.loginMember.status eq 9 }"> 
			<li class="left_pull c_w"><a href="${pageContext.request.contextPath }/admin/index"
				class="c_w">관리자</a>&nbsp;<span
				style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>
			 	</c:if> 
			<li class="left_pull c_w"><a href="${pageContext.request.contextPath }/logout"
				class="c_w">로그아웃</a>&nbsp;<span
				style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>
			<li class="left_pull c_w"><a href="${pageContext.request.contextPath }/mypage"
				class="c_w">회원정보수정</a></li>
		</c:if>
		<c:if test="${sessionScope.loginMember==null }">		
			<li class="left_pull c_w"><a href="${pageContext.request.contextPath }/login"
				class="c_w">로그인</a>&nbsp;<span
				style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>
			<li class="left_pull c_w"><a href="${pageContext.request.contextPath }/join01"
				class="c_w">회원가입</a></li>
		</c:if>
				
		</div>
	</div>
	<div class="mayHide2 wow fadeInUp top_logo">
		<div style="max-width: 1400px; margin: 0 auto;" class="noto">
			<center>
				<a href="${pageContext.request.contextPath }/"><img src="${pageContext.request.contextPath }/img_re/logo_w.png" alt="로고"
					style="" class="logo_main" /></a>
			</center>
			<div style="position: absolute; right: 5%; top: 50px;" class="f16">
			<c:choose>
			<c:when test="${sessionScope.loginMember != null }">
				<li class="left_pull"><a href="${pageContext.request.contextPath }/rescancel">예약확인/취소</a>
					&nbsp;<span style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;
				</li>
			</c:when>
			<c:otherwise>
			<li class="left_pull"><a href="${pageContext.request.contextPath }/login">예약확인/취소</a>
					&nbsp;<span style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;
				</li>
			</c:otherwise>
			</c:choose>
				<li class="left_pull"><a href="${pageContext.request.contextPath }/resinfo">&nbsp;예약안내</a>&nbsp;<span
					style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>
				<li class="left_pull"><a href="${pageContext.request.contextPath }/resreg">&nbsp;위약규정</a></li>
			</div>
		</div>
	</div>

	<header class="scroll-menu" id="nav">
		<div id="wrap" class="noto new_none mayHide2">
			<div id="header">
				<div id="nav_new">
					<div class="nav_new">
						<ul id="menu_new" class="menu_new">

							<li id="on_nav_new1" class="cool-link4"><a
								href="${pageContext.request.contextPath }/resinfo" class="color_main"><span
									class="main_color2">예약</span></a>
								<ul>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/resinfo">예약안내</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/resnetroot">인터넷 예약 방법</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/resmobroot">모바일 예약 방법</a></li>
									<c:choose>
									<c:when test="${sessionScope.loginMember!=null }">
									<li class="cool-link3"><a href="${pageContext.request.contextPath }/netres">인터넷예약</a></li>
									<li class="cool-link3"><a href="${pageContext.request.contextPath }/rescancel">예약확인/취소</a></li>
									</c:when>
									<c:otherwise>
									<li class="cool-link3"><a href="${pageContext.request.contextPath }/login">인터넷예약</a></li>
									<li class="cool-link3"><a href="${pageContext.request.contextPath }/login">예약확인/취소</a></li>
									</c:otherwise>
									</c:choose>
									<li class="cool-link3"><a href="${pageContext.request.contextPath }/resreg">위약규정</a></li>
					

								</ul></li>
							<li id="on_nav_new2" class="cool-link4"><a
								href="${pageContext.request.contextPath }/notice" class="color_main">회원서비스</a>
								<ul>
									<div style="max-width: 1350px;">
										<li class="cool-link3"><a
											href="${pageContext.request.contextPath }/notice">공지사항</a></li>
										<li class="cool-link3"><a
											href="${pageContext.request.contextPath }/event">이벤트</a></li>
										<li class="cool-link3"><a
											href="${pageContext.request.contextPath }/qna">자주하는질문</a></li>
									</div>
								</ul></li>
							<li id="on_nav_new3" class="cool-link4"><a
								href="${pageContext.request.contextPath }/intro/info" class="color_main">운영안내</a>
								<ul>
									<div style="max-width: 1350px;">
										<li class=" cool-link3"><a href="${pageContext.request.contextPath }/intro/info">이용안내</a></li>
										<li class=" cool-link3"><a href="${pageContext.request.contextPath }/intro/pay_info">이용요금안내</a></li>
										<li class=" cool-link3"><a href="${pageContext.request.contextPath }/intro/join_info">입회절차</a></li>
									</div>
								</ul></li>


							<li id="on_nav_new4" class="cool-link4"><a
								href="${pageContext.request.contextPath }/course/intro" class="color_main">코스소개</a>
								<ul>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/course/intro">코스소개</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/course/info">코스공략</a></li>
									<li class="cool-link3"><a
										href="${pageContext.request.contextPath }/course/gallery">코스갤러리</a></li>
								</ul></li>


							<li id="on_nav_new5" class="cool-link4"><a
								href="${pageContext.request.contextPath }/intro/intro" class="color_main">클럽소개</a>
								<ul>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/intro/intro">소개및개요</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/intro/ceo">인사말</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/intro/map">오시는길</a></li>

								</ul></li>

							<li id="on_nav_new6" class="cool-link4"><a
								href="${pageContext.request.contextPath }/estab/intro" class="color_main">시설소개</a>
								<ul>
									<!--<li class=" cool-link3"><a href="/sub/sub15.asp">클럽하우스</a></li>-->
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/front_lobby">프론트/로비</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/locker_sauna">락카/사우나</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/golfshop">골프샵</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/restaurant">레스토랑</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/banquetroom">단체연회실</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/viproom">VIP룸</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/start_house">스타트하우스</a></li>
									<li class=" cool-link3"><a href="${pageContext.request.contextPath }/estab/teehouse">그늘집</a></li>
								</ul></li>

						</ul>
					</div>
					<c:if test="${sessionScope.loginMember!=null }">
					<a href="${pageContext.request.contextPath}/netres"
						style="width: 180px; position: absolute; right: 5%; top: 5px; text-align: center; display: block; float: left; height: 50px; line-height: 50px; color: #fff; background: #86766a;"
						class="f16">인터넷예약</a>
					</c:if>
					<c:if test="${sessionScope.loginMember==null }">
					<a href="${pageContext.request.contextPath}/login"
						style="width: 180px; position: absolute; right: 5%; top: 5px; text-align: center; display: block; float: left; height: 50px; line-height: 50px; color: #fff; background: #86766a;"
						class="f16">인터넷예약</a>
					</c:if>


				</div>
			</div>
		</div>
		<script type="text/javascript">
			var dropdown = new TINY.dropdown.init("dropdown", {
				id : 'menu_new',
				active : 'menu_newhover'
			});
		</script>
	</header>
</div>

<!--메뉴종료-->
<script>
	$(document).ready(function() {
		$("#content div").hide(); // Initially hide all content
		$("#tab_m_menus li:first").attr("id", "current"); // Activate first tab_m_menu
		$("#content div:first").fadeIn(250), "easeOutBack"; // Show first tab_m_menu content

		$('#tab_m_menus a').click(function(e) {
			e.preventDefault();
			$("#content div").hide(); //Hide all content
			$("#tab_m_menus li").attr("id", ""); //Reset id's
			$(this).parent().attr("id", "current"); // Activate this
			$('#' + $(this).attr('title')).fadeIn(200), "easeOutBack"; // Show content for current tab_m_menu
		});
	});
</script>
<div class="m_on_footers"
	style="position: fixed; width: 100%; background: #78725d; z-index: 100; height: 80px; overflow: hidden; z-index: 1000;">
	<center>
		<a onClick="lay_open('lay9');return false;" href="javascript:void(0);"><img
			src="${pageContext.request.contextPath }/img_re/m_menu.png" alt="메뉴"
			style="position: absolute; left: 15px; top: 15px; width: 60px;" /></a><a
			href="${pageContext.request.contextPath }/main"><img src="${pageContext.request.contextPath }/img_re/logo_w2.png" alt="로고"
			width="130px;" style="margin-top: 15px;" /></a>
	</center>
	<a href="tel:031-284-1122"><img src="${pageContext.request.contextPath }/img_re/tel.png" alt="전화"
		style="position: absolute; right: 15px; top: 15px; width: 60px;" /></a>
</div>
<div class="pop-lay8" id="lay8">
	<div class="pop-container8">
		<div class="pop-conts8 wow fadeInDown">
			<div class="btn-r8">
				<a class="cbtn8" href="#"><img src="${pageContext.request.contextPath }/img_re/close_login.jpg"
					style="width: 60px;"></a>
			</div>
			<!--// content-->
		</div>
	</div>
</div>
<div class="pop-lay9 noto " id="lay9">
	<div class="pop-container9">
		<div class="pop-conts9">
			<a class="cbtn9" href="#"><img src="${pageContext.request.contextPath }/img_re/close_login2.jpg"
				style="width: 60px; z-index: 10000000000000000 !important;"></a>
			<div class="h20"></div>
			<center>
				<a href="${pageContext.request.contextPath }/main"><img src="img_re/logo.png" alt="로고"
					style="margin-right: -18px; width: 150px" /></a>
			</center>
			<div class="h20"></div>
				<li class="left_pull "><a href="html/mypage/login.html"
					class="">로그인</a>&nbsp;<span
					style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>
				<li class="left_pull "><a href="html/mypage/join01.html"
					class="">회원가입</a></li>
			</div>
			<div style="clear: both;"></div>
			<div class="wow fadeInUp">
				<ul id="tab_m_menus" class="left_menu">
					<li><a href="#" title="tab_m_menu1">예약</a></li>
					<li><a href="#" title="tab_m_menu2">회원서비스</a></li>
					<li><a href="#" title="tab_m_menu3">운영안내</a></li>
					<li><a href="#" title="tab_m_menu4">코스소개</a></li>
					<li><a href="#" title="tab_m_menu5">클럽소개</a></li>
					<li><a href="#" title="tab_m_menu6">시설소개</a></li>

					<li style="height: 0px;"></li>
				</ul>
				<div id="content" class="left_menu">
					<div id="tab_m_menu1" class="all_menu_size_m">
						<li class=" cool-link3"><a href="${pageContext.request.contextPath }/resinfo">예약안내</a></li>
						<li class=" cool-link3"><a href="${pageContext.request.contextPath }/resnetroot">인터넷예약방법</a></li>
						<li class=" cool-link3"><a href="${pageContext.request.contextPath }/resmobroot">모바일예약방법</a></li>
						<li class="cool-link3"><a href="${pageContext.request.contextPath }/resnetroot">인터넷예약</a></li>
						<li class="cool-link3"><a href="${pageContext.request.contextPath }/rescancel">예약확인/취소</a></li>
						<li class=" cool-link3"><a href="${pageContext.request.contextPath }/resreg">위약규정</a></li>



					</div>
					<div id="tab_m_menu2" class="all_menu_size_m">
						<li class="cool-link3"><a href="html/members/members01.html">공지사항</a></li>
						<li class="cool-link3"><a href="html/members/members02.html">자주하는질문</a></li>
						<li class="cool-link3"><a href="html/members/members03.html">이벤트</a></li>
						<li class="cool-link3"><a href="html/members/members04.html">명예의전당</a></li>
						<li class="cool-link3"><a href="html/members/members05.html">클럽자료실</a></li>
					</div>
					<div id="tab_m_menu3" class="all_menu_size_m">
						<li class=" cool-link3"><a href="sub/sub6.html">이용안내</a></li>
						<li class=" cool-link3"><a href="sub/sub7.html">이용요금안내</a></li>
						<li class=" cool-link3"><a href="sub/sub8.html">입회절차</a></li>
					</div>
					<div id="tab_m_menu4" class="all_menu_size_m">
						<li class=" cool-link3"><a href="sub/sub9.html">코스소개</a></li>
						<li class=" cool-link3"><a href="sub/course02.html">코스공략</a></li>
						<li class="cool-link3"><a href="sub/gall1/course_gall1.html">코스갤러리</a></li>
					</div>
					<div id="tab_m_menu5" class="all_menu_size_m">
						<li class=" cool-link3"><a href="sub/sub10.html">소개및개요</a></li>
						<li class=" cool-link3"><a href="sub/sub11.html">인사말</a></li>
						<li class=" cool-link3"><a href="sub/sub12.html">연혁</a></li>
						<li class=" cool-link3"><a href="sub/sub13.html">ci소개</a></li>
						<li class=" cool-link3"><a href="sub/sub14.html">오시는길</a></li>
						<li class="cool-link3"><a href="html/company/intro06.html">채용정보</a></li>
					</div>
					<div id="tab_m_menu6" class="all_menu_size_m">
						<li class=" cool-link3"><a href="sub/inter1/sub16.html">프론트/로비</a></li>
						<li class=" cool-link3"><a href="sub/inter2/sub17.html">락카/사우나</a></li>
						<li class=" cool-link3"><a href="sub/inter3/sub18.html">골프샵</a></li>
						<li class=" cool-link3"><a href="sub/inter4/sub19.html">레스토랑</a></li>
						<li class=" cool-link3"><a href="sub/inter5/sub20.html">단체연회실</a></li>
						<li class=" cool-link3"><a href="sub/inter6/sub21.html">VIP룸</a></li>
						<li class=" cool-link3"><a href="sub/inter7/sub22.html">스타트하우스</a></li>
						<li class=" cool-link3"><a href="sub/inter8/sub23.html">그늘집</a></li>
						<li class=" cool-link3"><a href="sub/sub24.html">레스토랑메뉴</a></li>
					</div>

				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
		<div class="btn_quk_warp-r9"></div>
		<!--// content-->
	</div>
</div>
<script type="text/javascript">
	function lay_open(el) {
		var temp = $('#' + el); //레이어의 id를 temp변수에 저장
		var bg = temp.prev().hasClass('bg'); //dimmed 레이어를 감지하기 위한 boolean 변수
		if (bg) {
			$('.lay3').fadeIn(300);
		} else {
			temp.fadeIn(300); //bg 클래스가 없으면 일반레이어로 실행한다.
		}
		temp
				.find(
						'a.cbtn1,a.cbtn2,a.cbtn3,a.cbtn4,a.cbtn5,a.cbtn6,a.cbtn7,a.cbtn8,a.cbtn9,a.cbtn10,a.cbtn11,a.cbtn77')
				.click(
						function(e) {
							if (bg) {
								$(
										'.lay1,.lay2,.lay3,.lay4,.lay5,.lay6,.lay7,.lay8,.lay9,.lay10,.lay11,.lay77')
										.fadeOut(300);
							} else {
								temp.fadeOut(); //'닫기'버튼을 클릭하면 레이어가 사라진다.
							}
							e.preventDefault();
						});
		$(
				'.lay1 bg,.lay2 .bg,.lay3 .bg,.lay4 .bg,.lay5 .bg,.lay6 .bg,.lay7 .bg,.lay8 .bg,.lay9 .bg,.lay10 .bg,.lay11 .bg')
				.click(
						function(e) {
							$(
									'.lay1,.lay2 ,.lay3,.lay4,.lay5,.lay6,.lay7,.lay8,.lay9,.lay10,.lay11,.lay77')
									.fadeOut(300);
							e.preventDefault();
						});
	}
</script>

<!--모바일메뉴종료-->