<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<style>
#example1 {
	background: #85756b;
}

@keyframes fadeInUp {
0%{
	opacity: 0;
	-webkit-transform: translateY(20px);
	-ms-transform: translateY(20px);
	transform: translateY(20px)
}

100%{
opacity
:
1;-webkit-transform
:translateY(0)
;-ms-transform
:translateY(0)
;transform
:translateY(0)
}
}

.fadeInUp {
	-webkit-animation-name: fadeInUp;
	animation-name: fadeInUp
}

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

<!DOCTYPE html PUBLIC>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.hansung-cc.co.kr/index.asp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 Mar 2021 03:28:07 GMT -->
<head>
<title>한성컨트리클럽</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=3.0, user-scalable=yes">
<script src="${pageContext.request.contextPath }/inc/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/wow.js"></script>
<script src="${pageContext.request.contextPath }/inc/nav_sub.js"></script>
<!--<script src="/inc/gambit-smoothscroll-min.js"></script>-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/inc/default3.css">
<style>
@media only screen and (max-width: 900px) {
	body, html {
		overflow-x: hidden;
		font-size: 12px !important;
	}
	* {
		font-size: 12px !important;
	}
}
</style>

<script type="text/javascript">
	function MM_showHideLayers() { //v9.0
		var i, p, v, obj, args = MM_showHideLayers.arguments;
		for (i = 0; i < (args.length - 2); i += 3)
			with (document)
				if (getElementById && ((obj = getElementById(args[i])) != null)) {
					v = args[i + 2];
					if (obj.style) {
						obj = obj.style;
						v = (v == 'show') ? 'visible'
								: (v == 'hide') ? 'hidden' : v;
					}
					obj.visibility = v;
				}
	}
</script>
<script>
	wow = new WOW({
		animateClass : 'animated',
		offset : 100,
		callback : function(box) {
			console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
		}
	});
	wow.init();
	document.getElementById('a').onclick = function() {
		var section = document.createElement('');
		section.className = 'section--purple wow fadeInDown';
		this.parentNode.insertBefore(section, this);
	}
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$(".courseTable a").on("click", function(event) {// a태그 클릭시 작동
			// 클릭된 태그의 본래의 기능을 막음 즉, a태그 본래 기능을 막음
			event.preventDefault();
			var txt = $(this).attr("href");// href에 입력된 값을 가져옴 즉 클릭된 a의 국어, 영어, 수학 중 하나를 가져옴

			// alert(txt +"가 클릭됨");
		});
	});// end of ready()
</script>




<script>
	var TINY = {};

	function T$(i) {
		return document.getElementById(i)
	}
	function T$$(e, p) {
		return p.getElementsByTagName(e)
	}

	TINY.dropdown = function() {
		var p = {
			fade : 1,
			slide : 1,
			active : 0,
			timeout : 200
		}, init = function(n, o) {
			for (s in o) {
				p[s] = o[s]
			}
			p.n = n;
			this.build()
		};
		init.prototype.build = function() {
			this.h = [];
			this.c = [];
			this.z = 1000;
			var s = T$$('ul', T$(p.id)), l = s.length, i = 0;
			p.speed = p.speed ? p.speed * .1 : .5;
			for (i; i < l; i++) {
				var h = s[i].parentNode;
				this.h[i] = h;
				this.c[i] = s[i];
				h.onmouseover = new Function(p.n + '.show(' + i + ',1)');
				h.onmouseout = new Function(p.n + '.show(' + i + ')')
			}
		};
		init.prototype.show = function(x, d) {
			var c = this.c[x], h = this.h[x];
			clearInterval(c.t);
			clearInterval(c.i);
			c.style.overflow = 'hidden';
			if (d) {
				if (p.active && h.className.indexOf(p.active) == -1) {
					h.className += ' ' + p.active
				}
				if (p.fade || p.slide) {
					c.style.display = 'block';
					if (!c.m) {
						if (p.slide) {
							c.style.visibility = 'hidden';
							c.m = c.offsetHeight;
							c.style.height = '0';
							c.style.visibility = ''
						} else {
							c.m = 100;
							c.style.opacity = 0;
							c.style.filter = 'alpha(opacity=0)'
						}
						c.v = 0
					}
					if (p.slide) {
						if (c.m == c.v) {
							c.style.overflow = 'visible'
						} else {
							c.style.zIndex = this.z;
							this.z++;
							c.i = setInterval(function() {
								slide(c, c.m, 1)
							}, 20)
						}
					} else {
						c.style.zIndex = this.z;
						this.z++;
						c.i = setInterval(function() {
							slide(c, c.m, 1)
						}, 20)
					}
				} else {
					c.style.zIndex = this.z;
					c.style.display = 'block'
				}
			} else {
				c.t = setTimeout(function() {
					hide(c, p.fade || p.slide ? 1 : 0, h, p.active)
				}, p.timeout)
			}
		};
		function hide(c, t, h, s) {
			if (s) {
				h.className = h.className.replace(s, '')
			}
			if (t) {
				c.i = setInterval(function() {
					slide(c, 0, -1)
				}, 20)
			} else {
				c.style.display = 'none'
			}
		}
		function slide(c, t, d) {
			if (c.v == t) {
				clearInterval(c.i);
				c.i = 0;
				if (d == 1) {
					if (p.fade) {
						c.style.filter = '';
						c.style.opacity = 1
					}
					c.style.overflow = 'visible'
				}
			} else {
				c.v = (t - Math.floor(Math.abs(t - c.v) * p.speed) * d);
				if (p.slide) {
					c.style.height = c.v + 'px'
				}
				if (p.fade) {
					var o = c.v / c.m;
					c.style.opacity = o;
					c.style.filter = 'alpha(opacity=' + (o * 100) + ')'
				}
			}
		}
		return {
			init : init
		}
	}();
</script>
<script>
	$(function() {

		$(document).ready(function() {

			var scrollOffset = $('.scroll-menu').offset();

			$(window).scroll(function() {
				if ($(document).scrollTop() > scrollOffset.top) {
					$('.scroll-menu').addClass('scroll-fixed');
				} else {
					$('.scroll-menu').removeClass('scroll-fixed');
				}
			});
		});

	});
</script>
</head>
<body>
<tiles:insertAttribute name="header"/>

<div class="ani_fade3">
	<div id="wrap">
	<tiles:insertAttribute name="content"/>
	<tiles:insertAttribute name="footer"/>
	</div>
</div>
	<script>
		/* javascript, jquery */
		$(window).scroll(function() {
			var $el = $('.show-on-scroll');

			if ($(this).scrollTop() >= 800)
				$el.addClass('shown');
			else
				$el.removeClass('shown');
		});
	</script>


	<style>
.show-on-scroll {
	opacity: 0;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

.show-on-scroll.shown {
	opacity: 1;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

#top_btns {
	position: fixed;
	bottom: 5%;
	width: 50px;
	z-index: 10000;
	right: 15px;
}

@media only screen and (max-width: 900px) {
	#top_btns {
		position: fixed;
		bottom: 5%;
		width: 50px;
		z-index: 10000;
		right: 15px;
	}
}
</style>
	<script>
		$(function() {
			$('.top-button').click(function() {
				$('html, body').animate({
					scrollTop : 0
				}, 500);
			});
		});
	</script>
	<a href="#" class="top-button"><img src="${pageContext.request.contextPath }/img_re/top.jpg"
		style="max-width: 50px !important;" class="show-on-scroll"
		id="top_btns" /></a>
</body>

<!-- Mirrored from www.hansung-cc.co.kr/index.asp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 Mar 2021 03:31:13 GMT -->
</html>
