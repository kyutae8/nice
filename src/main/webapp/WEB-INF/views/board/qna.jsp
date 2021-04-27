<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
                            
                             <div class="subTrue">
                      <!-- True Content start -->
                      			
                            <div class="subContent">
							<div class="page_navi">
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
                                        <span><a href="/index.asp">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span><a href="./members01.asp">회원서비스</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">자주하는질문</span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                   	  <img src="${pageContext.request.contextPath }/images/subTit/members02.jpg" alt="자주하는질문" />
                                    </div>
                                    
                                </div>
                               <div class="subTxtArea">
			

								<div id="">
								<!--페이지수 s -->	  
												  <div style="padding:15px 0px 5px 0px; font-size:12px;">
													 Total <b style="color:FE9448">4</b> (1/1page) </div>
								<!--//페이지수 e -->	  
								 
								 <!--FAQ board-->
								 <table class="faqboard" style="margin-top:10px;">
								  <tr>
								   <td class="iconBrd top"><img src="${pageContext.request.contextPath }/images/member/question_off.gif" /></td>
								   <td  class="top" style="CURSOR: hand" onClick="clickblock(1)"><strong>2인 혹은 5인 플레이가 가능한가요?</strong></td>
								   <td class="iconBrd top" style="CURSOR: hand" onClick="clickblock(1)"><img src="${pageContext.request.contextPath }/images/member/icon_open.gif" /></td>
								  </tr>
								  </table>
								 
								 <!--answer-->
								 <div class="ansArea" id="block1" style="display:none;">
								  <span class="iconAns"><img src="${pageContext.request.contextPath }/images/member/answer.gif" /></span>
								  2인 플레이는 불가능하며. 5인 플레이는 사전예약이 되어야 합니다.<br /> 
								  회원이 반드시 동반을 하여야 하며 진행에 협조 시 가능합니다.<br />
								  또한, 5인 플레이 시에는 전동카트가 2대, 캐디가 2명 배치됩니다.<br />
								  <span class="lgreyT">(진행 미협조 시 회사의 규정에 따라야 합니다.)</span>
								 </div>
								 <!--//answer-->

								 <table class="faqboard">
								  <tr>
								   <td class="iconBrd"><img src="${pageContext.request.contextPath }/images/member/question_off.gif" /></td>
								   <td  style="CURSOR: hand" onClick="clickblock(2)"><strong>이용요금 계산은 어떻게 하나요?</strong></td>
								   <td class="iconBrd" style="CURSOR: hand" onClick="clickblock(2)"><img src="${pageContext.request.contextPath }/images/member/icon_open.gif" /></td>
								  </tr>
								  </table>
								   <!--answer-->
								 <div class="ansArea" id="block2" style="display:none;">
								  <span class="iconAns"><img src="${pageContext.request.contextPath }/images/member/answer.gif" /></span>
								  모든 비용정산은 후불정산을 원칙으로 하며 캐디피만 라운딩 종료 후 경기보조원에게<br> 직접 지불하면 됩니다.<br> 
								  <span class="lgreyT">(고객이 원할 경우 그린피는 선불도 가능합니다.)</span>
								 </div>
								 <!--//answer-->

								  <table class="faqboard">
								  <tr>
								   <td class="iconBrd"><img src="${pageContext.request.contextPath }/images/member/question_off.gif" /></td>
								   <td  style="CURSOR: hand" onClick="clickblock(3)"><strong>입장객이 아닌 외부인도 클럽 식당이용 및 연말연시 각종 모임이 가능한가요?</strong></td>
								   <td class="iconBrd" style="CURSOR: hand" onClick="clickblock(3)"><img src="${pageContext.request.contextPath }/images/member/icon_open.gif" /></td>
								  </tr>
								  </table>
								   <!--answer-->
								 <div class="ansArea" id="block3" style="display:none;">
								  <span class="iconAns"><img src="${pageContext.request.contextPath }/images/member/answer.gif" /></span>
								  사전 예약전화를 주시면 언제든지 이용이 가능합니다. <br>기업체 또는 중요한 귀빈을 모실 수 있는 다양한 VIP Room이 
준비되어 있으며 20~250여명을 동시에 <br>수용할 수 있는 연회 룸이 준비되어 있습니다. <br>
영업시간은 21:30까지 이며 계절별 탄력적으로 운영합니다. <br>
								  <span class="lgreyT" style="padding-left:80px;">(예약전화 : 031-284-3831~6 (ARS 6번)</span>
								 </div>
								 <!--//answer-->
								   <table class="faqboard">
								  <tr>
								   <td class="iconBrd"><img src="${pageContext.request.contextPath }/images/member/question_off.gif" /></td>
								   <td  style="CURSOR: hand" onClick="clickblock(4)"><strong>비회원도 예약이 가능한가요?</strong></td>
								   <td class="iconBrd" style="CURSOR: hand" onClick="clickblock(4)"><img src="${pageContext.request.contextPath }/images/member/icon_open.gif" /></td>
								  </tr>
								 </table>
								  <!--answer-->
								 <div class="ansArea" id="block4" style="display:none;">
								  <span class="iconAns"><img src="${pageContext.request.contextPath }/images/member/answer.gif" /></span>
								 회원제 골프장으로서 회원우선 예약접수 후 평일에 한하여 시간이 남을 경우 전화예약 접수가 <br>가능하고, 
제휴업체 인터넷 사이트에 공지하고 있으므로 제휴업체 사이트를 방문하여 예약 가능합니다. <br>
								  <span class="lgreyT">(주중예약 전화 : 031-284-1122~3)<br>(제휴 사이트 : sbs골프닷컴, 에이스 회원권, X-골프)</span>
								 </div>
								 <!--//answer-->



								</div>
                      <!-- //True Content end -->
                        </div>
                        
                        
                   </div>

    				</div>
               </div>
      </div>              
    <!-- //wrapper -->

</body>
<script>
function clickblock(num)  
{  
        for (i=1;i<5;i++)  {      //5라는 수는 줄수보다 1 더한값을 적어주세요//
         var left_menu=eval("block"+i+".style");                                                    
         if (num==i) {  
          if (left_menu.display=="block") { 
left_menu.display="none";   
          }else{  
           left_menu.display="block";
          }  
         }else {
left_menu.display="none";
}  
        }  
} 
</script>
</html>