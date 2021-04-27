<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한성컨트리클럽</title>
</head>
<body>
<input type="hidden" name="category" value="${board.category }">
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
							<div class="page_navi" style="width:100%;">
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_h.gif" /></span>
                                        <span><a href="/index.asp">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span>회원서비스</span>
                                        <span><img src="${pageContext.request.contextPath }/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">
                                        <c:if test="${board.category==1 }">공지사항</c:if>
                                        <c:if test="${board.category==2 }">이벤트</c:if>
                                        </span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                    <c:if test="${board.category==1 }">
                                   	  <img src="${pageContext.request.contextPath }/images/subTit/members01.jpg" alt="공지사항" />
                                   	</c:if>
                                    <c:if test="${board.category==2 }">
                                   	  <img src="${pageContext.request.contextPath }/images/subTit/members03.jpg" alt="이벤트" />
                                   	</c:if>
                                    </div>
                                    
                                   <c:if test="${sessionScope.loginMember.status eq 9 }"> 
                                    <div class="boardBtn" style="width:100%;"> 
                                    	<button type="button" style="background: #c39f78; color: white; width:45px; height:25px;" onclick="location.href='${pageContext.request.contextPath }/board_modify/${board.num}';">수정</button>
                                    	<button type="button" style="background: #c39f78; color: white; width:45px; height:25px;" onclick="remove(${board.num});">삭제</button>
                                   	</div>
                                   	</c:if>
                                    
                                </div>
                               <div class="subTxtArea">
									<div class="tableAll" style="padding-bottom:100px;">
               	 <!-- 게시판 리스트 시작 -->
                        <table border="0" cellspacing="0" cellpadding="0" class="viewTop" style="width:100%;">
                                  <tr>
                                    <td class="vTtxt">${board.num} . ${board.subject }</td>
                                    <td width="115" class="vTname">작성일 <span class="gTcolor">${board.regdate }</span></td>
                                    <td width="100" class="vTname">조회수 <span class="gTcolor">${board.readcount }</span></td>
                                  </tr>
                 		</table>
   						<div class="boardContent" style="width:100%; height:550px;background-color:#fff;">

		
						<img src="${pageContext.request.contextPath }/b_image/${board.image}" border="0"  align='absmiddle'>
						<div style="text-align: center;">${board.content}</div>
						</div>
						

						<!-- 
							<table width="100%" border="0" cellspacing="0" cellpadding="0" class="viewBot">
                              <tr>
                                <td><img src='../../images/btn/btn_ptxt.gif' border='0' class='max_img' align='absmiddle'><a href='members01_view.asp?b_idx=241&gotopage=1'> 2021년 그린피 조정 안내</a></td>
                              </tr>
                              <tr>
                                <td class="lastvb"></td>
                              </tr>
                            </table> -->

							<!-- 버튼 -->
						<c:if test="${board.category==1 }">
						<div class="boardBtn" style="width:100%;"> <a href="${pageContext.request.contextPath }/notice"><img style="max-width:53px;" src="${pageContext.request.contextPath }/images/btn/btn_list.gif" /></a> </div>
						</c:if>
						<c:if test="${board.category==2 }">
						<div class="boardBtn" style="width:100%;"> <a href="${pageContext.request.contextPath }/event"><img style="max-width:53px;" src="${pageContext.request.contextPath }/images/btn/btn_list.gif" /></a> </div>
						</c:if>
						
						
			  <!--// 게시판 리스트 끝 -->

								<!-- 게시판 페이징 -->
               </div>


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
	function remove(num) {
		if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
			$.ajax({
				type: "get",
				url: "${pageContext.request.contextPath}/board_remove/"+num,
				dataType: "text",
				success: function(text) {
					if(text == "success") {
						if(document.category.value == 1) {
							location.href="${pageContext.request.contextPath}/notice";
						} else if(document.category.value == 2) {
							location.href="${pageContext.request.contextPath}/event";
						}
					}
				},
				error: function() {
					alert("에러코드 = "+xhr.status);
				}
			});
		}
	}
	</script>
</body>
</html>