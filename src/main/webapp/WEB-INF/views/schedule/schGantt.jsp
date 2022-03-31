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
    <title>Kanban Board | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      content="A fully featured admin theme which can be used to build CRM, CMS, etc."
      name="description"
    />
    <meta content="Coderthemes" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico" />
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
    <!-- App css -->

    <link
      href="${path}/tools/main_assets/css/app.min.css"
      rel="stylesheet"
      type="text/css"
      id="app-style"
    />
    <link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />

    <!-- 간트 js/css 시작 -->
    <script src="${path}/tools/main_assets/js/dhtmlxgantt.js"></script>
	<!-- jquery 라이브러리 -->
	<script src="${path}/tools/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="${path}/tools/main_assets/css/dhtmlxgantt.css" />
    <link rel="stylesheet" href="${path}/tools/main_assets/css/controls_styles.css" />

    <style>
      html,
      body {
        height: 100%;
        padding: 0px;
        margin: 0px;
        overflow: hidden;
      }
	 .gantt_grid .gantt_grid_scale .gantt_grid_head_cell .gantt_grid_head_add {
	  	display : none;
	  }
      .summary-row,
      .summary-row.odd {
        background-color: #eeeeee;
        font-weight: bold;
      }

      .gantt_grid div,
      .gantt_data_area div {
        font-size: 12px;
      }

      .summary-bar {
        opacity: 0.4;
      }
      .gantt_grid_data .gantt_add,
      .gantt_grid_scale .gantt_grid_head_add {
		 display: none;
		 width: 0px !important
	  }
	 .gantt_layout_cell.grid_cell.gantt_layout_outer_scroll.gantt_layout_outer_scroll_vertical.gantt_layout_outer_scroll.gantt_layout_outer_scroll_horizontal.gantt_layout_cell_border_right{
	     width: calc(360px - 43px) !important
	 }
    </style>
     <!-- 간트 js/css 끝 -->
  </head>


  <body
    class="loading"
    data-layout-color="light"
    data-leftbar-theme="dark"
    data-layout-mode="fluid"
    data-rightbar-onstart="true"
  >
    <!-- Begin page -->
    <div class="wrapper">
      <!-- ========== Left Sidebar Start ========== -->
      <div class="leftside-menu">
        <!-- LOGO -->
        <a href="index.html" class="logo text-center logo-light">
          <span class="logo-lg">
            <img src="../assets/images/logo.png" alt="" height="16" />
          </span>
          <span class="logo-sm">
            <img src="../assets/images/logo_sm.png" alt="" height="16" />
          </span>
        </a>

        <!-- LOGO -->
        <a href="index.html" class="logo text-center logo-dark">
          <span class="logo-lg">
            <img src="../assets/images/logo-dark.png" alt="" height="16" />
          </span>
          <span class="logo-sm">
            <img src="../assets/images/logo_sm_dark.png" alt="" height="16" />
          </span>
        </a>

        <div class="h-100" id="leftside-menu-container" data-simplebar>
          <!--- Sidemenu -->
          <!-- 왼쪽 사이드바 시작  -->
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
            <a
              data-bs-toggle="collapse"
              href="#sidebarTasks"
              aria-expanded="false"
              aria-controls="sidebarTasks"
              class="side-nav-link"
            >
              <i class="uil-clipboard-alt"></i>
              <span> 일정관리 </span>
              <span class="menu-arrow"></span>
            </a>
            <div class="collapse" id="sidebarTasks">
              <ul class="side-nav-second-level">
                <li>
                  <a href="../schedule/schGantt.html">WBS/간트차트</a>
                </li>
                <li>
                  <a href="../schedule/schKanban.html">칸반보드</a>
                </li>
              </ul>
            </div>
          </li>
           <li class="side-nav-item"><a data-bs-toggle="collapse"
						href="#sidebarDashboards" aria-expanded="false"
						aria-controls="sidebarDashboards" class="side-nav-link"> <i
							class="uil-home-alt"></i> <span> 업무 관리 </span>
					</a>
						<div class="collapse" id="sidebarDashboards">
							<ul class="side-nav-second-level">
								<li><a href="../task/task_list.html">업무 목록</a></li>
								<li><a href="../task/task_issue.html">업무 이슈</a></li>
							</ul>
						</div></li>
                        <li class="side-nav-item">
                            <a href="../doc/Doc-Management.html" class="side-nav-link">
                                <i class="uil-folder-plus"></i>
                                <span> 문서관리 </span>
                            </a>
                        </li>
                    </ul>

          <!-- End Sidebar -->

          <div class="clearfix"></div>
        </div>
        <!-- Sidebar -left -->
      </div>
      <!-- Left Sidebar End -->
      <!-- 왼쪽 사이드바 종료  -->

      <!-- ============================================================== -->
      <!-- Start Page Content here -->
      <!-- ============================================================== -->

      <div class="content-page">
        <div class="content">
          <!-- Topbar Start -->
          <div class="navbar-custom">
            <ul class="list-unstyled topbar-menu float-end mb-0">
              <li class="dropdown notification-list d-lg-none">
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <i class="dripicons-search noti-icon"></i>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-animated dropdown-lg p-0"
                >
                  <form class="p-3">
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Search ..."
                      aria-label="Recipient's username"
                    />
                  </form>
                </div>
              </li>
              <li class="dropdown notification-list topbar-dropdown">
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <img
                    src="../assets/images/flags/us.jpg"
                    alt="user-image"
                    class="me-0 me-sm-1"
                    height="12"
                  />
                  <span class="align-middle d-none d-sm-inline-block"
                    >English</span
                  >
                  <i
                    class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"
                  ></i>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu"
                >
                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="../assets/images/flags/germany.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">German</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="../assets/images/flags/italy.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">Italian</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="../assets/images/flags/spain.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">Spanish</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="../assets/images/flags/russia.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">Russian</span>
                  </a>
                </div>
              </li>

              <li class="dropdown notification-list">
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <i class="dripicons-bell noti-icon"></i>
                  <span class="noti-icon-badge"></span>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg"
                >
                  <!-- item-->
                  <div class="dropdown-item noti-title px-3">
                    <h5 class="m-0">
                      <span class="float-end">
                        <a href="javascript: void(0);" class="text-dark">
                          <small>Clear All</small>
                        </a> </span
                      >Notification
                    </h5>
                  </div>

                  <div class="px-3" style="max-height: 300px" data-simplebar>
                    <h5 class="text-muted font-13 fw-normal mt-0">Today</h5>
                    <!-- item-->
                    <a
                      href="javascript:void(0);"
                      class="dropdown-item p-0 notify-item card unread-noti shadow-none mb-2"
                    >
                      <div class="card-body">
                        <span class="float-end noti-close-btn text-muted"
                          ><i class="mdi mdi-close"></i
                        ></span>
                        <div class="d-flex align-items-center">
                          <div class="flex-shrink-0">
                            <div class="notify-icon bg-primary">
                              <i class="mdi mdi-comment-account-outline"></i>
                            </div>
                          </div>
                          <div class="flex-grow-1 text-truncate ms-2">
                            <h5 class="noti-item-title fw-semibold font-14">
                              Datacorp
                              <small class="fw-normal text-muted ms-1"
                                >1 min ago</small
                              >
                            </h5>
                            <small class="noti-item-subtitle text-muted"
                              >Caleb Flakelar commented on Admin</small
                            >
                          </div>
                        </div>
                      </div>
                    </a>

                    <!-- item-->
                    <a
                      href="javascript:void(0);"
                      class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2"
                    >
                      <div class="card-body">
                        <span class="float-end noti-close-btn text-muted"
                          ><i class="mdi mdi-close"></i
                        ></span>
                        <div class="d-flex align-items-center">
                          <div class="flex-shrink-0">
                            <div class="notify-icon bg-info">
                              <i class="mdi mdi-account-plus"></i>
                            </div>
                          </div>
                          <div class="flex-grow-1 text-truncate ms-2">
                            <h5 class="noti-item-title fw-semibold font-14">
                              Admin
                              <small class="fw-normal text-muted ms-1"
                                >1 hours ago</small
                              >
                            </h5>
                            <small class="noti-item-subtitle text-muted"
                              >New user registered</small
                            >
                          </div>
                        </div>
                      </div>
                    </a>

                    <h5 class="text-muted font-13 fw-normal mt-0">Yesterday</h5>

                    <!-- item-->
                    <a
                      href="javascript:void(0);"
                      class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2"
                    >
                      <div class="card-body">
                        <span class="float-end noti-close-btn text-muted"
                          ><i class="mdi mdi-close"></i
                        ></span>
                        <div class="d-flex align-items-center">
                          <div class="flex-shrink-0">
                            <div class="notify-icon">
                              <img
                                src="../assets/images/users/avatar-2.jpg"
                                class="img-fluid rounded-circle"
                                alt=""
                              />
                            </div>
                          </div>
                          <div class="flex-grow-1 text-truncate ms-2">
                            <h5 class="noti-item-title fw-semibold font-14">
                              Cristina Pride
                              <small class="fw-normal text-muted ms-1"
                                >1 day ago</small
                              >
                            </h5>
                            <small class="noti-item-subtitle text-muted"
                              >Hi, How are you? What about our next
                              meeting</small
                            >
                          </div>
                        </div>
                      </div>
                    </a>

                    <h5 class="text-muted font-13 fw-normal mt-0">
                      30 Dec 2021
                    </h5>

                    <!-- item-->
                    <a
                      href="javascript:void(0);"
                      class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2"
                    >
                      <div class="card-body">
                        <span class="float-end noti-close-btn text-muted"
                          ><i class="mdi mdi-close"></i
                        ></span>
                        <div class="d-flex align-items-center">
                          <div class="flex-shrink-0">
                            <div class="notify-icon bg-primary">
                              <i class="mdi mdi-comment-account-outline"></i>
                            </div>
                          </div>
                          <div class="flex-grow-1 text-truncate ms-2">
                            <h5 class="noti-item-title fw-semibold font-14">
                              Datacorp
                            </h5>
                            <small class="noti-item-subtitle text-muted"
                              >Caleb Flakelar commented on Admin</small
                            >
                          </div>
                        </div>
                      </div>
                    </a>

                    <!-- item-->
                    <a
                      href="javascript:void(0);"
                      class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2"
                    >
                      <div class="card-body">
                        <span class="float-end noti-close-btn text-muted"
                          ><i class="mdi mdi-close"></i
                        ></span>
                        <div class="d-flex align-items-center">
                          <div class="flex-shrink-0">
                            <div class="notify-icon">
                              <img
                                src="../assets/images/users/avatar-4.jpg"
                                class="img-fluid rounded-circle"
                                alt=""
                              />
                            </div>
                          </div>
                          <div class="flex-grow-1 text-truncate ms-2">
                            <h5 class="noti-item-title fw-semibold font-14">
                              Karen Robinson
                            </h5>
                            <small class="noti-item-subtitle text-muted"
                              >Wow ! this admin looks good and awesome
                              design</small
                            >
                          </div>
                        </div>
                      </div>
                    </a>

                    <div class="text-center">
                      <i
                        class="mdi mdi-dots-circle mdi-spin text-muted h3 mt-0"
                      ></i>
                    </div>
                  </div>

                  <!-- All-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item text-center text-primary notify-item border-top border-light py-2"
                  >
                    View All
                  </a>
                </div>
              </li>

              <li class="dropdown notification-list d-none d-sm-inline-block">
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <i class="dripicons-view-apps noti-icon"></i>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0"
                >
                  <div class="p-2">
                    <div class="row g-0">
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="../assets/images/brands/slack.png"
                            alt="slack"
                          />
                          <span>Slack</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="../assets/images/brands/github.png"
                            alt="Github"
                          />
                          <span>GitHub</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="../assets/images/brands/dribbble.png"
                            alt="dribbble"
                          />
                          <span>Dribbble</span>
                        </a>
                      </div>
                    </div>

                    <div class="row g-0">
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="../assets/images/brands/bitbucket.png"
                            alt="bitbucket"
                          />
                          <span>Bitbucket</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="../assets/images/brands/dropbox.png"
                            alt="dropbox"
                          />
                          <span>Dropbox</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="../assets/images/brands/g-suite.png"
                            alt="G Suite"
                          />
                          <span>G Suite</span>
                        </a>
                      </div>
                    </div>
                    <!-- end row-->
                  </div>
                </div>
              </li>

              <li class="notification-list">
                <a class="nav-link end-bar-toggle" href="javascript: void(0);">
                  <i class="dripicons-gear noti-icon"></i>
                </a>
              </li>

              <li class="dropdown notification-list">
                <a
                  class="nav-link dropdown-toggle nav-user arrow-none me-0"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <span class="account-user-avatar">
                    <img
                      src="../assets/images/users/avatar-1.jpg"
                      alt="user-image"
                      class="rounded-circle"
                    />
                  </span>
                  <span>
                    <span class="account-user-name">Dominic Keller</span>
                    <span class="account-position">Founder</span>
                  </span>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown"
                >
                  <!-- item-->
                  <div class="dropdown-header noti-title">
                    <h6 class="text-overflow m-0">Welcome !</h6>
                  </div>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-account-circle me-1"></i>
                    <span>My Account</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-account-edit me-1"></i>
                    <span>Settings</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-lifebuoy me-1"></i>
                    <span>Support</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-lock-outline me-1"></i>
                    <span>Lock Screen</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-logout me-1"></i>
                    <span>Logout</span>
                  </a>
                </div>
              </li>
            </ul>
            <button class="button-menu-mobile open-left">
              <i class="mdi mdi-menu"></i>
            </button>
            <div class="app-search dropdown d-none d-lg-block">
              <form>
                <div class="input-group">
                  <input
                    type="text"
                    class="form-control dropdown-toggle"
                    placeholder="Search..."
                    id="top-search"
                  />
                  <span class="mdi mdi-magnify search-icon"></span>
                  <button class="input-group-text btn-primary" id="btn_search" type="submit">
                    Search
                  </button>
                </div>
              </form>

              <div
                class="dropdown-menu dropdown-menu-animated dropdown-lg"
                id="search-dropdown"
              >
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
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <div class="d-flex">
                      <img
                        class="d-flex me-2 rounded-circle"
                        src="../assets/images/users/avatar-2.jpg"
                        alt="Generic placeholder image"
                        height="32"
                      />
                      <div class="w-100">
                        <h5 class="m-0 font-14">Erwin Brown</h5>
                        <span class="font-12 mb-0">UI Designer</span>
                      </div>
                    </div>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <div class="d-flex">
                      <img
                        class="d-flex me-2 rounded-circle"
                        src="../assets/images/users/avatar-5.jpg"
                        alt="Generic placeholder image"
                        height="32"
                      />
                      <div class="w-100">
                        <h5 class="m-0 font-14">Jacob Deo</h5>
                        <span class="font-12 mb-0">Developer</span>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- end Topbar -->
           <!-- start page title
           <div class="row">
            <div class="col-12">
              <div class="page-title-box">
                <div class="page-title-right">
                  <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item">
                      <a href="javascript: void(0);">Hyper</a>
                    </li>
                    <li class="breadcrumb-item">
                      <a href="javascript: void(0);">일정관리</a>
                    </li>
                    <li class="breadcrumb-item active">캘린더</li>
                  </ol>
                </div>
              </div>
            </div> -->
          </div>
          <!-- end page title -->

          <!-- 간트 body 시작 -->

            <div id="gantt_here" style="width: 100%; height: calc(100vh - 52px)"></div>
            <!-- 간트 body 끝 -->



        <!-- Footer Start -->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6">
                <script>
                  document.write(new Date().getFullYear());
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
        <!-- end Footer -->
      </div>

      <!-- ============================================================== -->
      <!-- End Page content -->
      <!-- ============================================================== -->
    </div>
    <!-- END wrapper -->

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
          <div class="alert alert-warning" role="alert">
            <strong>Customize </strong> the overall color scheme, sidebar menu,
            etc.
          </div>

          <!-- Settings -->
          <h5 class="mt-3">Color Scheme</h5>
          <hr class="mt-1" />

          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="color-scheme-mode"
              value="light"
              id="light-mode-check"
              checked
            />
            <label class="form-check-label" for="light-mode-check"
              >Light Mode</label
            >
          </div>

          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="color-scheme-mode"
              value="dark"
              id="dark-mode-check"
            />
            <label class="form-check-label" for="dark-mode-check"
              >Dark Mode</label
            >
          </div>

          <!-- Width -->
          <h5 class="mt-4">Width</h5>
          <hr class="mt-1" />
          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="width"
              value="fluid"
              id="fluid-check"
              checked
            />
            <label class="form-check-label" for="fluid-check">Fluid</label>
          </div>

          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="width"
              value="boxed"
              id="boxed-check"
            />
            <label class="form-check-label" for="boxed-check">Boxed</label>
          </div>

          <!-- Left Sidebar-->
          <h5 class="mt-4">Left Sidebar</h5>
          <hr class="mt-1" />
          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="theme"
              value="default"
              id="default-check"
            />
            <label class="form-check-label" for="default-check">Default</label>
          </div>

          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="theme"
              value="light"
              id="light-check"
              checked
            />
            <label class="form-check-label" for="light-check">Light</label>
          </div>

          <div class="form-check form-switch mb-3">
            <input
              class="form-check-input"
              type="checkbox"
              name="theme"
              value="dark"
              id="dark-check"
            />
            <label class="form-check-label" for="dark-check">Dark</label>
          </div>

          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="compact"
              value="fixed"
              id="fixed-check"
              checked
            />
            <label class="form-check-label" for="fixed-check">Fixed</label>
          </div>

          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="compact"
              value="condensed"
              id="condensed-check"
            />
            <label class="form-check-label" for="condensed-check"
              >Condensed</label
            >
          </div>

          <div class="form-check form-switch mb-1">
            <input
              class="form-check-input"
              type="checkbox"
              name="compact"
              value="scrollable"
              id="scrollable-check"
            />
            <label class="form-check-label" for="scrollable-check"
              >Scrollable</label
            >
          </div>

          <div class="d-grid mt-4">
            <button class="btn btn-primary" id="resetBtn">
              Reset to Default
            </button>

            <a
              href="https://themes.getbootstrap.com/product/hyper-responsive-admin-dashboard-template/"
              class="btn btn-danger mt-3"
              target="_blank"
              ><i class="mdi mdi-basket me-1"></i> Purchase Now</a
            >
          </div>
        </div>
        <!-- end padding-->
      </div>
    </div>

    <div class="rightbar-overlay"></div>
    <!-- /End-bar -->

    <script type="text/javascript">
		// test data
		gantt.init("gantt_here");
		getData();
		gantt.attachEvent("onAfterTaskDrag", function(id, mode, e){
			let task = gantt.getTask(id);
			saveData(false, task)
		});
		gantt.attachEvent("onLightboxSave", function(id, task, is_new){
			saveData(is_new, task)
		});

		gantt.attachEvent("onGridHeaderClick", function(name, e){
		    //any custom logic here
		    if(name == "add"){
				return false;
		    }
		    return true;
		});
		gantt.attachEvent("onTaskDblClick", function(id,e){
		    //any custom logic here
		    return false;
		});
		function getData(){
			let paramData = [];
			$.ajax({
			    url:"${path}/schGanttJson.do",
			    type:"get",
			    // data:schdata, => 파라미터 넣을곳
			    dataType:"json",
			    success:function(data){
			/* 		$.each(data.result, function(idx, sch){ //숙지
						paramData.push({ text: sch.ptTitle , start_date: sch.ptStartdate, duration:sch.duration});
					}); */
					for(var i=0; i < data.result.length; i++){
						paramData.push({ id:data.result[i].ptId
							           , text: data.result[i].ptTitle
							           , start_date: stringToDate(data.result[i].ptStartdate)
							           , duration:data.result[i].duration
							           });
					}
					gantt.parse({
						data: paramData,
						links: [
							{id: 1, source: 1, target: 2, type: "1"},
							{id: 2, source: 2, target: 3, type: "0"}
						]
					});
			    },
			    error:function(err){
			       console.log("에러발생:"+err);
			    }

			})
		}
		function saveData(is_new, task){
			if(is_new){
				let paramData = {
					ptTitle : task.text,
					ptStartdate : dateFormat(task.start_date),
					ptDuedate : dateFormat(task.end_date)
				}// 화면에서 입력한 값 = 저장할 값.
				$.ajax({
				    url:"${path}/saveSchGantt.do",
				    type:"get",
				    data: paramData,
				    dataType:"json",
				    success:function(data){
						alert("저장되었습니다.");
						document.getElementById('btn_search').click();
				    },
				    error:function(){
				       console.log("에러발생:"+err);
				    }

				})
			}else{
				let paramData = {
					ptTitle : task.text,
					ptId : task.id,
					ptStartdate : dateFormat(task.start_date),
					ptDuedate : dateFormat(task.end_date)
				}// 화면에서 입력한 값 = 저장할 값.
				$.ajax({
				    url:"${path}/updateSchGantt.do",
				    type:"get",
				    data: paramData,
				    dataType:"json",
				    success:function(data){
						alert("저장되었습니다.");
						document.getElementById('btn_search').click();
				    },
				    error:function(){
				       console.log("에러발생:"+err);
				    }

				})

			}
		}
		function fn_close(){
			$('#signup-modal').css('display','none');
		}
		function dateFormat(date) {
	        let month = date.getMonth();
	        let day = date.getDate();
	        let hour = date.getHours();
	        let minute = date.getMinutes();
	        let second = date.getSeconds();

	        month = month >= 10 ? month : '0' + month;
	        day = day >= 10 ? day : '0' + day;
/* 	        hour = hour >= 10 ? hour : '0' + hour;
	        minute = minute >= 10 ? minute : '0' + minute;
	        second = second >= 10 ? second : '0' + second; */

	        return date.getFullYear() + '-' + month + '-' + day;
		}
		function stringToDate(value) {
	        return new Date(value.split('-')[0],value.split('-')[1],value.split('-')[2]);
		}
	</script>
    <script src="${path}/tools/main_assets/js/vendor.min.js"></script>
    <script src="${path}/tools/main_assets/js/app.min.js"></script>

    <!-- dragula js-->
    <script src="${path}/tools/main_assets/js/vendor/dragula.min.js"></script>

    <!-- demo js -->
    <script src="${path}/tools/main_assets/js/ui/component.dragula.js"></script>
  </body>
</html>
