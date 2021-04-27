<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div
	style="width: 100%; height: 50px; line-height: 50px; border-bottom: 1px solid #f1f1f1">
	<div style="max-width: 1300px; margin: 0 auto;" class="f16">
		<li class="left_pull"><a
			onclick='javascript:window.open("estab/reqist","name99", "width=600px,height=550px,left=100px,top=100px");'
			href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;이메일무단수집거부</a>
			&nbsp;<span style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;
		</li>
		<li class="left_pull"><a
			onclick='javascript:window.open("estab/reqist","name99", "width=600px,height=550px,left=100px,top=100px");'
			href="javascript:void(0);">개인정보처리방침</a>&nbsp;<span
			style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>
		<li class="left_pull mayHide2"><a
			href="https://www.weatheri.co.kr/leisure/leisure04.php?gid=LS04025500"
			target="_blank">날씨정보</a>&nbsp;<span
			style="color: #f1f1f1; font-weight: 100;"> |</span>&nbsp;</li>





		<!--<li class="left_pull"><a href="/html/mypage/sitemap.asp">사이트맵</a>&nbsp;</li>-->
	</div>
</div>
<div id="footer">
	<div
		style="background: #fff; width: 100%; height: auto; padding-bottom: 20px;">
		<div style="max-width: 1400px; margin: 0 auto;">
			<div class="h50"></div>
			<center>
				<img src="${pageContext.request.contextPath }/img_re/logo.png" class="wow fadeInDown" style="" alt="로고" />
				<div class="h30"></div>
				<span class="f16">상호 : 한성관광개발(주) 대표 : 전영자 <BR
					class="m_on_main" /> 주소 : 경기도 용인시 기흥구 구교동로 151 (446 -506 )<BR
					class="m_on_main" /> TEL : 031 - 284 -3831 <br /> FAX : 031 - 283
					-8847 <BR class="m_on_main" />사업자등록번호 : 142 -81 -32881 <BR
					class="m_on_main" /></span><br /> <br /> Copyright 한성컨트리클럽 All Rights
				Reserved.
			</center>


			<style>
.site_map_footer {
	width: 90%;
	margin: 0 auto;
}

.site_map_footer ul {
	float: left;
	width: 12.5%;
}

.site_map_footer li {
	width: 100%;
}

.site_map_footer ul a {
	color: #acaaa7;
	font-size: 14px;
}
</style>
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
			<div class="site_map_footer  mayHide2">
				<div class="h50"></div>

				<div class="h50"></div>
			</div>
		</div>
	</div>
	<script>
		$(window).scroll(function() {
			clearTimeout($.data(this, 'scrollTimer'));
			$('#fade').fadeOut(100), "easeOutBack";

			$.data(this, 'scrollTimer', setTimeout(function() {
				// do something 
				$('#fade').fadeIn(100), "easeOutBack";
			}, 550));
		});
	</script>
</div>