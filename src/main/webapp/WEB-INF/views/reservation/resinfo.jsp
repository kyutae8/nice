<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/inc/default2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/inc/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/inc/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/inc/default3.css">
<script src="${pageContext.request.contextPath}/inc/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath}/inc/wow.js"></script>
<script src="${pageContext.request.contextPath}/inc/nav_sub.js"></script>
<style>

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
</head>
<body>
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
<div id="nav_sub" class="noto">
						<ul class="menu1">
							<li class="nav_sub cl-effect-3"
								style="width: 0px !important; margin: 0px; padding: 0px; border: 0px;"></li>
							<li class="nav_sub cl-effect-3"
								style="width: 0px !important; margin: 0px; padding: 0px; border: 0px;"></li>
							<li class="nav_sub  cool-link3"><a
								href="${pageContext.request.contextPath }/resinfo">예약안내</a></li>
							<li class="nav_sub  cool-link3"><a
								href="${pageContext.request.contextPath }/resnetroot">인터넷예약방법</a></li>
							<li class="nav_sub cool-link3"><a
								href="${pageContext.request.contextPath }/resmobroot">모바일예약방법</a></li>	
							<c:choose>
							<c:when test="${sessionScope.loginMember.id != null }">
							<li class="nav_sub cool-link3"><a
								href="${pageContext.request.contextPath}/netres">인터넷예약</a></li>
							<li class="nav_sub cool-link3"><a
								href="${pageContext.request.contextPath}/rescancel">예약확인/취소</a></li>
							</c:when>							
							<c:otherwise>
							<li class="nav_sub cool-link3"><a
								href="${pageContext.request.contextPath}/login">인터넷예약</a></li>
							<li class="nav_sub cool-link3"><a
								href="${pageContext.request.contextPath}/login">예약확인/취소</a></li>
							</c:otherwise>
							</c:choose>
							<li class="nav_sub  cool-link3"><a
								href="${pageContext.request.contextPath }/resreg">위약규정</a></li>
						</ul>




						<div style="clear: both;"></div>

					</div>
<div class="clear_fix"></div>

                        <!-----------sub---------->


                               <div class="subTrue">
                    <!-- True Content start -->

                            <div class="subContent">
							<div class="page_navi">
                                        <span><img src="${pageContext.request.contextPath}/images/icon/ico_h.gif" /></span>
                                        <span><a href="${pageContext.request.contextPath}/index.html">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span>
                                        <span><a href="${pageContext.request.contextPath}/html/reserve/reserve01.html">인터넷예약</a></span>
                                        <span><img src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">예약안내</span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                   	  <img src="${pageContext.request.contextPath}/images/subTit/guide03.jpg" alt="예약안내" />
                                    </div>

                                </div>
                               <div class="subTxtArea">
									<div id="txtcontent">
 <!--regular member-->
 <h3 class="subtit">정회원</h3>
  <table class="gidtbl f14">
   <thead>
    <tr>
     <th class="top col17">구분</th>
	 <th class="top col35">예약시기</th>
	 <th class="top col25">예약횟수</th>
	 <th class="top col18">예약취소</th>
	</tr>
   </thead>
   <tbody>
    <tr>
	 <th class="leftbtm txtaleft02">주중</th>
	 <td>1부,2부 해당요일 3주전 09:00부터 전화 예약</td>
	 <td class="leftbtm">1일 오전에 한하여 2팀까지 (오후 잔여시간은 1일 1팀)</td>
	 <td class="leftbtm">1주전 17:00까지</td>
	</tr>


	<tr>
	 <th class="leftbtm txtaleft02">주말</th>
	 <td>2주전 화요일 13:00부터 전화 예약</td>
	 <td class="leftbtm">1일 1팀</td>
	 <td class="leftbtm">1주전 금요일 17:00까지</td>
	</tr>
<!--
	<tr>
	 <td class="leftbtm">1주전 수요일 잔여팀에 한하여 오픈</td>
	 <td class="leftbtm">1일 1팀</td>
	 <td class="leftbtm">7일전 17:00까지</td>
	</tr>
//-->


	<tr>
	 <th rowspan="2" class="leftbtm txtaleft02">국경일 및 공휴일</th>
	 <td>별도공지</td>
	 <td rowspan="2" class="leftbtm">1일 1팀</td>
	 <td rowspan="2" class="leftbtm">7일전 17:00까지</td>
	</tr>
	<tr>
	 <td class="leftbtm">전화예약 후 잔여팀에 한하여 오픈</td>
	</tr>
	<tr>
	 <th class="leftbtm txtaleft02">회원의날</th>
	 <td>2주전 수요일 13:00부터 전화 예약</td>
	 <td class="leftbtm">1일 1팀</td>
	 <td class="leftbtm">8일전 17:00까지</td>
	</tr>
<!--
	<tr>
	 <td class="leftbtm">잔여팀에 한하여 5일전 오픈</td>
	 <td class="leftbtm">1일 1팀</td>
	 <td class="leftbtm">7일전 17:00까지</td>
	</tr>
//-->
	<tr>
	 <th class="txtaleft02">공지사항</th>
	 <td class="bottom">모바일 접속 가능</td>
	 <td class="bottom"><!----></td>
	 <td class="bottom"><!----></td>
	</tr>
   </tbody>
  </table>

 <!--cyber member-->
 <h3 class="subtit mt40">사이버회원</h3>
  <table class="gidtbl f14">
   <thead>
    <tr>
     <th class="top col17">구분</th>
	 <th class="top col20">가입절차</th>
	 <th class="top col25">예약시기</th>
	 <th class="top col25">예약횟수</th>
	 <th class="top col15">예약취소</th>
	</tr>
   </thead>
   <tbody>
    <tr>
     <th class="leftbtm ptb10 txtaleft02">주중</th>
     <td rowspan="4" class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">본인 인증절차에 따른 회원가입 <br />(개인,단체)</td>
     <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">2주전 09:00부터 오픈(1부)<br> (전화예약 병행)</td>
     <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">1일 오전에 한하여 2팀까지 (오후 잔여시간은 1일1팀)</td>
     <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">5일전 17:00까지</td>
    </tr>
	<tr>
	 <th class="leftbtm ptb10 txtaleft02">주말</th>
	 <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">예약일 전주 금요일 잔여팀에 한하여 오픈 <br>(전화예약 병행)</td>
	 <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">1일 1팀</td>
	 <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">6일전 17:00까지</td>
	</tr>
	<tr>
	 <th class="leftbtm ptb10 txtaleft02">국경일 및 공휴일</th>
	 <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">별도공지 (전화예약 병행)</td>
	 <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">1일 1팀</td>
	 <td class="alinLpd" style="border-bottom:solid 1px #f1f1f1;">6일전 17:00까지</td>
	</tr>
	<tr>
	 <th class="leftbtm txtaleft02">회원의날</th>
	 <td class="leftbtm"><!----></td>
	 <td class="leftbtm"><!----></td>
	 <td class="leftbtm"><!----></td>
	</tr>
	<tr>
	 <th class="txtaleft02">공지사항</th>
	 <td class="bottom"><!----></td>
	 <td class="bottom alinLpd">선착순 접수</td>
	 <td class="bottom alinLpd">가입비 없음</td>
	 <td class="bottom alinLpd">예약자 본인내장</td>
	</tr>
   </tbody>
  </table>

</div>
								</div>
                      <!-- //True Content end -->
                        </div>
                        </div>
                     </div>
               </div>
            </div></div>
    <!-- //wrapper -->
</body>
</html>