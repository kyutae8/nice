function over_img(img,n){	
	if (n == "on")
	{
		var hover = "_on";
	}else{
		var hover = "_off";
	}		
	if (img.parent().hasClass("no") == false && img.parent().hasClass("on") == false  && img.hasClass("on") == false){
		menuimg = img.find("img");	
		if (menuimg.attr("src").indexOf(".jpg") > 0){
			menuimg_type = ".jpg";
		}else if (menuimg.attr("src").indexOf(".gif") > 0){
			menuimg_type = ".gif";
		}else if (menuimg.attr("src").indexOf(".png") > 0){
			menuimg_type = ".png";
		}
		

		menuimg_src = menuimg.attr("src").split("_off")[0];
		menuimg_src = menuimg_src.split("_on")[0];
		menuimg.attr("src",menuimg_src+hover+menuimg_type);
	}
}

function on_img(img,n){	
	if (n == "on")
	{
		var hover = "_on";
	}else{
		var hover = "_off";
	}		
	menuimg = img.find("img");	
	if (menuimg.attr("src").indexOf(".jpg") > 0){
		menuimg_type = ".jpg";
	}else if (menuimg.attr("src").indexOf(".gif") > 0){
		menuimg_type = ".gif";
	}else if (menuimg.attr("src").indexOf(".png") > 0){
		menuimg_type = ".png";
	}

	menuimg_src = menuimg.attr("src").split("_off")[0];
	menuimg_src = menuimg_src.split("_on")[0];
	menuimg.attr("src",menuimg_src+hover+menuimg_type);
}



$(function(){
	/* 롤오버 이미지 */
	$(".rollOver").each(function(){
		$(this).hover(function(){
			over_img($(this),"on");
		},function(){
			over_img($(this),"off");
		})
	})
}) 

/////////////////////////////////////////////////////////// s ////////////////////////////////////////////////////////
/* 서브메뉴 상단 비주얼 */
function chgBg(dep1){
	var idx = dep1;
	$(".pageinfo").addClass("sub_visual"+idx);
}
/* 자회사 바로가기 */
function goGrpURL() {
var url = document.getElementById("gohanwah").value;
window.open(url,'_blank');
} 


// gnb
function gnb(dep1, dep2, dep3){
	chgBg(dep1);
		var depth1 = $(".gnb > ul > li:eq("+(dep1-1)+")");
		var depth2 = depth1.find(".sub").find(">ul>li:eq("+(dep2-1)+")");
		var depth3 = depth2.find(">ul>li:eq("+(dep3-1)+")");
		
		depth1.addClass("on");		
		depth2.addClass("on");		
		depth3.addClass("on");
		
		depth1.find(".sub").show();
		depth2.find(".depth").show();	
}

$(document).ready(function(){	
	//마우스오버
	$(".gnb > ul > li").hover(function(){
		var n = $(this).index();
		$(".gnb > ul > li").removeClass("on");
		$(this).addClass("on");
		
		$(".gnb li .sub").hide();
		$(this).find(".sub").show();		
	});
	
	//키보드
	$(".gnb > ul > li > a").focus(function(){
		var n = $(this).parent().index();
		$(".gnb > ul > li").removeClass("on");
		$(this).parent().addClass("on");
		
		
		$(".gnb li .sub").hide();
		$(this).parent().find(".sub").show();		
	});
	
	//클릭
	$(".gnb .sub > ul > li > a").bind("click",function(){
		$(".gnb .sub > ul > li").removeClass("on");
		$(this).parents().addClass("on");
		
		if(!$(this).hasClass("on")){
			var a = $(this).attr("href");
			var a = a.indexOf("#none");
			
			if(a>-1){
						
				$(".gnb .sub ul li a").removeClass("on");
				
				$(".depth").stop().slideUp(250);
				
				if(!$(this).hasClass("on")){		
					$(this).addClass("on");
					$(this).siblings(".depth").stop().slideDown(250);
				}
				return false;
			}			
		}
	});
});


var sN = {
	bH : $("body").outerHeight(),
	gH : $(".gnb").outerHeight()		
}

$(document).ready(function(){
	
	
	sN.bH = $("body").outerHeight();
	sN.gH = $(".gnb").outerHeight();
				
	//도큐먼트 스크롤
	$("#header, #contents, #main").css("height", sN.bH);

	$("#header, #contents, #main").mCustomScrollbar({
		scrollInertia:100,
		autoDraggerLength:true,
		advanced:{
        	updateOnBrowserResize: true,
    		updateOnContentResize: true
    	},
		callbacks:{
			whileScrolling:function(){
				mainQuickArea();			
			} 
		}
	});

	//ie7,8 튐 현상때문에 주석처리함
	//$("#contents .mCSB_container").wrapInner("<div class='con_wrap' />");	
	$("#contents, #main").attr("tabindex",0);
	
	
	//메인비주얼
	
	if(sN.bH<850){		
		$(".main_visual").css("height", 850*4);	
		$(".main_con").css("height", 850);
	}else{
		$(".main_visual").css("height", sN.bH*4);	
		$(".main_con").css("height", sN.bH);
	}
	
	
	$(".quick_area li a").bind("click",function(){
		var a = $(this).parent().index();
	
		if(sN.bH<850){		
			var b = 850;
		}else{
			var b = sN.bH;		
		}
		var speed = 600;
		
		switch(a)
		{
		case 0:		
			$("#main ").mCustomScrollbar("scrollTo",0,{
			  scrollInertia:speed
			});
			break;
		case 1:
			$("#main ").mCustomScrollbar("scrollTo",(b),{
			  scrollInertia:speed
			});
		  break;
		case 2:
			$("#main ").mCustomScrollbar("scrollTo",(b*2),{
			  scrollInertia:speed
			});
		  break;
		case 3:
			$("#main ").mCustomScrollbar("scrollTo",(b*3),{
			  scrollInertia:speed
			});
		  break;
		}
		
		$(".quick_area li a").parent().removeClass("on");
		$(this).parent().addClass("on");		
		
		$(".quick_area li").each(function(){		
		
			var imgSrc = $(this).find("a img").attr("src");
			var newSrc = imgSrc.replace("_on","_off")
			$(this).find("a img").attr("src",newSrc);
			
			if($(this).hasClass("on")){
				var imgSrc  = $(this).find("a img").attr("src");
				var newSrc = imgSrc.replace("_off","_on")
				$(this).find("a img").attr("src",newSrc);
			}			
			
		});
		
		return false;
		
		
		
	});

	
	
	

	function mainQuickArea(){
		
	function checkMcs(){
		$(".quick_area li").each(function(){
				var imgSrc = $(this).find("a img").attr("src");
				var newSrc = imgSrc.replace("_on","_off")
				$(this).find("a img").attr("src",newSrc);
				if($(this).hasClass("on")){
					var imgSrc  = $(this).find("a img").attr("src");
					var newSrc = imgSrc.replace("_off","_on")
					$(this).find("a img").attr("src",newSrc);
				}
							
		});
	}
		
		
		if(mcs.top <= -1){
			$(".quick_area li").removeClass("on");
			$(".quick_area li").eq(0).addClass("on");			
			checkMcs()
		}
		
		if(mcs.top <= -850){
			$(".quick_area li").removeClass("on");
			$(".quick_area li").eq(1).addClass("on");			
			checkMcs()			
		}
		
		if( mcs.top <= -1700){
			$(".quick_area li").removeClass("on");
			$(".quick_area li").eq(2).addClass("on");			
			checkMcs()			
		}
		
		if(mcs.top <= -2550){
			$(".quick_area li").removeClass("on");
			$(".quick_area li").eq(3).addClass("on");			
			checkMcs()			
		}

	}
	

	
	
	//도큐먼트 스크롤 키보드 사용
	$("#header, #contents, #main").on("keydown",function(e){
		var n = e.which;
		var h = $(this).find(".mCSB_container").position().top;
		if(n==40){
			var a = h
			var a = -(a-40);
			$(this).mCustomScrollbar("scrollTo", a);
		}
		if(n==38){			
			var a = h
			var a = -(a+40);			
			$(this).mCustomScrollbar("scrollTo", a);					
		}		
	});
	
	if(sN.bH>800){
		$(".gnb").css({"height":sN.bH-100});
		
	}


});

//resize
$(window).resize(function() {
	sN.bH = $("body").outerHeight();	
	$("#header, #contents").css("height", sN.bH);
	
	if(sN.bH>800){
		$(".gnb").css({"height":sN.bH-100});		
	}
	
	if(sN.bH<800){
		$(".gnb").css({"height":800});		
	}
	$("#header, #contents, #main").css("height", sN.bH);
	
});

//E: 도큐먼트 스크롤




/*$(document).ready(function(){
	$("#btn_hot_line").bind("click", function(){		
		var img = $(this).find("img");			
		if(!$(this).hasClass("on")){
			var imgName = img.attr("src").replace("_off","_on");
			img.attr("src",imgName);
			$(this).addClass("on");
			$(this).attr("href","#btn_hot_line");
			img.attr("alt","compliance@hanwha.com에 이메일 보내기 입력 양식 닫기");
			$("#send_email").slideDown(30);
			
		}else{		
			var imgName = img.attr("src").replace("_on","_off");
			img.attr("src",imgName);
			$(this).removeClass("on");
			$(this).attr("href","#send_email");
			img.attr("alt","compliance@hanwha.com에 이메일 보내기 입력 양식 보기");
			$("#send_email").slideUp(30);
		}	
		return false;
	});
});
*/


$(document).ready(function(){
	//탭메뉴에
	$(".ul_faqlist dt a").click(function(){
		$('.ul_faqlist li').removeClass('on');
		$(this).parent("dt").parent("dl").parent("li").addClass('on');
	});
	//작성하기테이블
	$(".tb_qawrite tr:even th").addClass("dgray");
	$(".tb_qawrite tr:even td").addClass("dgray");
	//파일찾기
	//$(".fileinput").change(function(){
	//	$(this).parents("td").find(".intxt_file").val($(this).val());
	//});
	$(".fileinput_btn").click(function(){
		$(this).prev().click();
	});
	var quick_menu = $("#quick");
	var quick_top = 500;
	/* quick menu initialization */
	quick_menu.css("top", $(window).height() );
		$(document).ready(function(){
			quick_menu.animate( { "top": $(document).scrollTop() + quick_top +"px" }, 500 ); 
		$(window).scroll(function(){
			quick_menu.stop();
			quick_menu.animate( { "top": $(document).scrollTop() + quick_top + "px" }, 800 );
		});
	});
	//불꽃 연혁
	
	$(".acc_flame dd:first").css("display","block");	
	$(".acc_flame dt > a").click(function(){		
		if(!$(this).parent().hasClass("on")){	
			$(".acc_flame dt").removeClass('on');
			$(".acc_flame dd").slideUp(50);
			$(this).parent().addClass('on');
			$(this).parent().next("dd").show();
			$(".acc_flame dt").each(function() {
				var Img  = $(this).find("a img");
				var imgsrc = Img.attr("src").replace('_on.gif','_off.gif');
				Img.attr("src",imgsrc);
			});
			var Img  = $(this).find("img");
			var imgsrc = Img.attr("src").replace('_off.gif','_on.gif');
			Img.attr("src",imgsrc);	
			$("#contents .mCSB_container").css({
				"top":-490
			});
			return false;
		}
		return false;
	});


	$(".acc_con02 > dd.on").css("display","block");
	$(".acc_con02 > dt").each(function(){
		$(this).click(function(){
			$(".acc_con02 > dt").removeClass('on');
			$(".acc_con02 > dd").slideUp("fast");
			$(this).addClass('on');
			$(this).next("dd").show();
			var offImg = $(".acc_con02 dt > img[src$='on.gif']");
			var imgsrc = offImg.attr("src");
			$(offImg).attr('src',imgsrc.replace('_on.gif','_off.gif'));
			var filename = $(this).find("img").attr('src');
			$(this).find("img").attr('src',filename.replace('_off.gif','_on.gif'));
		});
	});

	/*$(".acc_par03 > dd.on").css("display","block");
	$(".acc_par03 > dt").each(function(){
		$(this).click(function(){
			$(".acc_par03 > dt").removeClass('on');
			$(".acc_par03 > dd").slideUp("fast");
			$(this).addClass('on');
			$(this).next("dd").show();
			var offImg = $(".acc_par03 dt > img[src$='on.gif']");
			var imgsrc = offImg.attr("src");
			$(offImg).attr('src',imgsrc.replace('_on.gif','_off.gif'));
			var filename = $(this).find("img").attr('src');
			$(this).find("img").attr('src',filename.replace('_off.gif','_on.gif'));
		});
	});*/

	$(".acc_con0302 dt").click(function(){
		$(this).next("dd").toggle();
		$(this).toggleClass("on");
	});
	
	$(".stockgraph li").eq(1).css("display","none");
	$("#stockholder li a").click(function(){
		$("#stockholder li").removeClass("on");
		var offImg = $("#stockholder li > a > img[src$='on.gif']");
		var imgsrc = offImg.attr("src");
		$(offImg).attr('src',imgsrc.replace('_on.gif','_off.gif'));
		var filename = $(this).find("img").attr('src');
		$(this).find("img").attr('src',filename.replace('_off.gif','_on.gif'));
		$(this).parent("li").addClass("on");
		var elist = $("#stockholder li a").index(this);
		$(".stockgraph li").css("display","none");
		$(".stockgraph li:eq(" + elist +")").css("display","block");
	});

	$(".wrap_association:not('.on')").css("display","none");
	$("#ul_association li a").click(function(){
		$("#ul_association li").removeClass("on");
		var offImg = $("#ul_association li > a > img[src$='on.gif']");
		var imgsrc = offImg.attr("src");
		$(offImg).attr('src',imgsrc.replace('_on.gif','_off.gif'));
		var filename = $(this).find("img").attr('src');
		$(this).find("img").attr('src',filename.replace('_off.gif','_on.gif'));
		$(this).parent("li").addClass("on");
		var elist = $("#ul_association li a").index(this);
		$(".wrap_association").css("display","none");
		$(".wrap_association:eq(" + elist +")").css("display","block");
	});


	$(".ul_tnm li a").click(function(){
		var gtxt = $(this).parent("li").index();
		if (gtxt == 0){
			$(".ul_tnm li").removeClass("on");
			$(".wrap_ginfo div").show();
		}else{
			var idx = $(this).parent("li").index()-1;
			$(".ul_tnm li").removeClass("on");
			$(".ul_tnm li").eq(gtxt).addClass("on");
			$(".wrap_ginfo div").hide();
			$(".wrap_ginfo div").eq(idx).css("display","block");
		}
	});

	$(".wrap_contact_info div:not(.on)").hide();
	$(".boxleft li a").click(function(){
		$(".wrap_contact_tb div").hide();
		var idx = $(this).parents("li").index();
		$(".wrap_contact_info div").hide();
		$(".wrap_contact_info div").eq(idx).show();
	});
	$(".wrap_contact_tb div:not(.on)").hide();
	$(".boxright li a").click(function(){
		var idx = $(this).parents("li").index()+9;
		var idx2 = $(this).parents("li").index();
		//alert(idx2);
		$(".wrap_contact_info div").hide();
		$(".wrap_contact_info div").eq(idx).show();
		$(".wrap_contact_tb div").hide();
		$('div#tb_cont'+idx2).show();
	});


	

})

function loadPopup(add,wid,hei){
		window.open(add, 'Admin','width=' + wid + 'px, height=' + hei +'px ,resizalbe=no, menubar=no, toolbar=no, directories=1, scrollbars=no');
}

var count = 0;

function appendItem() {		
	if (count > 4) {
		alert("첨부파일은 최대 5개까지만 가능합니다.");
		return false;
	}			
	var newItem = document.createElement("div");
	newItem.setAttribute("id", "item_" + count);
	var html = '<input type="File" name="file_'+count+'" size="40" style="font:12px 돋움; padding:5px 0; height:22px;border:1px solid #cdcdcd;">'+
	'<a href="#write" onclick="return removeItem(' + count + ');"><img src="/common/images/common/btn_del.gif" alt="삭제" title="삭제" class="sort_t pd_l5" /></a>';
	var item = document.getElementById("item_"+count);
	newItem.innerHTML = html;	
	var itemListNode = document.getElementById('itemList');
	itemListNode.appendChild(newItem);
	count++;
}
function removeItem(idCount) {	
	count--;	
	var item = document.getElementById("item_"+idCount);
	if (item != null) {
		item.parentNode.removeChild(item);
	}
}


///////////////////////////////////////////////////////// e //////////////////////////////////////////////////////////