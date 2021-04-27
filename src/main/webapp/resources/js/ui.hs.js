
$(function(){
	$(window).resize(function () {
		resizeUI();
	});
	motion();
	//footGap();
	setLocation();
	setGnb();
	setStyle();
	quick();
	linkList();	

	// print preview	
});

function resizeUI() {
	if ( $(window).width() < 1263 ) {
		$('body').removeClass();
		//$.scrollTo($('#header') , 700);
	}
	else if ( $(window).width() > 1263 ) {
		$('body').removeClass();
		$('body').addClass('index');
		//$.scrollTo($('#header') , 700);
	}
}

function motion() {
	$('#content h3 img, .titleUp img').addClass('motionTit');
	$('.motionTit').animate( { "marginLeft":0 }, 400, 'easeOutQuad' );	
}

function setLocation() {
	var current = $('#location span:last').text();
	var gnb = $('#gnb a');
	var etcSub = $('.etcSub > ul > li > a');

	gnb.each(function(){
		if ( $(this).text() == current ) {
			if ( $('.gnbSub').size() > 0) {
				$(this).addClass('on').parents('.gnbSub').show();
				$(this).parents('.gnbSub').prev().addClass('on');
			}
			$(this).addClass('on').parents('ul').prev().addClass('on').next().show();
			$(this).parents('ul').prev();
		}
	});
	
	// GNB 없을 경우
	etcSub.each(function(){
		if($(this).text() == current ) {
			$(this).addClass('on');
		}
	});
}

function setGnb() {
	var gnb = $('.topDepth');
		
	$('#content, #boxConWrap').mouseenter( function() {
	gnb.each(function() {
			if ( !$(this).hasClass('on') ) {	
				$(this).removeClass('over').next().hide().prev();
			}
		});
	});
}

function setStyle() {
	// input:file
	$("input.boxFile").filestyle({ 
          image: "/images/common/btn/btnFile.gif",
          imageheight : 29,
          imagewidth : 70,
          width : 250
      });
	
	// table style
	$('.listTable th:first').addClass('first');
	$('.listTable tr').each(function() {
		$(this).children('td:first').addClass('first');
	});

	// tab style
	$('.tabNavi li:first').addClass('first');

	// location
	$('.boxTitle').css('width',$('.boxTitle span:last').width() + 20);
	
	
}

function quick() {
	$('.openQuick').click(function() {
		$('#quickSub').show();
		$(this).hide();
		$('.closeQuick').show();
	});
	$('.closeQuick').click(function() {
		$('#quickSub').hide();
		$(this).hide();
		$('.openQuick').show();
	});
	$('.toTop').click(function(e) {
		e.preventDefault();
		$.scrollTo($('#wrap') , 200);
	});
}



function linkList() {
	$('#globalL dl dt a').bind('click', function(e) {
		$('#globalL dl dd').hide();
		e.preventDefault();
		$(this).parent().next('dd').fadeIn();
	});
	$('#globalL').mouseleave(function() {
		$('#globalL dl dd').hide();
	});
}

