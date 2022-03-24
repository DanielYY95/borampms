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
			

		<script>
			
	
			// 로그인할 때만 들어올 수 있도록
			<c:if test="${empty user_info.uiName}">
	
				alert("로그인 후, 이용해주세요.");
				location.href="${path}/loginFrm.do";
			</c:if>
		
		
		</script>

			<!-- Start Topbar -->
			<div class="navbar-custom">
				<ul class="list-unstyled topbar-menu float-end mb-0">
					<li class="dropdown notification-list d-lg-none">
						<a class="nav-link dropdown-toggle arrow-none"
							data-bs-toggle="dropdown" href="#" role="button"
							aria-haspopup="false" aria-expanded="false">
							<i class="dripicons-search noti-icon"></i>
						</a>
						<div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
							<form class="p-3">
								<input type="text" class="form-control"
									placeholder="Search ..." aria-label="Recipient's username">
							</form>
						</div>
					</li>
					
					<!--상단(top bar) 언어 설정 / 알림 목록 / 공유 / 설정 nav -->
					<li class="dropdown notification-list topbar-dropdown">
						<a class="nav-link dropdown-toggle arrow-none"
							data-bs-toggle="dropdown" href="#" role="button"
							aria-haspopup="false" aria-expanded="false">
	
								<img src="${path}/tools/project_assets/images/flags/korean.jpg" alt="user-image"
								class="me-1" height="12"> <span class="align-middle">Korean</span>
								<i class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i>
						</a>
						
						<!-- 언어 설정 -->
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu">

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item">
		
								<img src="${path}/tools/project_assets/images/flags/us.jpg" alt="user-image"
									class="me-0 me-sm-1" height="12">
								<span class="align-middle d-none d-sm-inline-block">English</span>
							
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
								<span class="account-position">${user_info.uiDept}</span>				
								<span class="account-user-name">${user_info.uiName}</span>
								
							</span>
						</a>
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
							<!-- item-->
							<div class=" dropdown-header noti-title">
								<h6 class="text-overflow m-0">안녕하세요!</h6>
							</div>

							<!-- item-->
							<a href="${path}/prjList.do" class="dropdown-item notify-item">
								<i class="mdi mdi-account-circle me-1"></i>
								<span>내 프로젝트 목록</span>
							</a>

							<!-- item-->
							<a href="${path}/login.do?method=logout" class="dropdown-item notify-item">
								<i class="mdi mdi-logout me-1"></i>
								<span>로그아웃</span>
							</a>
						</div>
					</li>
				</ul>
				
				<button class="button-menu-mobile open-left">
					<i class="mdi mdi-menu"></i>
				</button>
				
				<!-- 상단(top bar) Search 클릭 시 -->
				<div class="app-search dropdown d-none d-lg-block">
				

					<div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
						<!-- item-->
						<div class="dropdown-header noti-title">
							<h5 class="text-overflow mb-2">
								Found <span class="text-danger">17</span> results
							</h5>
						</div>

						<!-- item-->
						<a href="javascript:void(0);" class="dropdown-item notify-item">
							<i class="uil-notes font-16 me-1"></i>
							<span>Analytics Report</span>
						</a>

						<!-- item-->
						<a href="javascript:void(0);" class="dropdown-item notify-item">
							<i class="uil-life-ring font-16 me-1"></i>
							<span>How can I help you?</span>
						</a>

						<!-- item-->
						<a href="javascript:void(0);" class="dropdown-item notify-item">
							<i class="uil-cog font-16 me-1"></i>
							<span>User profile settings</span>
						</a>

						<!-- item-->
						<div class="dropdown-header noti-title">
							<h6 class="text-overflow mb-2 text-uppercase">Users</h6>
						</div>

						<div class="notification-list">
							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item">
								<div class="d-flex">
									<img class="d-flex me-2 rounded-circle"
										src="${path}/tools/project_assets/images/users/avatar-2.jpg"
										alt="Generic placeholder image" height="32"/>
									<div class="w-100">
										<h5 class="m-0 font-14">Erwin Brown</h5>
										<span class="font-12 mb-0">UI Designer</span>
									</div>
								</div>
							</a>
						</div>
						<!-- end notification list -->
						
					</div>
				</div>
			</div><br><br>
			<!-- end Topbar -->


		

</html>