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
<h1 class="h3 mb-2 text-gray-800">코스 관리</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
    <form name="courseForm" id="courseForm">
	<br>
    	<!-- 회원 목록 출력 -->
        <div class="table-responsive" id="holeListDiv"></div>
	</form>
    </div>
</div>
<td align="center" style="vertical-align: middle; font-size: 1.5em;">
<!-- Page level plugins -->

<script id="memberTemplate" type="text/x-handlebars-template">
<table class="table table-bordered holeList" id="dataTable" width="100%" cellspacing="0">
	<thead>
		<tr>
			<th style="text-align: center;">번호</th>
			<th style="text-align: center;">코스이름</th>
			<th style="text-align: center;">홀 번호</th>
			<th style="text-align: center;">홀 PAR</th>
			<th style="text-align: center;">사진</th>
			<th style="text-align: center;">홀상태</th>
		</tr>
	</thead>
	<tbody>
	{{#each .}}
		<tr>
			<td style="text-align: center; vertical-align: middle; font-size: 1.5em;">{{holeId}}</td>
			<td style="text-align: center; vertical-align: middle;font-size: 1.3em;">
			{{#ifStatus holeCourseName 'Orange'}}
			<p style="color: orange;">Orange Course</p>
			{{/ifStatus}}
			{{#ifStatus holeCourseName 'Green'}}
			<p style="color: green;">Green Course</p>
			{{/ifStatus}}
			{{#ifStatus holeCourseName 'Blue'}}
			<p style="color: blue;">Blue Course</p>
			{{/ifStatus}}
			</td>
			<td style="text-align: center; vertical-align: middle;font-size: 1.3em;">{{holeNo}}H</td>
			<td style="text-align: center; vertical-align: middle;font-size: 1.3em;">PAR{{holePar}}</td>
			<td style="text-align: center; vertical-align: middle;font-size: 1.3em;">
			<img style="height: 70px;" src="${pageContext.request.contextPath }/course/images/info/course/{{holePicture}}" onclick="_open('${pageContext.request.contextPath }/course/images/info/course/{{holePicture}}');">
			</td>
			<td style="text-align: center; vertical-align: middle;font-size: 1.3em;">
			{{#ifStatus holeState 0}}
			개방
			{{/ifStatus}}
			{{#ifStatus holeState 1}}
			<p style="color: red; vertical-align: middle;font-size: 1.3em;">폐쇄</p>
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


	

/*********** 페이징 *********/
var page=1;
boardDisplay(page);

function boardDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "get",
		url: "hole_list?pageNum="+pageNum,
		dataType: "json",
		success: function(json) {
			if(json.holeList.length==0) {
				$("#holeListDiv").html("검색된 홀이 존재하지 않습니다.");
				return;
			}
			
			var source=$("#memberTemplate").html();
			var memberTemplate=Handlebars.compile(source);
			$("#holeListDiv").html(memberTemplate(json.holeList));
		}, 
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}


</script>



