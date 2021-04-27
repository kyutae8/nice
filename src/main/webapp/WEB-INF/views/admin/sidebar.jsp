<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath }/admin/index">
                <div class="sidebar-brand-icon rotate-n-15">
                    <img class="rounded-circle" src="${pageContext.request.contextPath }/img/nicelogo.PNG">
                </div>
                <div class="sidebar-brand-text mx-3">NICEZO</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">
			
            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath }/admin/index">
                    <!-- <i class="fas fa-fw fa-tachometer-alt"></i><span>Home</span></a> -->
                    <i class="fas fa-home"></i><span> 관리자 홈</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath }/admin/member">
                    <i class="fas fa-user-friends"></i>
                    <span>회원관리</span>
                </a>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath }/admin/course">
                    <i class="fas fa-golf-ball"></i>
                    <span>코스관리</span>
                </a>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>코스예약관리</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="py-2 collapse-inner rounded" style="background-color: #86766a;">
                        <a class="collapse-item" href="${pageContext.request.contextPath }/admin/res">예약리스트</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/admin/res_netres">달력</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-book-open"></i>
                    <span>게시판관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="py-2 collapse-inner rounded" style="background-color: #86766a;">
                        <a class="collapse-item" href="${pageContext.request.contextPath }/admin/notice">공지사항</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath }/admin/qna">이벤트</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>