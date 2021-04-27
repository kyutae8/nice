<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<ul class="menu3">
	<li class="nav_sub cool-link3"><a href="${pageContext.request.contextPath }/intro/info">이용안내</a></li>
	<li class="nav_sub cool-link3"><a href="${pageContext.request.contextPath }/intro/pay_info">이용요금안내</a></li>
	<li class="nav_sub cool-link3"><a class="on" href="${pageContext.request.contextPath }/intro/join_info">입회절차</a></li>
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
                                        <span><a href="${pageContext.request.contextPath }/index.html">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span><a href="guide01.html">운영안내</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">입회안내</span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                   	  <img src="${pageContext.request.contextPath }/images/subTit/guide04.jpg" alt="입회안내" />
                                    </div>

                                </div>
                               <div class="subTxtArea">
								<div id="txtcontent">

 <!--guide joinclub-->
 <h3 class="subtit">입회안내</h3>
  <table class="gidtbl">
   <thead>
   <tr>
    <th class="top col15">구분</th>
	<th class="top col30">양도</th>
	<th class="top col35">양수</th>
	<th class="top col17">비고</th>
   </tr>
   </thead>
   <tbody>
   <tr>
    <th class="leftbtm txtaleft">개인</th>
	 <td class="alignL">
	  <ul class="gidlist ptb10">
	   <li class="noIcon">회원권 양도승인서(양식)</li>
	   <li class="noIcon">인감증명서</li>
	   <li class="noIcon">매매계약서</li>
	   <li class="noIcon">회원증 반환(대,소)</li>
	  </ul>
	 </td>
	 <td class="alignL">
	  <ul class="gidlist">
	   <li class="noIcon">입회신청서(양식)</li>
	   <li class="noIcon">주민등록초본</li>
	   <li class="noIcon">이력서</li>
	   <li class="noIcon">반명함판 사진3매</li>
	  </ul>
	 </td>
	 <td class="alignL">
	  <ul class="gidlistn">
	   <li class="noIcon"><!----></li>
	   <li class="noIcon">3개월 이내</li>
	   <li class="noIcon"><!----></li>
	   <li class="noIcon"><!----></li>
	  </ul>
	 </td>
  	</tr>

	<tr>
	<th class="leftbtm txtaleft">법인</th>
	 <td class="alignL">
	  <ul class="gidlist ptb10">
	   <li class="noIcon">회원권 양도승인서(양식)</li>
	   <li class="noIcon">법인 인감증명서</li>
	   <li class="noIcon">법인 등기부등본</li>
	   <li class="noIcon">사업자등록증사본</li>
	   <li class="noIcon">이사회 결의서</li>
	   <li class="noIcon">매매계약서</li>
	   <li class="noIcon">회원증 반환(대,소)</li>
	   <li class="noIcon"><!----></li>
	  </ul>
	 </td>
	 <td class="alignL">
	  <ul class="gidlist">
	   <li class="noIcon">입회신청서(양식)</li>
	   <li class="noIcon">법인 인감증명서</li>
	   <li class="noIcon">법인 등기부등본</li>
	   <li class="noIcon">사업자등록증 사본</li>
	   <li class="noIcon">지명인 주민등록초본</li>
	   <li class="noIcon">지명인 이력서</li>
	   <li class="noIcon">지명인 반명함판 사진3매</li>
	   <li class="noIcon">재직증명서(미등기 이사인 경우)</li>
	  </ul>
	 </td>
	 <td class="alignL">
	  <ul class="gidlistn">
	   <li class="noIcon"><!----></li>
	   <li class="noIcon">3개월 이내</li>
	   <li class="noIcon">6개월 이내</li>
	   <li class="noIcon"><!----></li>
	   <li class="noIcon"><!----></li>
	   <li class="noIcon"><!----></li>
	   <li class="noIcon"><!----></li>
	   <li class="noIcon">법인인감 날인</li>
	  </ul>
	 </td>
  	</tr>

	<tr>
	 <th class="leftbtm txtaleft">증여</th>
	 <td><!----></td>
	 <td class="alignL">
	  <ul class="gidlist ptb10">
	   <li class="noIcon">입회신청서(양식)</li>
	   <li class="noIcon">증여계약서</li>
	   <li class="noIcon">증여/수증자 인감증명서 각 1통</li>
	   <li class="noIcon">주민등록초본</li>
	   <li class="noIcon">이력서</li>
	   <li class="noIcon">반명함판 사진 3매</li>
	   <li class="noIcon">회원증 반환(대,소)</li>
	  </ul>
	  </td>
	  <td><!----></td>
	 </tr>

	 <tr>
	  <th class="leftbtm txtaleft">상속</th>
	  <td><!----></td>
	  <td class="alignL">
	   <ul class="gidlist ptb10">
	    <li class="noIcon">입회신청서(양식)</li>
		<li class="noIcon">상속합의서(상속포기 각서)</li>
		<li class="noIcon">재적등본</li>
		<li class="noIcon">상속대상자 인감증명서 각 1통</li>
		<li class="noIcon">주민등록초본</li>
		<li class="noIcon">이력서</li>
		<li class="noIcon">반명함판 사진3매</li>
		<li class="noIcon">회원증 반환(대,소)</li>
	   </ul>
	  </td>
	  <td class="alignL">
	   <ul class="gidlistn">
	    <li class="noIcon"><!----></li>
		<li class="noIcon"><!----></li>
		<li class="noIcon">6개월 이내</li>
		<li class="noIcon"><!----></li>
		<li class="noIcon"><!----></li>
		<li class="noIcon"><!----></li>
		<li class="noIcon"><!----></li>
		<li class="noIcon"><!----></li>
	   </ul>
	  </td>
	 </tr>

	 <tr>
	  <th class="txtaleft">법인<br>이용자 <br>변경</th>
	  <td class="bottom"><!----></td>
	  <td class="bottom alignL">
	    <ul class="gidlist ptb10">
	     <li class="noIcon">법인회원명의 변경신청서(양식)</li>
		 <li class="noIcon">법인 인감증명서</li>
		 <li class="noIcon">법인 등기부등본</li>
		 <li class="noIcon">사업자등록증 사본</li>
		 <li class="noIcon">지명인 주민등록초본</li>
		 <li class="noIcon">지명인 이력서</li>
		 <li class="noIcon">지명인 반명함판 사진3매</li>
		 <li class="noIcon">지명인 재직증명서</li>
		 <li class="noIcon lgreyT">(미등기 이사인 경우)</li>
		 <li class="noIcon">전 명의자 회원증(소) 반환</li>
	    </ul>
	  </td>
	  <td class="bottom alignL">
	    <ul class="gidlistn">
		 <li class="noIcon">법인인감 날인</li>
		 <li class="noIcon"><!----></li>
		 <li class="noIcon"><!----></li>
		 <li class="noIcon"><!----></li>
		 <li class="noIcon"><!----></li>
		 <li class="noIcon"><!----></li>
	     <li class="noIcon"><!----></li>
	     <li class="noIcon">법인인감 날인</li>
		 <li class="noIcon"><!----></li>
		 <li class="noIcon"><!----></li>
	    </ul>
	  </td>
	 </tr>
	</tbody>
   </table>
   <p class="mt10">※ 공통: 개인정보수집-이용에 대한 동의서</p>

 <!--requirements-->
 <h3 class="subtit mt20">회원가입자격</h3>
  <ul class="gidlist ml8">
   <li>만30세 이상(남)</li>
  </ul>

 <!--reissue card-->
 <h3 class="subtit mt20">회원증분실 재발급서류</h3>
  <ul class="gidlist ml8">
   <li>분실각서(양식)</li>
   <li>신문 분실공고문</li>
<!--
   <li>분실계(양식)</li>
   <li>재발행신청서(양식)</li>
   <li>경찰서 민원실 분실신고 접수증</li>
//-->
  </ul>
  <p class="mt10 ml8">※ 기타 자세한 사항은 회원권 담당자에게 문의하시기 바랍니다.</p>

 <!--download form-->
 <h3 class="subtit mt20">양식 다운로드</h3>
  <ul class="gidlist ml8">
<!--
   <li><a href="/download/download_002.zip">재발행신청서 다운로드</a></li>
   <li><a href="/download/download_005.zip">회원증분실계 다운로드</a></li>
//-->
   <li><a href="${pageContext.request.contextPath }/download/download_001.zip">표준약관 다운로드</a></li>
   <li><a href="${pageContext.request.contextPath }/download/download_003.zip">법인회원 명의변경신청서 다운로드</a></li>
   <li><a href="${pageContext.request.contextPath }/download/download_007.zip">개인정보수집동의서 다운로드</a></li>
   <li><a href="${pageContext.request.contextPath }/download/download_006.zip">회원권양도승인서 양식 다운로드</a></li>
   <li><a href="${pageContext.request.contextPath }/download/download_004.zip">분실각서 다운로드</a></li>
  </ul>

</div>
								</div>
                      <!-- //True Content end -->               
                        </div>
                        </div>
                     </div>
               </div>
            </div>
</div>