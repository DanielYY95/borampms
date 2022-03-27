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
	<title>이슈 목록 - borampms</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	<meta content="Coderthemes" name="author" />
	<!-- App favicon -->
	<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

	<!-- App css -->
	<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />
</head>
<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
	data-rightbar-onstart="true">
	
	
	<!-- Begin page -->
	<div class="wrapper">
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
                				<li><a href="${path}/schGantt.do">WBS/간트차트</a></li>
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
								<li><a href="${path}/task.do?method=list">업무 목록</a></li>
								<li><a href="${path}/issue.do?method=list">이슈 목록</a></li>
							</ul>
						</div>
					</li>
                    <li class="side-nav-item">
                        <a href="${path}/dept.do?method=list" class="side-nav-link">
                            <i class="uil-folder-plus"></i>
                            <span> 문서관리 </span>
                        </a>
                    </li>
                </ul>
				<!-- End Sidemenu -->

				<div class="clearfix"></div>

			</div>
			<!-- Sidebar -left -->

		</div>
		<!-- ========== Left Sidebar end ========== -->
		
		
		
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">
			
				<!-- Start Topbar -->
				<div class="navbar-custom">
					<ul class="list-unstyled topbar-menu float-end mb-0">
												
						<!--상단(top bar) 언어 설정 / 알림 목록 / 공유 / 설정 nav -->
						<li class="dropdown notification-list topbar-dropdown">
							<a class="nav-link dropdown-toggle arrow-none"
								data-bs-toggle="dropdown" href="#" role="button"
								aria-haspopup="false" aria-expanded="false">
									<img src="${path}/tools/project_assets/images/flags/us.jpg" alt="user-image"
										class="me-0 me-sm-1" height="12">
									<span class="align-middle d-none d-sm-inline-block">English</span>
									<i class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i>
							</a>
							
							<!-- 언어 설정 -->
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu">

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<img src="${path}/tools/project_assets/images/flags/korean.jpg" alt="user-image"
									class="me-1" height="12"> <span class="align-middle">Korean</span>
								</a>
								
								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<img src="${path}/tools/project_assets/images/flags/japan.jpg" alt="user-image"
									class="me-1" height="12"> <span class="align-middle">Japan</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<img src="${path}/tools/project_assets/images/flags/germany.jpg" alt="user-image"
									class="me-1" height="12"> <span class="align-middle">German</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<img src="${path}/tools/project_assets/images/flags/italy.jpg" alt="user-image"
									class="me-1" height="12"> <span class="align-middle">Italian</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<img src="${path}/tools/project_assets/images/flags/spain.jpg" alt="user-image"
									class="me-1" height="12"> <span class="align-middle">Spanish</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<img src="${path}/tools/project_assets/images/flags/russia.jpg" alt="user-image"
									class="me-1" height="12"> <span class="align-middle">Russian</span>
								</a>

							</div>
						</li>

						<!-- 알림 목록 -->
						<li class="dropdown notification-list">
							<a
								class="nav-link dropdown-toggle arrow-none"
								data-bs-toggle="dropdown" href="#" role="button"
								aria-haspopup="false" aria-expanded="false">
								<i class="dripicons-bell noti-icon"></i>
								<span class="noti-icon-badge"></span>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg">

								<!-- item-->
								<div class="dropdown-item noti-title px-3">
									<h5 class="m-0">
										<span class="float-end">
											<a href="javascript: void(0);" class="text-dark">
											<small>Clear All</small>
											</a>
										</span>
										Notification
									</h5>
								</div>

								<div class="px-3" style="max-height: 300px;" data-simplebar>

									<h5 class="text-muted font-13 fw-normal mt-0">Today</h5>
									<!-- item-->
									<a href="javascript:void(0);" class="dropdown-item p-0 notify-item card unread-noti shadow-none mb-2">
										<div class="card-body">
											<span class="float-end noti-close-btn text-muted">
												<i class="mdi mdi-close"></i>
											</span>
											<div class="d-flex align-items-center">
												<div class="flex-shrink-0">
													<div class="notify-icon bg-primary">
														<i class="mdi mdi-comment-account-outline"></i>
													</div>
												</div>
												<div class="flex-grow-1 text-truncate ms-2">
													<h5 class="noti-item-title fw-semibold font-14">
														Datacorp
														<small class="fw-normal text-muted ms-1">1 min ago</small>
													</h5>
													<small class="noti-item-subtitle text-muted">
														Caleb Flakelar commented on Admin</small>
												</div>
											</div>
										</div>
									</a>

									<!-- item-->
									<a href="javascript:void(0);"
										class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
										<div class="card-body">
											<span class="float-end noti-close-btn text-muted">
												<i class="mdi mdi-close"></i>
											</span>
											<div class="d-flex align-items-center">
												<div class="flex-shrink-0">
													<div class="notify-icon bg-info">
														<i class="mdi mdi-account-plus"></i>
													</div>
												</div>
												<div class="flex-grow-1 text-truncate ms-2">
													<h5 class="noti-item-title fw-semibold font-14">
														Admin
														<small class="fw-normal text-muted ms-1">1 hours ago</small>
													</h5>
													<small class="noti-item-subtitle text-muted">
														New user registered</small>
												</div>
											</div>
										</div>
									</a>

									<h5 class="text-muted font-13 fw-normal mt-0">Yesterday</h5>
									<!-- item-->
									<a href="javascript:void(0);"
										class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
										<div class="card-body">
											<span class="float-end noti-close-btn text-muted">
												<i class="mdi mdi-close"></i>
											</span>
											<div class="d-flex align-items-center">
												<div class="flex-shrink-0">
													<div class="notify-icon">
														<img src="${path}/tools/project_assets/images/users/avatar-2.jpg"
															class="img-fluid rounded-circle" alt="" />
													</div>
												</div>
												<div class="flex-grow-1 text-truncate ms-2">
													<h5 class="noti-item-title fw-semibold font-14">
														Cristina Pride
														<small class="fw-normal text-muted ms-1">1 day ago</small>
													</h5>
													<small class="noti-item-subtitle text-muted">
														Hi, How are you? What about our next meeting</small>
												</div>
											</div>
										</div>
									</a>

									<h5 class="text-muted font-13 fw-normal mt-0">30 Dec 2021</h5>
									<!-- item-->
									<a href="javascript:void(0);"
										class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
										<div class="card-body">
											<span class="float-end noti-close-btn text-muted">
												<i class="mdi mdi-close"></i>
											</span>
											<div class="d-flex align-items-center">
												<div class="flex-shrink-0">
													<div class="notify-icon bg-primary">
														<i class="mdi mdi-comment-account-outline"></i>
													</div>
												</div>
												<div class="flex-grow-1 text-truncate ms-2">
													<h5 class="noti-item-title fw-semibold font-14">Datacorp</h5>
													<small class="noti-item-subtitle text-muted">
														Caleb Flakelar commented on Admin</small>
												</div>
											</div>
										</div>
									</a>

									<!-- item-->
									<a href="javascript:void(0);"
										class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
										<div class="card-body">
											<span class="float-end noti-close-btn text-muted">
												<i class="mdi mdi-close"></i>
											</span>
											<div class="d-flex align-items-center">
												<div class="flex-shrink-0">
													<div class="notify-icon">
														<img src="${path}/tools/project_assets/images/users/avatar-4.jpg"
															class="img-fluid rounded-circle" alt="" />
													</div>
												</div>
												<div class="flex-grow-1 text-truncate ms-2">
													<h5 class="noti-item-title fw-semibold font-14">Karen Robinson</h5>
													<small class="noti-item-subtitle text-muted">
														Wow ! this admin looks good and awesome design</small>
												</div>
											</div>
										</div>
									</a>

									<div class="text-center">
										<i class="mdi mdi-dots-circle mdi-spin text-muted h3 mt-0"></i>
									</div>
								</div>

								<!-- All-->
								<a href="javascript:void(0);"
									class="dropdown-item text-center text-primary notify-item border-top border-light py-2">
									View All </a>

							</div>
						</li>

						<!-- 타 플랫폼 공유 -->
						<li class="dropdown notification-list d-none d-sm-inline-block">
							<a class="nav-link dropdown-toggle arrow-none"
								data-bs-toggle="dropdown" href="#" role="button"
								aria-haspopup="false" aria-expanded="false">
								<i class="dripicons-view-apps noti-icon"></i>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0">

								<div class="p-2">
									<div class="row g-0">
										<div class="col">
											<a class="dropdown-icon-item" href="#">
												<img src="${path}/tools/project_assets/images/brands/slack.png" alt="slack"> <span>Slack</span>
											</a>
										</div>
										<div class="col">
											<a class="dropdown-icon-item" href="#">
												<img src="${path}/tools/project_assets/images/brands/github.png" alt="Github">
												<span>GitHub</span>
											</a>
										</div>
										<div class="col">
											<a class="dropdown-icon-item" href="#">
												<img src="${path}/tools/project_assets/images/brands/dribbble.png" alt="dribbble">
												<span>Dribbble</span>
											</a>
										</div>
									</div>

									<div class="row g-0">
										<div class="col">
											<a class="dropdown-icon-item" href="#">
												<img src="${path}/tools/project_assets/images/brands/bitbucket.png" alt="bitbucket">
												<span>Bitbucket</span>
											</a>
										</div>
										<div class="col">
											<a class="dropdown-icon-item" href="#">
												<img src="${path}/tools/project_assets/images/brands/dropbox.png" alt="dropbox">
												<span>Dropbox</span>
											</a>
										</div>
										<div class="col">
											<a class="dropdown-icon-item" href="#">
												<img src="${path}/tools/project_assets/images/brands/g-suite.png" alt="G Suite">
												<span>G Suite</span>
											</a>
										</div>
									</div>
									<!-- end row-->
								</div>

							</div>
						</li>

						<!-- setting 아이콘 -->
						<li class="notification-list">
							<a class="nav-link end-bar-toggle" href="javascript: void(0);">
								<i class="dripicons-gear noti-icon"></i>
							</a>
						</li>

						<!-- 내 프로필 아이콘 -->
						<li class="dropdown notification-list">
							<a class="nav-link dropdown-toggle nav-user arrow-none me-0"
								data-bs-toggle="dropdown" href="#" role="button"
								aria-haspopup="false" aria-expanded="false">
								<span class="account-user-avatar">
									<img src="${path}/tools/project_assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
								</span>
								<span>
									<span class="account-user-name">Dominic Keller</span>
									<span class="account-position">Founder</span>
								</span>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
								<!-- item-->
								<div class=" dropdown-header noti-title">
									<h6 class="text-overflow m-0">Welcome !</h6>
								</div>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<i class="mdi mdi-account-circle me-1"></i>
									<span>My Account</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<i class="mdi mdi-account-edit me-1"></i>
									<span>Settings</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<i class="mdi mdi-lifebuoy me-1"></i>
									<span>Support</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<i class="mdi mdi-lock-outline me-1"></i>
									<span>Lock Screen</span>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<i class="mdi mdi-logout me-1"></i>
									<span>Logout</span>
								</a>
							</div>
						</li>
					</ul>
					
					<button class="button-menu-mobile open-left">
						<i class="mdi mdi-menu"></i>
					</button>
					
				</div>
				<!-- end Topbar -->

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item">
											<a href="javascript: void(0);">borampms</a>
										</li>
										<li class="breadcrumb-item">
											<a href="javascript: void(0);">업무 관리</a>
										</li>
										<li class="breadcrumb-item active">이슈 목록</li>
									</ol>
								</div>
								<h4 class="page-title">이슈 목록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body" id="form-card-body">
									<!--  
									<ul class="nav nav-tabs nav-justified nav-bordered mb-3">
										<li class="nav-item">
											<a href="taskDetail.html" aria-expanded="true" class="nav-link"> 업무정보 </a>
										</li>
										<li class="nav-item"><a href="#input-types-code"
											aria-expanded="true" class="nav-link"> WBS </a></li>
										<li class="nav-item"><a href="taskOutput.html"
											aria-expanded="true" class="nav-link"> 산출물 </a></li>
										<li class="nav-item"><a href="task_issue.html"
											aria-expanded="true" class="nav-link active"> 이슈 </a></li>
										<li class="nav-item"><a href="#input-types-code"
											aria-expanded="true" class="nav-link"> 가이드 </a></li>
										<li class="nav-item"><a href="#input-types-code"
											aria-expanded="true" class="nav-link"> 히스토리 </a></li>
									</ul>
									-->
									<!-- end nav-->

									<div class="tab-content">
										<form id="issueForm" method="post">
										<div class="row justify-content-between">
											<input type="hidden" name="tiId" required/>
											<div class="col">
												<label class="form-label col-form-label">이슈 내용</label>
												<input class="form-control" placeholder="이슈 내용" name="tiContent" required/>
											</div>
											<div class="col">
												<label class="form-label col-form-label">업무담당자</label>
												<select class="select2 form-control select2-multiple" name="tiCharge" required
													data-toggle="select2" multiple="multiple" data-placeholder="업무담당자 지정">
													<optgroup label="IT팀">
														<option value="IT팀 조민혁">IT팀 조민혁</option>
														<option value="IT팀 전지원">IT팀 전지원</option>
													</optgroup>
													<optgroup label="인사팀">
														<option value="인사팀 김파월">인사팀 김파월</option>
														<option value="인사팀 김소월">인사팀 김소월</option>
														<option value="인사팀 한가람">인사팀 한가람</option>
														<option value="인사팀 김효은">인사팀 김효은</option>
													</optgroup>
													<optgroup label="마케팅팀">
														<option value="마케팅팀 양초명">마케팅팀 양초명</option>
														<option value="마케팅팀 양현수">마케팅팀 양현수</option>
														<option value="마케팅팀 양광">마케팅팀 양광</option>

													</optgroup>
												</select>
											</div>
											<div class="col">
												<label class="form-label col-form-label">우선순위</label>
												<select class="form-control" name="tiPriority" required>
													<option value="">우선순위</option>
													<option value="중요">중요</option>
													<option value="보통">보통</option>
													<option value="낮음">낮음</option>
												</select>
											</div>
											<div class="col">
												<label class="form-label col-form-label">마감일</label>
												<input class="form-control" type="date" name="tiDuedate" required/>
											</div>
											<div class="d-grid gap-2 col-sm-2 col-lg-1 float-end">
												<button type="button" class="btn btn-primary" id="issueFormBtn">등록</button>
											</div>
										</div>
										</form>
									</div>
								</div>
								<!-- end card-body-->
							</div>
							<!-- end card-->
							<div class="card">
								<div class="card-body">
									<div class="row my-3">
										<div class="table-responsive">
											<table class="table table-centered table-nowrap mb-0 text-center">
												<thead class="table-light">
													<tr>
														<th>번호</th>
														<th>등록자</th>
														<th>이슈 내용</th>
														<th>담당자</th>
														<th>우선순위</th>
														<th>마감일</th>
														<th style="width: 125px;">수정/삭제</th>
													</tr>
												</thead>
												<tbody id="issue-tbody">
													<c:forEach var="issue" items="${issuelist}">
													<tr>
														<td>${issue.cnt }</td>
														<td>${issue.tiWriter }</td>
														<td>${issue.tiContent }</td>
														<td>${issue.tiCharge }</td>
														<td>
															<div class=
															<c:choose>
																<c:when test="${issue.tiPriority eq '중요' }">"badge bg-danger"</c:when>
																<c:when test="${issue.tiPriority eq '보통' }">"badge bg-info"</c:when>
																<c:when test="${issue.tiPriority eq '낮음' }">"badge bg-secondary"</c:when>
															</c:choose>
															>${issue.tiPriority }
															</div>
														</td>
														<td>${issue.tiDuedate }</td>
														<td>
															<a onclick="setUpt('${issue.tiId }');" class="action-icon">
																<i class="mdi mdi-square-edit-outline"></i>
															</a>
															<a href="javascript:delIssue('${issue.tiId }');" class="action-icon">
																<i class="mdi mdi-delete"></i>
															</a>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<div class="row">
										<form id="isSchForm" method="post">
										<input type="hidden" name="curPage" value="1"/>
										<div class="row justify-content-between">
											<div class="col">
												<input class="form-control" placeholder="이슈 내용" name="schContent"/>
											</div>
											<div class="col">
												<input class="form-control" placeholder="담당자" name="schCharge"/>
											</div>
											<div class="col">
												<select class="form-control" name="schPriority" >
													<option value="" selected>우선순위</option>
													<option value="중요">중요</option>
													<option value="보통">보통</option>
													<option value="낮음">낮음</option>
												</select>
											</div>
											<div class="col">
												<input class="form-control" type="date" name="schDuedate"/>
											</div>
										</div>
										</form>
									</div>
									<!-- 페이징 블록 -->
									<div class="row gy-1 my-3">
										<div class="col justify-content-end">
											<ul class="pagination pagination-rounded"> 
												<li class="page-item">
											  		<a class="page-link" href="javascript:goPage(${issueSch.firstBlock != 1 ? issueSch.lastBlock-1 : 1})">Previous</a>
											  	</li>
											  	<c:forEach var="cnt" begin="${issueSch.firstBlock}" end="${issueSch.lastBlock}">
											  	<li class="page-item ${cnt == issueSch.curPage ? 'active' : ''}">
											  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>
											  	</li>
											  	</c:forEach>
											  	<li class="page-item">
											  		<a class="page-link"
											  			href="javascript:goPage(${issueSch.firstBlock != issueSch.pageCount ? issueSch.lastBlock+1 : issueSch.lastBlock})">Next</a>
											  	</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- end card-body-->
							</div>
							<!-- end card-->
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-page -->
		
	</div>
	<!-- wrapper -->

	<!-- Footer Start -->
	<footer class="footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<script>
						document.write(new Date().getFullYear())
					</script>
					© Hyper - Coderthemes.com
				</div>
				<div class="col-md-6">
					<div class="text-md-end footer-links d-none d-md-block">
						<a href="javascript: void(0);">About</a>
						<a href="javascript: void(0);">Support</a>
						<a href="javascript: void(0);">Contact Us</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer end -->


	<!-- Right Sidebar -->
	<div class="end-bar">
		<div class="rightbar-title">
			<a href="javascript:void(0);" class="end-bar-toggle float-end">
				<i class="dripicons-cross noti-icon"></i>
			</a>
			<h5 class="m-0">Settings</h5>
		</div>

		<div class="rightbar-content h-100" data-simplebar>
			<div class="p-3">
				<!-- Settings -->
				<h5 class="mt-3">Color Scheme</h5>
				<hr class="mt-1"/>
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox"
						name="color-scheme-mode" value="light" id="light-mode-check" checked>
					<label class="form-check-label" for="light-mode-check">Light Mode</label>
				</div>
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox"
						name="color-scheme-mode" value="dark" id="dark-mode-check"/>
					<label class="form-check-label" for="dark-mode-check">Dark Mode</label>
				</div>

				<!-- Left Sidebar-->
				<h5 class="mt-4">Left Sidebar</h5>
				<hr class="mt-1" />
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="theme"
						value="default" id="default-check"/>
					<label class="form-check-label" for="default-check">Default</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="theme"
						value="light" id="light-check" checked/>
					<label class="form-check-label" for="light-check">Light</label>
				</div>

				<div class="form-check form-switch mb-3">
					<input class="form-check-input" type="checkbox" name="theme"
						value="dark" id="dark-check"/>
					<label class="form-check-label" for="dark-check">Dark</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact"
						value="fixed" id="fixed-check" checked/>
					<label class="form-check-label" for="fixed-check">Fixed</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact"
						value="condensed" id="condensed-check"/>
					<label class="form-check-label" for="condensed-check">Condensed</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact"
						value="scrollable" id="scrollable-check"/>
					<label class="form-check-label" for="scrollable-check">Scrollable</label>
				</div>

				<div class="d-grid mt-4">
					<button class="btn btn-primary" id="resetBtn">Reset to Default</button>
				</div>
			</div>
			<!-- end padding-->

		</div>
	</div>

	<div class="rightbar-overlay"></div>
	<!-- /End-bar -->



<!-- bundle -->
<script src="${path}/tools/project_assets/js/vendor.min.js"></script>
<script src="${path}/tools/project_assets/js/app.min.js"></script>
<script src="${path}/a00_com/jquery-3.6.0.js"></script>
<script>
	// 검색 키워드 json 초기값
	let schdata = {"curPage":1, "schContent":"", "schCharge":"", "schDuedate":"", "schPriority":""};
	
	
	$(document).ready(function() {
		
	});
	
	// 검색 키워드 입력, ajax 호출
	$("[name=schContent], [name=schCharge]").keyup(function() {
		setSchdata();	
		search(schdata);
	});
	$("[name=schDuedate], [name=schPriority]").change(function() {
		setSchdata();
		search(schdata);
	});
	
	
	// 페이지 블록의 번호를 클릭하여 해당 번호 페이지로 이동
	function goPage(no){		
		$("[name=curPage]").val(no);
		$("#isSchForm").submit();
	}
	
	
	// 수정 아이콘 클릭 시, 이슈 등록 폼에 해당 행의 데이터 입력 및 스타일 설정
	function setUpt(tiId) {	
		let jsonlist = ${jsonlist};
		let upt = jsonlist.find(function(data) { return data.tiId === tiId; });
		
		console.log(upt);
		
		$("[name=tiContent]").val(upt.tiContent);
		$("[name=tiPriority]").val(upt.tiPriority);
		$("[name=tiDuedate]").val(upt.tiDuedate);
		$("[name=tiId]").val(upt.tiId);
		
		$("#form-card-body").addClass("bg-secondary");
		$(".col-form-label").addClass("text-white");
		$("#issueFormBtn").text("수정").attr("class", "btn btn-warning text-white");
	}
	
	// 삭제 아이콘 클릭 시, 아이콘이 포함된 이슈 행의 데이터를 삭제
	function delIssue(tiId) {	
		console.log(tiId);
		if(confirm("삭제하시겠습니까?")) {
			location.href = "${path}/issue.do?method=delete&tiId="+tiId;
		}
	}
	
	// '등록' 버튼인 경우와 '수정' 버튼인 경우의 처리
	$("#issueFormBtn").click(function() {
		// 등록/수정 전 유효성 검증
		if($("[name=tiContent]").val() == null || $("[name=tiContent]").val() == "") {
			alert("등록할 이슈 내용을 입력해주세요.");
		} else if($("[name=tiCharge]").val() == null || $("[name=tiCharge").val() == "") {
			alert("업무담당자를 지정해주세요.");
		} else if($("[name=tiDuedate]").val() == null || $("[name=tiDuedate]").val() == "") {
			alert("마감일을 지정해주세요.");
		} else if($("[name=tiPriority]").val() == null || $("[name=tiPriority]").val() == "") {
			alert("우선순위를 지정해주세요.");
		} else {
			// 등록/수정에 따른 form action 설정
			let params = $("#issueFormBtn").text() == "등록" ? "insert" : "update";
			$("#issueForm").attr("action", "${path}/issue.do?method="+params);
			
			if(confirm($("#issueFormBtn").text()+"하시겠습니까?")) {
				$("#issueForm").submit();
			}
		}
	});
	
	
	
	// 검색 키워드 json 설정
	function setSchdata() {
		schdata.curPage = $("[name=curPage]").val();
		schdata.schContent = $("[name=schContent]").val();
		schdata.schCharge = $("[name=schCharge]").val();
		schdata.schPriority = $("[name=schPriority]").val();
		schdata.schDuedate = $("[name=schDuedate]").val();
	}
	// 검색(ajax)
	function search(schdata) {
		console.log(schdata);
		
		$.ajax({
			url:"${path}/issue.do?method=search",
			type:"get",
			data:schdata,
			dataType:"json",
			success:function(data) {
				console.log(data.schIssuelist);
				let html = "";
				
		    	$.each(data.schIssuelist, function(idx, sch) {
		    		let tiPriority = sch.tiPriority
		    		let settings = "badge";
		    		
		    		if(tiPriority == "중요") { settings = "badge bg-danger" }
		    		if(tiPriority == "보통") { settings = "badge bg-info" }
		    		if(tiPriority == "낮음") { settings = "badge bg-secondary" }
		    		
		 			html += "<tr>"
		 				+"<td>"+sch.cnt+"</td>"
		 				+"<td>"+sch.tiWriter+"</td>"
		 				+"<td>"+sch.tiContent+"</td>"
		 				+"<td>"+sch.tiCharge+"</td>"
		 				+"<td><div class='"+settings+"'>"+sch.tiPriority+"</div></td>"
		 				+"<td>"+sch.tiDuedate+"</td>"
		 				+"<td><a href='javascript:setUpt('"+sch.tiId+"');' class='action-icon'><i class='mdi mdi-square-edit-outline'></i></a>"
		 				+"<a href='javascript:delIssue('"+sch.tiId+"');' class='action-icon'><i class='mdi mdi-delete'></i></a></td>"
		 				+"</tr>";	
		 				
			 	});	
		 		$("#issue-tbody").html(html);
			},
			error:function(err) {
				console.log(err);
			}
		});
	}
	
	
</script>









</body>
</html>