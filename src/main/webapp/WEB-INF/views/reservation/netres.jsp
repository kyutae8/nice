<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <style type="text/css">
#calendar{margin: 100px;}
</style> -->
		
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
		position: relative;
	}
}
</style>

</head>

	 <link href='${pageContext.request.contextPath }/css/fullcalendar.css' rel='stylesheet' />
    <script src='${pageContext.request.contextPath }/js/fullcalendar.js'></script>
    <script src='${pageContext.request.contextPath }/js/locales-all.js'></script> 
   


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



						<div style="clear: both;"></div>

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
							<%--이 사이에 인터넷 예약 --%>
							<div id="calendar"></div>
						
							<script type="text/javascript">
							  document.addEventListener('DOMContentLoaded', function() {
							        var calendarEl = document.getElementById('calendar');
							        var calendar = new FullCalendar.Calendar(calendarEl, {
							          initialView: 'dayGridMonth',
							          selectable : true,
							          dayMaxEventRows: true, // for all non-TimeGrid views
							          views: {
							            timeGrid: {
							              dayMaxEventRows: 3 // adjust to 6 only for timeGridWeek/timeGridDay
							            }
							          },
							         events:            
							        	  [
										<c:forEach var="res" items="${resList}">
								{title:'${res.resCosname} : ${res.resPlaytime}',start:'${fn:substring(res.resResdate,0,10)}' },
										</c:forEach>
							        	    ],
							        	    dateClick: function(info) {
							        	        var tod = new Date();
							        	        var toYear = tod.getFullYear();
							        	        var toMonth = tod.getMonth()+1;
							        	        var toDate = tod.getDate();
							        	        if (toMonth.length = 1) {
													toMonth="0"+(tod.getMonth()+1);
												}if (toDate.length = 1) {
													todate = "0"+(tod.getDate());
												}
												var sys = toYear+"-"+toMonth+"-"+toDate;
												if (sys>=info.dateStr) {
													alert("예약이 불가한 날짜입니다.");
												}else{
							        	    	alert('Date: ' + info.dateStr);
								        	 	location.href='${pageContext.request.contextPath}/netresinsert?dateStr='+info.dateStr;
												}
							        	        
							        	 	
							        	      },
							        	     
							        	    eventClick: function(info) {
									        	  var eventtitle = info.event.title;
									        	  var eventstart = info.event.start;
									        	    alert('예약정보: ' +eventtitle  + ' 날짜 = '+ eventstart);
									        	   
									        	    info.el.style.borderColor = 'red';
									        	  }
							        	  
							        });
							       	calendar.render();
							      });
							</script>
							<%--이 사이에 인터넷 예약 --%>
							<!-- help txt start -->
							<ul class="reservehelp">
								<li>노란색칸 이후 날짜가 예약 가능한 일자입니다.</li>

								<li class="mayHide2">예약 취소는 주중은 6일전 17:00 까지, 주말은 6일전 17:00
									까지 가능하오니 예약시 신중을 기해 주세요.</li>
								<li class="m_on_footers">예약 취소는 주중 6일전 17:00 까지, 주말 6일전
									17:00 까지 가능합니다.</li>

								<li>본 클럽 <a href="${pageContext.request.contextPath}/resinfo">예약규정</a>을
									준수해 주시면 감사하겠습니다.
								</li>
							</ul> 
							<!-- help txt end -->

						</div>
						<div class="reserveAll_bot">
							<!-- -->
						</div>
					</div>

				</div>
				<!-- //True Content end -->
			</div>


		</div>

	</div>
	
</body>
</html>