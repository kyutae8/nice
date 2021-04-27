<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/css/sb-admin-2.min.css" rel="stylesheet">

<link href='${pageContext.request.contextPath }/css/fullcalendar.css'rel='stylesheet' />
<script src='${pageContext.request.contextPath }/js/fullcalendar.js'></script>
<script src='${pageContext.request.contextPath }/js/locales-all.js'></script>

<!-- Custom styles for this page -->
<link href="${pageContext.request.contextPath }/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">예약 목록</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
    <form name="resForm" id="resForm">
    
	<br>
    	<!-- 게시글 목록 출력 -->
        <div class="table-responsive" id="resListDiv"></div>
        <!-- 페이징 -->
        <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
        	<ul class="pagination" id="pageNumDiv"></ul>
        </div>
	</form>
	
	<!-- //True Content end -->
</div>
</div>
<td style="text-align: center;"></td>

			
<!-- Page level plugins -->

<script id="boardTemplate" type="text/x-handlebars-template">
<table class="table table-striped table-bordered" cellspacing="0" width="100%">
	<thead>
		<tr>
			<th style="text-align: center;">예약번호</th>
			<th style="text-align: center;">아이디</th>
			<th style="text-align: center;">이름</th>
			<th style="text-align: center;">코스이름</th>
			<th style="text-align: center;">예약게임날짜</th>
			<th style="text-align: center;">예약시간대</th>
			<th style="text-align: center;">예약한날짜</th>
			<th style="text-align: center;">예약상태</th>
			<th style="text-align: center;">상태변경</th>
		</tr>
	</thead>
	<tbody>
	{{#each .}}
		<tr>
			<td style="text-align: center;">{{resCode}}</td>
			<td style="text-align: center;">{{resId}}</td>
			<td style="text-align: center;">{{resName}}</td>
			<td style="text-align: center;">
			{{#ifStatus resCosname 'Orange'}}
			<p style="color: orange;">Orange</p>
			{{/ifStatus}}
			{{#ifStatus resCosname 'Green'}}
			<p style="color: green;">green</p>
			{{/ifStatus}}
			{{#ifStatus resCosname 'Blue'}}
			<p style="color: blue;">blue</p>
			{{/ifStatus}}
			</td>
			<td style="text-align: center;">{{resResdate}}</td>
			<td style="text-align: center;">{{resPlaytime}}시</td>
			<td style="text-align: center;">{{resMydate}}</td>
			<td style="text-align: center;">
			{{#ifStatus resCancel 10}}
			예약
			{{/ifStatus}}
			{{#ifStatus resCancel 20}}
			<p style="color: red;">예약취소</p>
			{{/ifStatus}}
			</td>
			<td style="text-align: center;">
			{{#ifStatus resCancel 20}}
			{{/ifStatus}}
			{{#ifStatus resCancel 10}}
			<button type="button" onclick="del('{{resCode}}')" class="btn btn-danger">
				<span class="text">예약취소</span>
			</button>
			{{/ifStatus}}
			</td>
		</tr>
	{{/each}}
	</tbody>
</table>
</script>

<script type="text/javascript">
	Handlebars.registerHelper('ifStatus', function(v1, v2, options) {
		if(v1 == v2) {
			return options.fn(this);
		}
		return options.inverse(this);
	});

	

	
	function del(resCode) {
		location.href = '${pageContext.request.contextPath}/admin/rescancel?resCode='+resCode;
	}
	
		
	function insert(res_code) {
		$.ajax({
			type: "get",
			url: "res_view/"+res_code,
			dataType: "json",
			success: function(json) {
			},
			error: function() {
				alert("에러코드 = "+xhr.status);
			}
		});
	}

	

	var page=1;
	boardDisplay(page);

	function boardDisplay(pageNum) {
		page=pageNum;
		$.ajax({
			type: "get",
			url: "res_list?pageNum="+pageNum,
			dataType: "json",
			success: function(json) {
				if(json.resList.length==0) {
					$("#resListDiv").html("검색된 예약이 존재하지 않습니다.");
					return;
					
				}
				
				var source=$("#boardTemplate").html();
				var boardTemplate=Handlebars.compile(source);
				$("#resListDiv").html(boardTemplate(json.resList));
				pageDisplay(json.pager);
			}, 
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
	}

	/*********** 페이징 *********/
	function pageDisplay(pager) {
		var html="";
		if(pager.startPage>pager.blockSize) {
			html+="<li class='paginate_button page-item previous' id='dataTable_previous'><a href='javascript:boardDisplay("+pager.prevPage+");' class='page-link'>Previous</a></li>";
		} else {
			html+="<li class='paginate_button page-item previous' id='dataTable_previous'><a class='page-link'>Previous</a></li>";
		}
		
		for(var i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<li class='paginate_button page-item'><a href='javascript:boardDisplay("+i+");' class='page-link'>"+i+"</a></li>";
			} else {
				html+="<li class='paginate_button page-item active'><a href='#' class='page-link'>"+i+"</a></li>";
			}
		}
		
		if(pager.endPage!=pager.totalPage) {
			html+="<li class='paginate_button page-item' id='dataTable_next'><a href='javascript:boardDisplay("+pager.nextPage+");' class='page-link'>Next</a></li>";
		} else {
			html+="<li class='paginate_button page-item' id='dataTable_next'><a class='page-link'>Next</a></li>";
		}
		
		$("#pageNumDiv").html(html);
	}


</script>



