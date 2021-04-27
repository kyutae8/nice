<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="${pageContext.request.contextPath }/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">회원 목록</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
    <form name="memberForm" id="memberForm">
    <!-- 버튼 -->
    <div>
    	<a href="${pageContext.request.contextPath }/admin/member_add" class="btn btn-success btn-icon-split btn-sm" id="addBtn">
            <span class="icon text-white-50">
                <i class="fas fa-check"></i>
            </span>
            <span class="text">회원추가</span>
        </a>
	    	<a href="${pageContext.request.contextPath }/admin/member_remove" class="btn btn-danger btn-icon-split btn-sm" id="removeBtn">
	            <span class="icon text-white-50">
	                <i class="fas fa-trash"></i>
	            </span>
	            <span class="text">회원탈퇴</span>
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
    	<!-- 회원 목록 출력 -->
        <div class="table-responsive" id="memberListDiv"></div>
        <!-- 페이징 -->
        <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
        	<ul class="pagination" id="pageNumDiv"></ul>
        </div>
	</form>
    </div>
</div>

<!-- Page level plugins -->

<script id="memberTemplate" type="text/x-handlebars-template">
<table class="table table-bordered memberList" id="dataTable" width="100%" cellspacing="0">
	<thead>
		<tr>
			<th><input type="checkbox" id="allCheck" class="allCheck" onclick="checkAll()"></th>
			<th>아이디</th>
			<th>이름</th>
			<th>휴대전화</th>
			<th>이메일</th>
			<th>가입날짜</th>
			<th>회원상태</th>
		</tr>
	</thead>
	<tbody>
	{{#each .}}
		<tr>
			<td class="m_check">
			{{#ifStatus status 1}}
			<input type="checkbox" name="checkId" value="{{id }}" class="check">
			{{/ifStatus}}
			{{#ifStatus status 5}}
			<input type="checkbox" name="checkId" value="{{id }}" class="check">
			{{/ifStatus}}
			{{#ifStatus status 9}}
			{{/ifStatus}}
			</td>
			<td><a href='${pageContext.request.contextPath }/admin/member_modify?id={{id}}'>{{id}}</a></td>
			<td>{{name}}</td>
			<td>{{phone}}</td>
			<td>{{email}}</td>
			<td>{{joindate}}</td>
			<td>
				{{#ifStatus status 1}}
				일반회원
				{{/ifStatus}}
				{{#ifStatus status 5}}
				탈퇴회원
				{{/ifStatus}}
				{{#ifStatus status 9}}
				관리자
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


	function checkAll() {
		if($("#allCheck").is(":checked")) {
			$(".check").prop("checked",true);
		} else {
			$(".check").prop("checked",false);
		}
	}


	

/*********** 페이징 *********/
var page=1;
boardDisplay(page);

function boardDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "member_list?pageNum="+pageNum,
		dataType: "json",
		success: function(json) {
			if(json.memberList.length==0) {
				$("#memberListDiv").html("검색된 게시글이 존재하지 않습니다.");
				return;
			}
			
			var source=$("#memberTemplate").html();
			var memberTemplate=Handlebars.compile(source);
			$("#memberListDiv").html(memberTemplate(json.memberList));
			pageDisplay(json.pager);
		}, 
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}

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



