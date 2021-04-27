<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


	<script>
		// 자바스크립트에서 사용하는 전역변수 선언
		var g5_url = "index-2.html";
		var g5_bbs_url = "bbs.html";
		var g5_is_member = "";
		var g5_is_admin = "";
		var g5_is_mobile = "";
		var g5_bo_table = "";
		var g5_sca = "";
		var g5_editor = "";
		var g5_cookie_domain = "";
	</script>

	<script type="text/javascript">
		$(document).ready(
				function($) {
					$('#example1').sliderPro({
						width : 1980,
						height : 900,
						arrows : true,
						buttons : true,
						waitForLayers : true,
						thumbnailWidth : 200,
						thumbnailHeight : 100,
						thumbnailPointer : true,
						autoplay : false,
						autoScaleLayers : true,
						gotoSlide : function(event) {
						},
						breakpoints : {
							900 : {
								width : 900, // 모바일 메인슬라이드 가로값
								height : 900, // 모바일 메인슬라이드 세로값
								arrows : false,
								thumbnailWidth : 120,
								thumbnailHeight : 50
							}
						}
					});

					slider = $('#example1').data('sliderPro');
					slider.on('gotoSlide', function(event) {
						if (player[idx]) {
							stopVideo(idx);
						}
						//if( $("#player"+idx).length && utubeArr[idx] ){  stopVideo(idx);  }
						idx = event.index + 1;
						clearTimeout(nextTime);
						if (!g5_is_mobile && $("#player" + idx).length
								&& utubeArr[idx]) {
							$('#player' + idx).addClass('hidek'); //$('#player'+idx).hide();
							if (!player[idx]) {
								setTimeout(function() {
									onYouTubeIframeAPIReady();
								}, 1000)
							} else
								startVideo(idx);
						} else
							nextTime = setTimeout(function() {
								slider.nextSlide();
							}, delayTime * 1000);

					});

				});
	</script>
	<script type="text/javascript">
		$(window).ready(function() {

			var max = 1000; //100% 투명할때의 스크롤 값 

			$(window).scroll(function() {

				var scrollPX = $(this).scrollTop();

				if (scrollPX < max) {

					$(".main_effs").css({
						"opacity" : (max - scrollPX) / max
					}, 700, "easeOutQuint");

				} else {

					$(".main_effs").css({
						"opacity" : 0.02
					}, 700, "easeOutQuint");

				}

			});

		});
	</script>

	<div id="">
		<!-- 메인슬라이드 시작{ -->
		<div class="m_on_footers" style="height: 80px;"></div>
		<h2 class="sound_only">메인슬라이드</h2>
		<div id="example1" class="slider-pro ani_fade3 font_rest">
			<div class="sp-slides">
				<div class="sp-slide main_effs" id="sp1">
					<!--<p class="sp-layer hide-medium-screen  mayHide2  c_w f35 fw100"
					data-horizontal="37%" data-vertical="38%"
					data-show-transition="left" data-hide-transition="up" data-show-delay="800" data-hide-delay="100" style="z-index:999;">
					도심속에서 만나는 깊은 자연의 운치
				</p>

		   <p class="sp-layer hide-small-screen mayHide2  c_w f40 en_h fw900"
					data-horizontal="38%" data-vertical="45%"
					data-show-transition="left" data-hide-transition="up" data-show-delay="1200" data-hide-delay="100" style="z-index:999;">
					place of relaxation 


				</p>
           <p class="sp-layer hide-small-screen mayHide2 c_w f40 en_h fw900"
					data-horizontal="44%" data-vertical="52%"
					data-show-transition="left" data-hide-transition="up" data-show-delay="1400" data-hide-delay="100" style="z-index:999;">
					in nature

				</p>-->

					<div class="movie_main hidek mayHide2" id='player1'
						style="z-index: 1;"></div>
					<a href="sub/sub10.html"><img src="img_re/link.png"
						style="width: 100%;" alt="이동" class="link_z" /></a> <a
						class="sp-video movie_mobile"
						href="https://www.youtube.com/embed/5VEvnEwDu0w?rel=0&amp;controls=2"><img
						src="img_re/1.jpg" style="width: 100%;" alt="이동"
						class="movie_mobile" /></a>
				</div>



				<div class="sp-slide main_effs" id="sp2">
					<a href="sub/sub10.html"><img src="img_re/link.png"
						style="width: 100%;" alt="" class="link_z" /></a>
					<p class="sp-layer hide-medium-screen   c_w f35 fw100"
						data-horizontal="37%" data-vertical="38%"
						data-show-transition="left" data-hide-transition="up"
						data-show-delay="800" data-hide-delay="100" style="z-index: 999;">
						도심속에서 만나는 깊은 자연의 운치</p>

					<p class="sp-layer hide-small-screen   c_w f40 en_h fw900"
						data-horizontal="38%" data-vertical="45%"
						data-show-transition="left" data-hide-transition="up"
						data-show-delay="1200" data-hide-delay="100" style="z-index: 999;">place
						of relaxation</p>
					<p class="sp-layer hide-small-screen  c_w f40 en_h fw900"
						data-horizontal="44%" data-vertical="52%"
						data-show-transition="left" data-hide-transition="up"
						data-show-delay="1400" data-hide-delay="100" style="z-index: 999;">in
						nature</p>

				</div>


				<div class="sp-slide main_effs" id="sp3">
					<a href="sub/sub10.html"><img src="img_re/link.png"
						style="width: 100%;" alt="" class="link_z" /></a>
					<p class="sp-layer hide-medium-screen   c_w f35 fw100"
						data-horizontal="37%" data-vertical="38%"
						data-show-transition="left" data-hide-transition="up"
						data-show-delay="800" data-hide-delay="100" style="z-index: 999;">
						도심속에서 만나는 깊은 자연의 운치</p>

					<p class="sp-layer hide-small-screen   c_w f40 en_h fw900"
						data-horizontal="38%" data-vertical="45%"
						data-show-transition="left" data-hide-transition="up"
						data-show-delay="1200" data-hide-delay="100" style="z-index: 999;">place
						of relaxation</p>
					<p class="sp-layer hide-small-screen  c_w f40 en_h fw900"
						data-horizontal="44%" data-vertical="52%"
						data-show-transition="left" data-hide-transition="up"
						data-show-delay="1400" data-hide-delay="100" style="z-index: 999;">in
						nature</p>
				</div>


			</div>
			<!-- <div class="sp-thumbnails">
			<div class="sp-thumbnail text_center">
				<div class="noto c_w f10">F5 is...</div>
			</div>

			<div class="sp-thumbnail">
				<div class="noto c_w f10 text_center">F5 Specialty</div>
			</div>
            <div class="sp-thumbnail">
				<div class="noto c_w f10 text_center">F5 Know-how</div>
			</div>
            <div class="sp-thumbnail">
				<div class="noto c_w f10 text_center">F5 Heritage & Reputation</div>
			</div>
           </div>-->
		</div>
		<script type="text/javascript">
			var delayTime = 7; //7초 후 다음 슬라이드로 이동(다음 슬라이드까지 대기시간)
			var utubeArr = [];
			utubeArr[1] = '5VEvnEwDu0w'; //--------동영상 모바일은 95라인에 주소맨뒤 바꿔주세요
			//utubeArr[2]='_RZsjDy17po';
			//utubeArr[3]='xAzEBLSl20E';

			//player=[];
			var $width = $(window).width();
			if (!g5_is_mobile && $width < 0) {
				g5_is_mobile = 1;
			}
			$(window).resize(function() {
				$width = $(window).width(); //window.status= $width;
				if (!g5_is_mobile) {
					if ($width < 900) {
						g5_is_mobile = 1;
						if (typeof player[idx] != 'undefined')
							player[idx].pauseVideo();
					} else {
						g5_is_mobile = '';
						if (typeof player[idx] != 'undefined')
							player[idx].playVideo();
					}
				}
			});

			var idx = 1;
			var slider;
			var player = new Array();
			var nextTime;

			if (!g5_is_mobile) {
				var tag = document.createElement('script');
				tag.src = "https://www.youtube.com/iframe_api";
				var firstScriptTag = document.getElementsByTagName('script')[0];
				firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
			}

			function onYouTubeIframeAPIReady() {
				var playerID = 'player' + idx;
				if (!$("#" + playerID).length || !utubeArr[idx])
					return;

				player[idx] = new YT.Player(playerID, {
					width : '1980px',
					height : '1120px',
					videoId : utubeArr[idx],
					playerVars : {
						'start' : 1,
						'rel' : 0,
						'loop' : 1,
						'autoPlay' : 1,
						'playlist' : utubeArr[idx]
					},
					'origin' : 'http://www.seoulbarun-us.co.kr',
					events : {
						'onReady' : onPlayerReady,
						'onStateChange' : onPlayerStateChange
					}
				});
			}

			function onPlayerReady(event) {
				startVideo(idx);
			}
			function onPlayerStateChange(event) {
				if (event.data == YT.PlayerState.ENDED) {
					slider.nextSlide();
					$("#squarek, .sp-thumbnails").show();
				}
			}

			function stopVideo(idx) {
				if (!$(".l1a").hasClass("l1")) {
					$(".l1a").addClass("l1");
					$(".l2a").addClass("l2");
					$(".l3a").addClass("l3");
					$(".l4a").addClass("l4");
					$(".l5a").addClass("l5");
					$("#main_iconk").addClass("main_icon_eff");
				}
				$('#player' + idx).addClass('hidek'); //$('#player'+idx).hide();
				player[idx].stopVideo();
				$("#squarek, .sp-thumbnails").show();
			}
			function startVideo(idx) {
				$("#squarek, .sp-thumbnails").fadeOut();
				$("#sp" + idx).find("hide").hide();
				player[idx].playVideo();
				$('#player' + idx).removeClass('hidek'); //$('#player'+idx).show();
			}
		</script>
		<!-- 메인슬라이드 종료{ -->
		<style>
.m_on_main {
	display: none;
}

@media only screen and (max-width: 900px) {
	.m_on_main {
		display: block;
	}
}
</style>

		<!--------모바일------->
		<script type="text/javascript">
			$(document).ready(function($) {
				$('#example4').sliderPro({
					width : 489,
					height : 472,
					arrows : true,
					buttons : true,
					visibleSize : '100%',
					forceSize : 'fullWidth',
					autoSlideSize : false,
					breakpoints : {
						900 : {
							buttons : false,
							width : 489, // 모바일 메인슬라이드 가로값
							height : 495, // 모바일 메인슬라이드 세로값

						}
					}
				});

				// instantiate fancybox when a link is clicked
				//$( ".slider-pro" ).each(function(){
				//	var slider = $( this );

				//	slider.find( ".sp-image" ).parent( "a" ).on( "click", function( event ) {
				//	event.preventDefault();

				//	if ( slider.hasClass( "sp-swiping" ) === false ) {
				//	var sliderInstance = slider.data( "sliderPro" ),
				//			isAutoplay = sliderInstance.settings.autoplay;

				//	$.fancybox.open( slider.find( ".sp-image" ).parent( "a" ), {
				//	index: $( this ).parents( ".sp-slide" ).index(),
				//	afterShow: function() {
				//		if ( isAutoplay === true ) {
				//			sliderInstance.settings.autoplay = false;
				//			sliderInstance.stopAutoplay();
				//		}
				//	},
				//	afterClose: function() {
				//		if ( isAutoplay === true ) {
				//			sliderInstance.settings.autoplay = true;
				//			sliderInstance.startAutoplay();
				//		}
				//	}

				//	});
				//	}
				//	});
				//});
			});
		</script>
		<style>
.text_warps {
	width: 100%;
	display: block;
	height: 120px;
	font-size: 20px;
	line-height: 120px;
	background: #fff;
	border: 1px solid #f1f1f1;
	position: relative;
	bottom: 0px;
	z-index: 1;
	text-align: center;
	font-weight: 100;
}

@media only screen and (max-width: 900px) {
	.text_warps {
		width: 100%;
		display: block;
		height: 120px;
		font-size: 16px;
		line-height: 120px;
		background: #fff;
		border: 1px solid #f1f1f1;
		position: relative;
		bottom: 0px;
		z-index: 1;
		text-align: center;
		font-weight: 100;
	}
}
</style>
		<div class="h50 clear_fix"></div>
		<div class="h50 mayHide2"></div>
		<div class="ft_res">
			<center>
				<span class="noto f30 fw100 wow fadeInDown">고품격 문화 공간을 지향하는
					클럽하우스</span>
				<div class="h10"></div>
				<span class="noto f30 wow fadeInDown"
					style="text-transform: uppercase;"><b>hansung country
						club</b></span>
			</center>
		</div>
		<div class="h50 clear_fix"></div>
		<div class="h50 mayHide2"></div>
		<div
			style="width: 100%; max-width: 1466px; margin: 0 auto; overflow: hidden; height: auto; position: relative;"
			class=" wow fadeInDown">
			<div id="example4" class="slider-pro bottom_re ani_fade3">
				<div class="sp-slides">
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/front_lobby"><img src="img_re/main1.jpg"
							alt="프론트로비" width="100%" /></a>
						<div class="text_warps">
							<center>
								모던하며 높은 품격이 느껴지는 <b>FRONT&LOBBY </b>
							</center>
						</div>
					</div>
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/locker_sauna"><img src="img_re/main2.jpg"
							alt="사우나시설" width="100%" /></a>
						<div class="text_warps">
							<center>
								인테리어가 모던하고 고급스러운<b> LOCKER&SAUNA </b>
							</center>
						</div>
					</div>
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/golfshop"><img src="img_re/main3.jpg"
							alt="골프샵" width="100%" /></a>
						<div class="text_warps">
							<center>
								럭셔리한 품격을 경험할 수 있는 <b>GOLFSHOP </b>
							</center>
						</div>
					</div>
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/restaurant"><img src="img_re/main4.jpg"
							alt="레스토랑" width="100%" /></a>
						<div class="text_warps">
							<center>
								감동 서비스와 건강을 책임지는<b> RESTAURANT </b>
							</center>
						</div>
					</div>
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/banquetroom"><img src="img_re/main5.jpg"
							alt="연회실" width="100%" /></a>
						<div class="text_warps">
							<center>
								모던하며 높은 품격이 느껴지는 <b>BANQUET ROOM </b>
							</center>
						</div>
					</div>
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/viproom"><img src="img_re/main6.jpg"
							alt="vip룸" width="100%" /></a>
						<div class="text_warps">
							<center>
								모던하며 높은 품격이 느껴지는 <b>VIP ROOM </b>
							</center>
						</div>
					</div>
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/start_house"><img src="img_re/main7.jpg"
							alt="스타스하우스" width="100%" /></a>
						<div class="text_warps">
							<center>
								기분 좋은 시작을 위한 <b>START HOUSE </b>
							</center>
						</div>
					</div>
					<div class="sp-slide">
						<a href="${pageContext.request.contextPath }/estab/teehouse"><img src="img_re/main8.jpg"
							alt="그늘집" width="100%" /></a>
						<div class="text_warps">
							<center>
								자연의 정취가 느껴지는 <b>TEE HOUSE </b>
							</center>
						</div>
					</div>

				</div>
			</div>

			<div class="h50 clear_fix mayHide2"></div>
			<div class="h50 mayHide2"></div>
		</div>
		<div class="clear_fix"></div>
		<style>
.couse {
	width: 100%;
	overflow: hidden;
}

.co1 {
	background: url(img_re/co1.jpg) center;
	opacity: 0.2;
	width: 100%;
	height: 1200px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.co1:hover {
	background: #;
	opacity: 0.1;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
}

.co2 {
	background: url(img_re/co2.jpg) center;
	opacity: 0.2;
	width: 100%;
	height: 1200px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.co2:hover {
	background: url(img_re/co2.jpg) center;
	opacity: 0.1;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
}

.co3 {
	background: url(img_re/co3.jpg) center;
	opacity: 0.2;
	width: 100%;
	height: 1200px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.co3:hover {
	background: url(img_re/co3.jpg) center;
	opacity: 0.1;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
}

.co_w {
	width: 33.3333333%;
	background: #000;
	height: 1200px;
	position: relative;
	overflow: hidden !important;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.co_w:hover {
	width: 33.333333%;
	background: #86766a;
	height: 1200px;
	position: relative;
	overflow: hidden !important;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease
}

.co_img {
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	margin: auto;
	max-width: 225px;
	max-height: 300px;
	overflow: hidden;
	z-index: 1;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	cursor: pointer;
}

.co_img:hover {
	position: absolute;
	display: block;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	margin: auto;
	max-width: 225px;
	max-height: 480px;
	overflow: hidden;
	z-index: 1;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.w_lines {
	width: 80px;
	height: 1px;
	background: #f1f1f1;
	margin: 0 auto;
}

.box_csss {
	width: 100%;
	max-width: 220px;
	margin: 0 auto;
	border: 1px solid #fff;
	height: 50px;
	line-height: 40px;
	padding: 5px;
	text-align: center;
	display: block;
	color: #fff;
	font-size: 16px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.box_csss:hover {
	width: 100%;
	max-width: 220px;
	padding-left: 10%;
	border: 1px solid #f2ccb4;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	color: #f2ccb4;
	font-size: 16px;
	background: rgba(255, 255, 255, 0.1);
}

@media only screen and (max-width: 900px) {
	.co1 {
		background: url(img_re/co1.jpg) center;
		opacity: 0.2;
		width: 100%;
		height: 480px;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
	}
	.co1:hover {
		background: #;
		opacity: 0.1;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
		transform: scale(1.1);
		-webkit-transform: scale(1.1);
		-moz-transform: scale(1.1);
		-ms-transform: scale(1.1);
		-o-transform: scale(1.1);
	}
	.co2 {
		background: url(img_re/co2.jpg) center;
		opacity: 0.2;
		width: 100%;
		height: 480px;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
	}
	.co2:hover {
		background: url(img_re/co2.jpg) center;
		opacity: 0.1;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
		transform: scale(1.1);
		-webkit-transform: scale(1.1);
		-moz-transform: scale(1.1);
		-ms-transform: scale(1.1);
		-o-transform: scale(1.1);
	}
	.co3 {
		background: url(img_re/co3.jpg) center;
		opacity: 0.2;
		width: 100%;
		height: 480px;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
	}
	.co3:hover {
		background: url(img_re/co3.jpg) center;
		opacity: 0.1;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
		transform: scale(1.1);
		-webkit-transform: scale(1.1);
		-moz-transform: scale(1.1);
		-ms-transform: scale(1.1);
		-o-transform: scale(1.1);
	}
	.co_w {
		width: 100%;
		background: #000;
		height: 480px;
		position: relative;
		overflow: hidden !important;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
	}
	.co_w:hover {
		width: 100%;
		background: #86766a;
		height: 480px;
		position: relative;
		overflow: hidden !important;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease
	}
	.co_img {
		position: absolute;
		top: 0px;
		left: 0px;
		right: 0px;
		bottom: 0px;
		margin: auto;
		max-width: 225px;
		max-height: 280px;
		overflow: hidden;
		z-index: 1;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
		cursor: pointer;
	}
	.co_img:hover {
		position: absolute;
		display: block;
		top: 0px;
		left: 0px;
		right: 0px;
		bottom: 0px;
		margin: auto;
		max-width: 225px;
		max-height: 480px;
		overflow: hidden;
		z-index: 1;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
	}
}
</style>
		<div class="couse">

			<div class="left_pull co_w   wow fadeInDown">
				<div class="co_img">
					<img src="img_re/co1.png" />
					<div class="h20"></div>
					<span class="c_w f30 fw900"><center>ORANGE</center></span>
					<div class="h20"></div>
					<div class="w_lines"></div>
					<div class="h20"></div>
					<span class="c_w letter_sp10 f16"><center>ORANGECOUSE</center></span>
					<div class="h20"></div>
					<span class="c_w f14">
						<center>
							한성컨트리클럽의<BR /> 각코스별 공략법을 소개합니다.
						</center>
					</span>
					<div class="h30"></div>
					<a href="${pageContext.request.contextPath }/course/info" class="box_csss">&nbsp;코스공략&nbsp;&nbsp;&nbsp;
						→ </a>
					<div class="h20"></div>
					<a href="${pageContext.request.contextPath }/course/gallery" class="box_csss">&nbsp;코스갤러리&nbsp;&nbsp;&nbsp;
						→ </a>
				</div>
				<div class=" co1"></div>
			</div>

			<div class="left_pull co_w   wow fadeInDown">
				<div class="co_img">
					<img src="img_re/co1.png" />
					<div class="h20"></div>
					<span class="c_w f30 fw900"><center>BLUE</center></span>
					<div class="h20"></div>
					<div class="w_lines"></div>
					<div class="h20"></div>
					<span class="c_w letter_sp10 f16"><center>BLUECOUSE</center></span>
					<div class="h20"></div>
					<span class="c_w f14">
						<center>
							한성컨트리클럽의<BR /> 각코스별 공략법을 소개합니다.
						</center>
					</span>
					<div class="h30"></div>
					<a href="${pageContext.request.contextPath }/course/info" class="box_csss">&nbsp;코스공략&nbsp;&nbsp;&nbsp;
						→ </a>
					<div class="h20"></div>
					<a href="${pageContext.request.contextPath }/course/gallery" class="box_csss">&nbsp;코스갤러리&nbsp;&nbsp;&nbsp;
						→ </a>
				</div>
				<div class=" co2"></div>
			</div>

			<div class="left_pull co_w   wow fadeInDown">
				<div class="co_img">
					<img src="img_re/co1.png" />
					<div class="h20"></div>
					<span class="c_w f30 fw900"><center>GREEN</center></span>
					<div class="h20"></div>
					<div class="w_lines"></div>
					<div class="h20"></div>
					<span class="c_w letter_sp10 f16"><center>GREENCOUSE</center></span>
					<div class="h20"></div>
					<span class="c_w f14">
						<center>
							한성컨트리클럽의<BR /> 각코스별 공략법을 소개합니다.
						</center>
					</span>
					<div class="h30"></div>
					<a href="${pageContext.request.contextPath }/course/info" class="box_csss">&nbsp;코스공략&nbsp;&nbsp;&nbsp;
						→ </a>
					<div class="h20"></div>
					<a href="${pageContext.request.contextPath }/course/gallery" class="box_csss">&nbsp;코스갤러리&nbsp;&nbsp;&nbsp;
						→ </a>
				</div>
				<div class=" co3"></div>
			</div>

		</div>



		<div class="h0 clear_fix"></div>
		<div class="fix_bg wow fadeInDown">
			<div class="fix_img_warp">
				<span class="c_w f30 fw900">RESTAURANT</span>&nbsp;&nbsp; <span
					class="c_w f30"><span class="mayHide2">계절</span>메뉴 / 코스</span>
				<div class="h30"></div>
				<span class="c_w f16"> 한성컨트리클럽에는 다양하고 <BR class="m_on_main" />맛있는
					메뉴들이 준비되어 있습니다.
				</span>
				<div class="h30"></div>
				<a href="${pageContext.request.contextPath }/estab/restaurant" class="box_link2">&nbsp;자세히보기&nbsp;&nbsp;&nbsp;
					→</a>
			</div>
		</div>
		<div class="h0 mayHide2"></div>

		<div class="main_bg_warp1">
			<div class="bg_mains left_pull  wow fadeInDown">
				<div class="bg_main_texts">
					<span class=" f30 fw900">MEMBER</span>&nbsp;&nbsp; <span
						class="f30">회원서비스</span>
					<div class="h30"></div>
					<span class="f16"> 한성컨트리클럽의 새소식과 <BR class="mayHide2" />
						공지사항을 전합니다.
					</span>
					<div class="h30"></div>
					<a href="${pageContext.request.contextPath }/notice" class="f16">&nbsp;자세히보기&nbsp;&nbsp;&nbsp;
						→</a>
				</div>
				<div class="bg_1s"></div>

			</div>


			<div class="bg_2s bg_mains left_pull  wow fadeInDown">
				<div class="h50 clear_fix"></div>
				<div class="h50 mayHide2"></div>
				<center>
					<span class=" f30 fw900" style="color: #eee">RESERVATION</span>&nbsp;&nbsp;<BR />
					<span class="f30 fw100">인터넷예약 시스템</span>
				</center>
				<div class="h50 clear_fix"></div>
				<div style="max-width: 88%; margin: 0 auto;" class="box_icon">
					<a href="${pageContext.request.contextPath }/netres"><img
						src="img_re/res1.png" width="25%" alt="인터넷예약" /></a>
						<a href="${pageContext.request.contextPath }/resinfo"><img src="img_re/res2.png"
						width="25%" alt="단체예약" /></a><a href="${pageContext.request.contextPath }/rescancel"><img
						src="img_re/res3.png" width="25%" alt="예약확인및 취소" /></a><a
						href="${pageContext.request.contextPath }/resreg"><img src="img_re/res4.png"
						width="25%" alt="대기예약" /></a>
				</div>
				<div class="h50 clear_fix"></div>
				<center>
					<a href="${pageContext.request.contextPath }/join01" class="box_link3">&nbsp;회원가입하기&nbsp;&nbsp;&nbsp;
						→</a></a>
				</center>
				<div class="h20 clear_fix"></div>
			</div>
		</div>
	</div>
	<div class="h0 clear_fix"></div>
	<style>
.m_on_main {
	display: none;
}

.fix_bg {
	background: url(img_re/fix_bg.jpg) center;
	background-attachment: fixed;
	width: 100%;
	height: 450px;
	position: relative;
}

.fix_img_warp {
	position: absolute;
	top: 25%;
	max-width: 500px;
	right: 8%;
	margin: auto;
}

.box_link2 {
	width: 100%;
	margin: 0 auto;
	display: block;
	color: #fff;
	border: 2px solid #fff;
	height: 50px;
	line-height: 45px;
	text-align: center;
	font-size: 16px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.box_link2:hover {
	width: 100%;
	padding-left: 10%;
	margin: 0 auto;
	display: block;
	color: #f2ccb4;
	border: 2px solid #f2ccb4;
	height: 50px;
	line-height: 45px;
	text-align: center;
	font-size: 16px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.box_link3 {
	width: 100%;
	margin: 0 auto;
	display: block;
	color: #333;
	border: 2px solid #333;
	height: 50px;
	line-height: 45px;
	text-align: center;
	font-size: 16px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	max-width: 500px;
}

.box_link3:hover {
	width: 100%;
	padding-left: 5%;
	margin: 0 auto;
	display: block;
	color: #f2ccb4;
	border: 2px solid #f2ccb4;
	height: 50px;
	line-height: 45px;
	text-align: center;
	font-size: 16px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

@media only screen and (max-width: 900px) {
	.m_on_main {
		display: block;
	}
	.fix_bg {
		background: url(img_re/fix_bg.jpg) 90%;
		background-attachment: scroll;
		background-size: 200%;
		width: 100%;
		height: 350px;
	}
	.fix_bg img {
		width: 50%;
		padding-left: 5%;
	}
	.fix_img_warp {
		position: absolute;
		top: 20%;
		max-width: 90%;
		right: 0%;
		left: 0%;
		margin: auto;
		text-align: center;
	}
	.box_link3 {
		width: 100%;
		margin: 0 auto;
		display: block;
		color: #333;
		border: 2px solid #333;
		height: 50px;
		line-height: 45px;
		text-align: center;
		font-size: 16px;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
		max-width: 90%;
	}
}

.bg_mains {
	width: 50%;
	height: 569px;
	overflow: hidden;
	position: relative;
}

.bg_1s {
	width: 100%;
	height: 569px;
	background: url(img_re/main_bg1.jpg);
	position: relative;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.bg_1s:hover {
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
}

.bg_main_texts {
	position: absolute;
	right: 5%;
	top: 30%;
	z-index: 1;
}

@media only screen and (max-width: 900px) {
	.bg_mains {
		width: 100%;
		height: auto;
		overflow: hidden;
		position: relative;
	}
	.bg_1s {
		width: 100%;
		height: 300px;
		background: url(img_re/main_bg1.jpg);
		position: relative;
		-webkit-transition: all 0.5s ease;
		-moz-transition: all 0.5s ease;
		-o-transition: all 0.5s ease;
		transition: all 0.5s ease;
	}
	.bg_main_texts {
		position: absolute;
		right: 0%;
		left: 0%;
		margin: auto;
		text-align: center;
		max-width: 90%;
		top: 25%;
		z-index: 1;
	}
}

.box_icon img {
	max-width: 207px;
}

.vip_room_bg {
	background: url(img_re/ft_bgs.jpg);
	width: 100%;
	height: 310px;
	position: relative;
	overflow: hidden
}

.vip_warp {
	max-width: 450px;
	position: absolute;
	left: 15%;
	top: 10%;
}

@media only screen and (max-width: 900px) {
	.vip_room_bg {
		background: url(img_re/ft_bgs.jpg) 60%;
		width: 100%;
		height: 270px;
		position: relative;
		overflow: hidden
	}
	.vip_warp {
		max-width: 90%;
		position: absolute;
		left: 0%;
		right: 0%;
		margin: auto;
		top: 10%;
	}
}
</style>
	<div class="vip_room_bg">
		<div class="vip_warp  wow fadeInDown">
			<span class="c_w f30 fw900">VIP </span>&nbsp;&nbsp; <span
				class="c_w f30">ROOM</span>
			<div class="h30"></div>
			<span class="c_w f16"> 특별한 분들과의 소중한 만남과 성공적인 <BR /> 비즈니스를 위한
				VIP ZONE
			</span>
			<div class="h30"></div>
			<a href="${pageContext.request.contextPath }/estab/viproom" class="box_link2">&nbsp;자세히보기&nbsp;&nbsp;&nbsp;
				→</a>
		</div>
	</div>
</div>