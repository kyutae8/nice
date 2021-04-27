<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한성컨트리클럽</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<style type="text/css">
#btnDiv { margin: 10px; }
}


</style>
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
                                        <span><img src="${pageContext.request.contextPath}/images/icon/ico_h.gif" /></span>
                                        <span><a href="/index.asp">홈</a></span>
                                        <span><img src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span>
                                        <span><a href="./members01.asp">회원서비스</a></span>
                                        <span><img src="${pageContext.request.contextPath}/images/icon/ico_I.gif" /></span>
                                        <span class="thispage">공지사항</span>
                                 	</div>
                            	<div class="subTitAll">
                                    <div class="subTitArea">
                                   	  <img src="${pageContext.request.contextPath}/images/subTit/members01.jpg" alt="공지사항" />
                                    </div>
                                 
                                </div>
                               <div class="subTxtArea">
                               
                               <c:if test="${sessionScope.loginMember.status eq 9 }"> 
                               		<button style="float: right; margin-bottom: 10px; background: #c39f78; color: white; width:45px; height:25px;" type="button" onclick="location.href='${pageContext.request.contextPath}/board_manager?category=1';">글쓰기</button>                 
                               </c:if>
                               <p style="color: red;">${msg }</p>
                               <div class="tableAll" style="padding-bottom:100px;">
					 			
               	 <!-- 게시판 리스트 시작 -->
				  <div id="totalPageDiv" style="padding:0px 0px 5px 0px; font-size:12px;">
			
				  </div>
                            <!-- 게시글 목록 출력 -->
							<div id="BoardListDiv">
							
							</div>
										
                                <!--// 게시판 리스트 끝 -->
                                <!-- 게시판 페이징 -->
                  <div style="width:100%;">

						<table width="90%" border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td width='62'></td>
								<td id="pageNumDiv" height="34" align="center" class="paging">

								</td>
								<td width='62' align='right'>
								
								</td>
							</tr>
					</table>

				 </div>
               </div>
            
               
								</div>
                      <!-- //True Content end -->
                        </div>
                        
                        
                   </div>

    				</div>
               </div>
      </div>  
	</div>
</div>
            
    <!-- //wrapper -->

	<script id="template" type="text/x-handlebars-template">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="memboard">
    	<tr style="background:#f7f8fa;">
      		<th width="10%" class="tline">No</th>
      		<th class="tline" width="50%">제목</th>
      		<th width="25%" class="tline">작성일</th>
      		<th width="15%">조회수</th>
    	</tr>

		{{#each .}}
		<tr>
      		<td align="center">{{num }}</td>
      		<td><a href="${pageContext.request.contextPath}/board_view/{{num}}">{{subject }}</a></td>
      		<td align="center">{{regdate }}</td>
      		<td align="center">{{readcount }}</td>
    	</tr>
		{{/each}}

	</table>

	</script>
	
	<script type="text/javascript">
	var page=1;//현재 요청 페이지 번호를 저장하는 전역변수
	boardDisplay(page);
	
	//게시글 목록을 요청하여 응답하는 함수
	function boardDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "board_list?pageNum="+pageNum+"&category=1",
			dataType: "json",
			success: function(json) {
				if(json.boardList.length==0) {
					$("#BoardListDiv").html("검색된 게시글이 존재하지 않습니다.");
					return;
				}
				
				//템플릿 코드를 반환받아 저장
				var source=$("#template").html();
				//템플릿 코드를 전달하여 템플릿 객체 생성
				var template=Handlebars.compile(source);
				//템플릿 객체에 자바스크립트 객체를 전달하여 HTML 코드로 변환하여 반환받아 응답 처리
				$("#BoardListDiv").html(template(json.boardList));
				$("#totalPageDiv").html("Total <b style='color:FE9448'>"+json.pager.totalPage+"</b> ("+pageNum+"/"+json.pager.totalPage+"page)");
				pageDisplay(json.pager);
			}, 
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
	}
	
	//페이지 번호를 응답하는 함수
	function pageDisplay(pager) {
		var html="";
		if(pager.startPage>pager.blockSize) {
			html+="<a href='javascript:boardDisplay("+pager.prevPage+");'><img src='${pageContext.request.contextPath}/images/btn/ico_pre.gif' border='0' style='max-width:10px; display: inline-block;'/></a>";
		} else {
			html+="<img src='${pageContext.request.contextPath}/images/btn/ico_pre.gif' border='0' style='max-width:10px; display: inline-block;'/>";
		}
		
		for(var i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:boardDisplay("+i+");'>["+i+"]</a>";
			} else {
				html+="["+i+"]";
			}
		}
		
		if(pager.endPage!=pager.totalPage) {
			html+="<a href='javascript:boardDisplay("+pager.nextPage+");'><img src='${pageContext.request.contextPath}/images/btn/ico_next.gif' border='0' style='max-width:10px; display: inline-block;' /></a>";
		} else {
			html+="<img src='${pageContext.request.contextPath}/images/btn/ico_next.gif' border='0' style='max-width:10px; display: inline-block;' />";
		}
		
		$("#pageNumDiv").html(html);
	}
	
	</script>
</body>
</html>


















