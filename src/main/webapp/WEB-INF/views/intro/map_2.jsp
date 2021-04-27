<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="courseImg">
						<img src="${pageContext.request.contextPath }/images/map/map02.gif" usemap="#transportPointer"    class="mapimgline"/>
						<map name="transportPointer" id="transportPointer">
							<area shape="rect" coords="127,447,190,492"  href="#none" onmouseover="popShow(0)" alt="5번경로" />
							<area shape="rect" coords="225,470,284,513"  href="#none" onmouseover="popShow(1)" alt="6번경로" />
						</map>

					</div>
                    <div class="courseTable">


						<table width="285" border="0" cellspacing="0" cellpadding="0">
							 <tr>
                            <td class="mapContentTit">
							경부고속도로 수원IC방면에서 오실때
							</td>

                          </tr>
                          <tr>
                            <td style="padding:20px 5px 10px 10px; background:#fff; font-size:12px;line-height:20px; " valign="top">
								1. 경부고속도로 수원IC에서 수원 신갈 방면<br>
								<span class="space01">고속도로 진출</span><br>
								2. 용인,한국민속촌,에버랜드 방면으로 우측방향<br>
								3. 성남,수지구청,경찰대학 방면으로 좌측방향<br><span class="space01">(용구대로)</span> <br>
								4. 삼성디지털프라자 구성점 끼고 올라오는 길로 <br><span class="space01"> 1.5km</span><br>
							</td>
                          </tr>
                        </table>
						<div id="mapPop" class="mapPop">
						<div class="mapTit"><img src="${pageContext.request.contextPath }/images/map/tit_detail.gif"></div>
						<div id="mapWrap" class="mapWrap">
							<!-- step1 -->
							<ul>
								<li class="pic"><img src="${pageContext.request.contextPath }/images/map/spic03.jpg"></li>
								<li class="subscript"> 삼성디지털프라자 끼고 우회전</li>
							</ul>
							<!-- //step1 -->
							<!-- step2 -->
							<ul>
								<li class="pic"><img src="${pageContext.request.contextPath }/images/map/spic04.jpg"></li>
								<li class="subscript">삼성디지털프라자끼고 올라오는길1.5km </li>
							</ul>
							<!-- //step2 -->

						</div>
						<span id="btnHidden" class="btnHidden"><img src="${pageContext.request.contextPath }/images/map/btn_x.gif" alt="" onclick="popHidden()" /></span>
					</div>
					<!-- //레이어 팝 -->
                  </div>