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
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">공지사항 목록</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
    <form name="boardForm" id="boardForm">
    <!-- 버튼 -->
    <div>
    	<a href="${pageContext.request.contextPath }/admin/board_add" class="btn btn-success btn-icon-split btn-sm" id="addBtn">
            <span class="icon text-white-50">
                <i class="fas fa-check"></i>
            </span>
            <span class="text" onclick="location.href=''">게시글 추가</span>
        </a>
	    	<a href="#" class="btn btn-danger btn-icon-split btn-sm" id="removeBtn">
	            <span class="icon text-white-50">
	                <i class="fas fa-trash"></i>
	            </span>
	            <span class="text" onclick="remove(${board.num});">삭제</span>
	        </a>
	</div>
    <div align="right">
    	<table>
			<tr id="filter_global">
		        <td align="center"><button type="button" id="btn_search">Search</button><input type="text" class="global_filter" id="global_filter"></td>
	        </tr>
		</table>
    </div>
	<br>
    	<!-- 게시글 목록 출력 -->
        <div class="table-responsive" id="boardListDiv"></div>
        <!-- 페이징 -->
        <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
        	<ul class="pagination" id="pageNumDiv"></ul>
        </div>
	</form>
</div>
</div>




<!-- Page level plugins -->

<script id="boardTemplate" type="text/x-handlebars-template">
<table class="table table-striped table-bordered" cellspacing="0" width="100%" id="noticeTable">
	<thead>
		<tr>
			<th><input type="checkbox" id="allCheck" class="allCheck" onclick="checkAll()"></th>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
	{{#each .}}
		<tr>
			<td class="b_check"><input type="checkbox" name="checkNum" value="{{num }}" class="check"</td>
			<td>{{num}}</td>
			<td><a href='${pageContext.request.contextPath }/admin/board_view/{{num}}'>{{subject}}</a></td>
			<td>관리자</td>
			<td>{{regdate}}</td>
			<td>{{readcount}}</td>
		</tr>
	{{/each}}
	</tbody>
</table>
</script>

<script type="text/javascript">
function filterGlobal () {
    $('#noticeTable').DataTable().search(
        $('#global_filter').val()
    ).draw();
}

$(document).ready(function() {
    $('#noticeTable').DataTable();
 
    $('input.global_filter').on( 'keyup click', function () {
        filterGlobal();
    } );
 
} );

	Handlebars.registerHelper('ifCategory', function(v1, v2, options) {
		if(v1 == v2) {
			return options.fn(this);
		}
		return options.inverse(this);
	});


	function checkAll() {
		if($("#allCheck").is(":checked")) {
			$(".check").prop("checked",true);
		} else {
			$(".check").prop("checked",false);
		}
	}

	
	function remove(num) {
		location.href="file_remove/"+num;
	}
	
		
	function insert(num) {
		$.ajax({
			type: "get",
			url: "board_view/"+num,
			dataType: "json",
			success: function(json) {
				$("#updateNum").val(json.num);
				$("#updateWriter").val(json.writer);
				$("#updateContent").val(json.content);
				$("#updateContent").val(json.content);
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
			url: "${pageContext.request.contextPath}/admin/board_list?pageNum="+pageNum+"&category=1",
			dataType: "json",
			success: function(json) {
				if(json.boardList.length==0) {
					$("#boardListDiv").html("검색된 게시글이 존재하지 않습니다.");
					return;
					
				}
				
				var source=$("#boardTemplate").html();
				var boardTemplate=Handlebars.compile(source);
				$("#boardListDiv").html(boardTemplate(json.boardList));
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



