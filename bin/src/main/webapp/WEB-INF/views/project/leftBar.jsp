<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>업무 목록 - borampms</title>
</head>
<body>
		<!-- ========== Left Sidebar Start ========== -->
		<div class="leftside-menu">
			<!-- LOGO -->
			<a href="index.html" class="logo text-center logo-light">
				<span class="logo-lg">
					<img src="${path}/tools/project_assets/images/boram_dark.png" alt="" height="45">
				</span>
				<span class="logo-sm">
					<img src="${path}/tools/project_assets/images/boram_sm_dark.png" alt="" height="35">
				</span>
			</a>
			<!-- LOGO -->
			<a href="index.html" class="logo text-center logo-dark">
				<span class="logo-lg">
					<img src="${path}/tools/project_assets/images/boram_light.png" alt="" height="45">
				</span>
				<span class="logo-sm">
					<img src="${path}/tools/project_assets/images/boram_sm_light.png" alt="" height="35">
				</span>
			</a>
			<div class="h-100" id="leftside-menu-container" data-simplebar>
				<!--- Start Sidemenu -->
				<ul class="side-nav">
					<li class="side-nav-item">
						<a href="../dashboard/prjDash.html" class="side-nav-link">
             				<i class="fa fa-bar-chart" aria-hidden="true"></i>
              				<span> 대시보드 </span>
           				</a>
         			</li>
					<li class="side-nav-item">
            			<a href="../schedule/schCalendar.html" class="side-nav-link">
              				<i class="uil-calender"></i>
              				<span> 캘린더 </span>
            			</a>
          			</li>
          			<li class="side-nav-item">
          				<a data-bs-toggle="collapse" href="#sidebarTasks"
            				aria-expanded="false" aria-controls="sidebarTasks" class="side-nav-link">
              				<i class="uil-clipboard-alt"></i>
              				<span> 일정관리 </span>
              				<span class="menu-arrow"></span>
            			</a>
            			<div class="collapse" id="sidebarTasks">
              				<ul class="side-nav-second-level">
                				<li><a href="../schedule/schGantt.html">WBS/간트차트</a></li>
                				<li><a href="../schedule/schKanban.html">칸반보드</a></li>
              				</ul>
            			</div>
          			</li>
        			<li class="side-nav-item">
           				<a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false"
							aria-controls="sidebarDashboards" class="side-nav-link">
							<i class="uil-home-alt"></i>
							<span> 업무 관리 </span>
							<span class="menu-arrow"></span>
						</a>
						<div class="collapse" id="sidebarDashboards">
							<ul class="side-nav-second-level">
								<li><a href="../task/task_list.html">업무 목록</a></li>
								<li><a href="../task/task_issue.html">업무 이슈</a></li>
							</ul>
						</div>
					</li>
                    <li class="side-nav-item">
                        <a href="../doc/Doc-Management.html" class="side-nav-link">
                            <i class="uil-folder-plus"></i>
                            <span> 문서관리 </span>
                        </a>
                    </li>
                </ul>
				<!-- End Sidemeniu -->

				<div class="clearfix"></div>

			</div>
			<!-- Sidebar -left -->

		</div>
		<!-- ========== Left Sidebar end ========== -->
		
</body>
</html>