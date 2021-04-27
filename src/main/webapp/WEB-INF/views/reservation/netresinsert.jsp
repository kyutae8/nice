<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>


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
	position: relative;
	line-height: 52px;
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
table {
  table-layout: fixed;
  width: 800px;
  border: 1px solid black;
  margin: 0 auto;
}
th{
border: 1px solid black;
}
td {
  border: 1px solid blue;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  text-align: center;
}
</style>
<Script Language="JavaScript">
function Info_Alert()
{
	if (Number('6') < 4 ) {

		alert('선택하신 일자의 예약시간은 이미 취소가능시한이 지나   \n\n예약을 완료하실 경우, 이후에 취소하실수 없습니다.\n\n예약에 신중을 기해주시길 바랍니다.');

	}

}

function Book_Confirm(date,time,cosName,id,name) {
	msg = '';
	msg = msg + date.substring(0,4) + '년 ' + date.substring(5,7) + '월 ' + date.substring(8,10) + '일  ';
	msg = msg + '\n'+time +'시 '+ cosName + '코스\n'+name+'님 ';
	msg = msg + '\n 예약하시겠습니까?';
	var con = confirm(msg);
	
	if (con == true) {
	location.href='${pageContext.request.contextPath}/netresinsert2?resCosname='+cosName+'&resId='+id+'&resName='+name+
			'&resPlaytime='+time+'&resResdate='+date;
	} else{
		alert('예약취소');
		return;
	}

}

</Script>
</head>

	


<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/default2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/inc/default3.css">
<script
	src="${pageContext.request.contextPath }/inc/jquery-1.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath }/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/wow.js"></script>
<script src="${pageContext.request.contextPath }/inc/nav_sub.js"></script>

<body>
<div id="wrap_sub">
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
							<li class="nav_sub cool-link3"><a
								href="${pageContext.request.contextPath}/netres">인터넷예약</a></li>
							<li class="nav_sub cool-link3"><a
								href="${pageContext.request.contextPath}/rescancel">예약확인/취소</a></li>
							<li class="nav_sub  cool-link3"><a
								href="${pageContext.request.contextPath }/resreg">위약규정</a></li>
						</ul>




<div style="clear:both;"></div>

</div>
<div class="clear_fix"></div>

                        <!-----------sub---------->

                             <div class="subTrue">
                      <!-- True Content start -->

                            <div class="subContent">
							    <div class="page_navi">
								<span><img
									src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
								<span><a href="${pageContext.request.contextPath }/">홈</a></span> <span><img
									src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
								<span><a href="/html/reserve/reserve01.asp">인터넷예약</a></span> <span><img
									src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
								<span><a href="/html/reserve/reserve01.asp">인터넷신청</a></span> <span><img
									src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
								<span class="thispage">인터넷예약</span>
							</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
									<img
										src="${pageContext.request.contextPath }/images/subTit/reser01.jpg"
										alt="인터넷예약" />
								</div>
                                </div>
                               <div class="subTxtArea">
								 <div class="reserveTop">
                                        <div class="reserveTopL"><strong>${dateStr }</strong>날짜의 라운딩 시간표 입니다. <a href="${pageContext.request.contextPath }/netres" style="color:#fff; cursor:pointer; float:right; margin-right:10px;"> ← 이전화면</a> </div>
                                        <div class="reserveTopR">
                                        <!--<a href="reserve01.asp"><img src="../../images/reserve/btn_pre.png" /></a>--></div>
                               	</div>
                               <p style="color: red;">${msg }</p>
                                <div class="reserve_step2All" style="width:100%;margin:0 auto;padding-left:0px;">
                               	<c:forEach var="cos" items="${cosList }">
               	  					<div class="step2course" style=" float:left;margin-right:0px;">
                                    	<p class="coursename"><a href="${pageContext.request.contextPath }/course/intro">${cos.courseName } </a>코스</p>
                                        <table class="reserArea" style="width:100%;">
                                          <tr>
                                            <th width="30">부</th>
											<th width="63">예약시간</th>
                                            <th >예약구분</th>
                                          </tr>
										</table>
										<c:forEach var="costime" items="${costimeList }" varStatus="i">
								<div class="scrolldiv"><!-- scroll div start -->
									  <table class="reserAreacut" style="width:100%;">
                    <tr>
                      <td width="30" rowspan="7">${i.count }부</td>
                      <td width="63">${costime.cosTime }</td>
                   <td>
                      
                          <button type="button"  onClick="Book_Confirm('${dateStr}','${costime.cosTime}','${cos.courseName }','${sessionScope.loginMember.id }','${sessionScope.loginMember.name }')">
						실시간예약
                          </button>
                                              </td>
                    </tr>
                                    </table>
								</div><!--//scroll div end -->
			   	</c:forEach>
                                    </div>
                   <!-- 예약선택결과 start -->
						<!-- <p class="coursename" style="margin-top:30px;">예약선택 확인</p>
						 <table class="reserArea" style="width:653px;">
                                          <tr>
                                             <th width="50">선택</th>
                                             <th>홀구분</th>
                                             <th>라운드일자</th>
											 <th>시간</th>
											 <th>코스</th>
											 <th>예약자</th>
											 <th>삭제</th>
                                          </tr>
                                          <tr>
                                            <td>1</td>
                                            <td>18홀</td>
											<td>2013.12.31</td>
                                            <td>08:30</td>
											<td>Orange</td>
											<td>홍길동</td>
											<td>삭제</td>
                                          </tr>

                                    </table>
						<div style="width:653px; text-align:center; height:30px;padding-top:30px;"></div>
 -->
				  <!-- //예약선택결과 end -->
			   </c:forEach>
			   
			   </div>
               </div>


								</div>
                      <!-- //True Content end -->
                        </div>


                   </div>

							<div class="clear_fix"></div>
    				</div>
               </div>
      </div>
    <!-- //wrapper -->>
							
					</div>

				<!-- //True Content end -->


</body>
</html>