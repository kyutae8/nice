<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="courseImg">
						<img src="${pageContext.request.contextPath }/images/map/map04.gif" usemap="#transportPointer"  class="mapimgline"/>
						<map name="transportPointer" id="transportPointer">
							<area shape="rect" coords="124,447,187,492"  href="#none" onmouseover="popShow(0)" alt="3번경로" />
							<area shape="rect" coords="244,472,303,515"  href="#none" onmouseover="popShow(1)" alt="4번경로" />
						</map>

					</div>
                    <div class="courseTable">


						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							 <tr>
                            <td class="mapContentTit">
							개포동,내곡IC 방면에서 오실때
							</td>

                          </tr>
                          <tr>
                            <td style="padding:20px 5px 10px 10px; background:#fff; font-size:12px;line-height:20px; " valign="top">
								1. 경부고속도로 판교IC에서 분당 용인 방면<br>
								<span class="space01">고속도로 진출</span><br>
								2. 대왕판교대로에서 우회전 <br>
								3. 백현로 백현1교차로에서 분당방면으로 좌회전<br>
								4. 분당-수서 도시고속화도로 이용<br>
								5. 이마트앞 삼성디지털프라자 끼고 좌회전<br>
								6. 삼성디지털프라자 구성점끼고 올라오는길1.5km
							</td>
                          </tr>
                        </table>
						<div id="mapPop" class="mapPop">
						<div class="mapTit"><img src="${pageContext.request.contextPath }/images/map/tit_detail.gif"></div>
						<div id="mapWrap" class="mapWrap">
							<!-- step1 -->
							<ul>
								<li class="pic"><img src="${pageContext.request.contextPath }/images/map/spic07.jpg"></li>
								<li class="subscript">이마트앞 삼성디지털프라자 끼고 좌회전</li>
							</ul>
							<!-- //step1 -->
							<!-- step2 -->
							<ul>
								<li class="pic"><img src="${pageContext.request.contextPath }/images/map/spic08.jpg"></li>
								<li class="subscript">삼성디지털프라자끼고 올라오는길1.5km </li>
							</ul>
							<!-- //step2 -->

						</div>
						<span id="btnHidden" class="btnHidden"><img src="${pageContext.request.contextPath }/images/map/btn_x.gif" alt="" onclick="popHidden()" /></span>
					</div>
					<!-- //레이어 팝 -->
                  </div>