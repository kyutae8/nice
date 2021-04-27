<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
a.on{ background:#74653e !important; color:#fff !important; display:block !important; height:55px !important;   }
.board_s_warp{ margin-top:20px !important;}
#nav_sub
{
    display:block;
	text-align:center;
    letter-spacing:normal;
	width:100%;
	background:#fff;
	height:60px;

	border-bottom:0px solid #988b6b;
}
#nav_sub
{
    display:block;
	text-align:center;
    letter-spacing:normal;
	width:100%;
	background:#fff;
	height:52px;
	max-width:1200px;
	position:relative;
	left:0;
	right:0;
	margin: auto;
	top:-50px;
	border-bottom:1px solid #f9f9f9;
}

#nav_sub ul
{
    padding:0;
    text-align:center;
    width:100%;
    font-size:0;
    list-style:none;
    position:relative;
	left:0%;
	top:0%;
	transform:translate(0%,0%);
	
    
	

}
#nav_sub ul li a{ padding:0px 0px 0px 0px; color:#333;}
#nav_sub ul li{
	border-right:1px solid #f9f9f9;  
	border-bottom:1px solid #f9f9f9;  
    margin:0;
	height:52px;
    padding:0px 0px 0px 0px;
	font-size:16px;
	width:16.6666666666667%;
	float:left;	
    /*display:inline-block;
    *display:inline;*/
    /*zoom:1; /*for IE6-7*/
    position:relative;
    line-height:52px; /*This determines the height of the menu*/
    /*vertical-align:middle;
    transition:background-color 0.2s;
    outline:none;
	-moz-user-select:none;
    -webkit-user-select: none;
    -ms-user-select: none;*/}
	
#nav_sub ul li:nth-child(1){ border-left:1px solid #f9f9f9; } /* nth-child(1) 매뉴의 첫번째*/


  @media (max-width: 900px) {
	a.on{ background:#74653e !important; color:#fff !important; display:block !important; height:35px !important;   }  
#nav_sub ul
{
    padding:0;
    text-align:center;
    width:100%;
    font-size:0;
    list-style:none;
    position:relative;
	left:0%;
	top:0%;
	transform:translate(0%,0%);
	background:#fff;
	
    
	

}	  
	  
#nav_sub
{
    display:block;
	text-align:center;
    letter-spacing:normal;
	width:95%;
	background:#fff;
	height:52px;
	max-width:1200px;
	position:relative;
	left:0;
	right:0;
	margin: auto;
	top:-30px;
	border-bottom:0px solid #f9f9f9;
}

#nav_sub ul li a{ padding:0px 0px 0px 0px; color:#333;}
#nav_sub ul li{
	border-right:1px solid #f9f9f9;  
	border-bottom:1px solid #f9f9f9;  
    margin:0;
	height:35px;
    padding:0px 0px 0px 0px;
	font-size:11px;
	width:33.33333%;
	float:left;	
    /*display:inline-block;
    *display:inline;*/
    /*zoom:1; /*for IE6-7*/
    position:relative;
    line-height:35px; /*This determines the height of the menu*/
    /*vertical-align:middle;
    transition:background-color 0.2s;
    outline:none;
	-moz-user-select:none;
    -webkit-user-select: none;
    -ms-user-select: none;*/}


/*.content_img{ position:relative; display:table; width:100%; left:0%; margin-left:0%;}*/
 }
</style>

<div id="nav_sub" class="noto">
<ul class="menu5">
	<li class="nav_sub cool-link3"><a href="${pageContext.request.contextPath }/intro/intro">소개및개요</a></li>
	<li class="nav_sub cool-link3"><a href="${pageContext.request.contextPath }/intro/ceo">인사말</a></li>
	<li class="nav_sub cool-link3"><a class="on" href="${pageContext.request.contextPath }/intro/map">오시는길</a></li>
</ul>
<div style="clear:both;"></div>

</div>
<div class="clear_fix"></div>

                        <!-----------sub---------->


                               <div class="subTrue">
   <!-- True Content start -->

                            <div class="subContent">
							<div class="page_navi">
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
                                        <span><a href="${pageContext.request.contextPath }/main">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span><a href="${pageContext.request.contextPath }/intro/intro">클럽소개</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">찾아오시는길</span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                   	  <img src="${pageContext.request.contextPath }/images/subTit/intro05.jpg" alt="찾아오시는길"/>
                                    </div>

                                </div>
                               <div class="subTxtArea">
									<!-- 오시는길시작 -->

					<div class="mapTopArea">
					<div class="addinfo"><strong>주소:</strong> 경기도 용인시 기흥구 구교동로 151</div>
					</div>

					 <div class="mapTeb">
                	<span id="mapBtn1" class="mapBtn"><a href="javascript:changeMap(1)" style="cursor:hand">판교IC 방면</a></span>
                    <span id="mapBtn2" class="mapBtn"><a href="javascript:changeMap(2)" style="cursor:hand">수원IC 방면</a></span>
                    <span id="mapBtn3" class="mapBtn"><a href="javascript:changeMap(3)" style="cursor:hand">분당-수서 방면</a> </span>
                    <span id="mapBtn4" class="mapBtn"><a href="javascript:changeMap(4)" style="cursor:hand">개포동,내곡IC</a></span>
                    <span id="mapBtn5" class="mapBtn"><a href="javascript:changeMap(5)"  style="cursor:hand">용인-서울 방면</a></span>
                    <span id="mapBtn6" class="mapBtn"><a href="javascript:changeMap(6)"  style="cursor:hand">분당도심 방면</a></span>
                </div>
				<div class="courseContent">
				<%-- Course Content 영역 --%>
				</div>
                </div>
                <div class="clear_fix h50"></div>
                <div class="mapbtnAll"><a href="http://map.naver.com/?menu=location&amp;mapMode=0&amp;lat=37.3066621&amp;lng=127.1226485&amp;dlevel=9&amp;searchCoord=127.1105929%3B37.3336647&amp;query=7ZWc7ISx7Luo7Yq466as7YG065%2B9&amp;mpx=02465550%3A37.3336647%2C127.1105929%3AZ7%3A0.3432652%2C0.2284704&amp;tab=1&amp;enc=b64"><img src="${pageContext.request.contextPath }/images/btn/btn_naver.gif"></a></div>


                                    <!--//오시는길끝 -->




								</div>
                      <!-- //True Content end -->
                        </div>
                        </div>
                     </div>
               </div>
            </div>
    <!-- //wrapper -->
</div>
<script type="text/javascript">
var mapNo = 1;
setCurrentMap();

function setCurrentMap() {
	$(".mapBtn").addClass("cbox");
	$(".mapBtn").removeClass("cbox_on");
	$("#mapBtn"+mapNo).addClass("cbox_on");
	$("#mapBtn"+mapNo).removeClass("cbox");
	
	$.ajax({
		type: "get",
		url: "${pageContext.request.contextPath}/intro/map/"+mapNo,
		dataType: "html",
		success: function(html) {
			$(".courseContent").html(html);
		},
		error: function(xhr) {
			alert("[에러] 지도 정보를 불러오는 데 실패했습니다. 에러코드 = "+xhr.status);
		}
	});
}


function changeMap(changeMapNo) {
	mapNo = changeMapNo;
	setCurrentMap();
}

function popShow(popNo) {
	if (!document.getElementById("mapPop")) return false;
	if (!document.getElementById("mapWrap")) return false;

	var mapPop = document.getElementById("mapPop");
	var mapWrap = document.getElementById("mapWrap");
	var mapList = mapWrap.getElementsByTagName("ul");

	var max = mapList.length;

	for (i=0; i< max; i++) {
		mapList[i].no = i;

		if (i == popNo) {
			mapPop.style.display = "block";
			mapList[i].style.display = "block";
		} else {
			mapList[i].style.display = "none";
		}
	}
}

function popHidden() {
	if (!document.getElementById("btnHidden")) return false;
	if (!document.getElementById("mapPop")) return false;

	var btnHidden = document.getElementById("btnHidden");
	var mapPop = document.getElementById("mapPop");

	mapPop.style.display = "none";
}
</script>