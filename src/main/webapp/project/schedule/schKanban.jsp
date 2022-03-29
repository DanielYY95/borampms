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
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link
      href="../assets/css/app.min.css"
      rel="stylesheet"
      type="text/css"
      id="app-style"
    />
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
                  <button class="input-group-text btn-primary" type="submit">
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

          <!-- Start Content-->
          <!-- 칸반 시작-->
          <div class="container-fluid">
            <!-- start page title -->
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
                      <li class="breadcrumb-item active">칸반보드</li>
                    </ol>
                  </div>
                  <h4 class="page-title">
                    칸반보드
                    <a
                      href="#"
                      data-bs-toggle="modal"
                      data-bs-target="#add-new-task-modal"
                      class="btn btn-success btn-sm ms-3"
                      >새 일정 등록</a
                    >
                  </h4>
                </div>
              </div>
            </div>
            <!-- end page title -->

            <div class="row">
              <div class="col-12">
                <div class="board">
                  <div
                    class="tasks"
                    data-plugin="dragula"
                    data-containers='["task-list-one", "task-list-two", "task-list-three", "task-list-four"]'
                  >
                    <h5 class="mt-0 task-header">진행 전 (2)</h5>

                    <div id="task-list-one" class="task-list-items">
                      <!-- Task Item -->
                      <div class="card mb-0">
                        <div class="card-body p-3">
                          <small class="float-end text-muted"
                            >18 Mar 2022</small
                          >
                          <span class="badge bg-danger">높음</span>
                          <span class="badge bg-success">진행 25%</span>

                          <h5 class="mt-2 mb-2">
                            <a
                              href="#"
                              data-bs-toggle="modal"
                              data-bs-target="#task-detail-modal"
                              class="text-body"
                              >칸반보드 mvc 작업</a
                            >
                          </h5>

                          <p class="mb-0">
                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                              <i
                                class="mdi mdi-briefcase-outline text-muted"
                              ></i>
                              개발
                            </span>
                          </p>

                          <div class="dropdown float-end">
                            <a
                              href="#"
                              class="dropdown-toggle text-muted arrow-none"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              <i class="mdi mdi-dots-vertical font-18"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-pencil me-1"></i>Edit</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-delete me-1"></i>Delete</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-plus-circle-outline me-1"></i
                                >Add People</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-exit-to-app me-1"></i
                                >Leave</a
                              >
                            </div>
                          </div>

                          <p class="mb-0">
                            <img
                              src="https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-176213403491/media/magazine_img/magazine_270/%EC%8D%B8%EB%84%A4%EC%9D%BC.jpg"
                              alt="user-img"
                              class="avatar-xs rounded-circle me-1"
                            />
                            <span class="align-middle">김효은</span>
                          </p>
                        </div>
                        <!-- end card-body -->
                      </div>
                      <!-- Task Item End -->

                      <!-- Task Item -->
                      <div class="card mb-0">
                        <div class="card-body p-3">
                          <small class="float-end text-muted"
                            >18 Mar 2022</small
                          >
                          <span class="badge bg-secondary text-light"
                            >중간</span
                          >
                          <span class="badge bg-success">진행 25%</span>

                          <h5 class="mt-2 mb-2">
                            <a
                              href="#"
                              data-bs-toggle="modal"
                              data-bs-target="#task-detail-modal"
                              class="text-body"
                              >최종 플젝 중간발표</a
                            >
                          </h5>

                          <p class="mb-0">
                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                              <i
                                class="mdi mdi-briefcase-outline text-muted"
                              ></i>
                              분석
                            </span>
                          </p>

                          <div class="dropdown float-end">
                            <a
                              href="#"
                              class="dropdown-toggle text-muted arrow-none"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              <i class="mdi mdi-dots-vertical font-18"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-pencil me-1"></i>Edit</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-delete me-1"></i>Delete</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-plus-circle-outline me-1"></i
                                >Add People</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-exit-to-app me-1"></i
                                >Leave</a
                              >
                            </div>
                          </div>

                          <p class="mb-0">
                            <img
                              src="../assets/images/users/avatar-1.jpg"
                              alt="user-img"
                              class="avatar-xs rounded-circle me-1"
                            />
                            <span class="align-middle">한가람</span>
                          </p>
                        </div>
                        <!-- end card-body -->
                      </div>
                      <!-- Task Item End -->


                    </div>
                    <!-- end company-list-1-->
                  </div>

                  <div class="tasks">
                    <h5 class="mt-0 task-header text-uppercase">
                      진행 중 (2)
                    </h5>

                    <div id="task-list-two" class="task-list-items">
                      <!-- Task Item -->
                      <div class="card mb-0">
                        <div class="card-body p-3">
                          <small class="float-end text-muted"
                            >16 Mar 2022</small
                          >
                          <span class="badge bg-secondary text-light"
                            >높음</span
                          >
                          <span class="badge bg-success">진행 50%</span>

                          <h5 class="mt-2 mb-2">
                            <a
                              href="#"
                              data-bs-toggle="modal"
                              data-bs-target="#task-detail-modal"
                              class="text-body"
                              >pms 채팅 프론트 작업 </a
                            >
                          </h5>

                          <p class="mb-0">
                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                              <i
                                class="mdi mdi-briefcase-outline text-muted"
                              ></i>
                              개발
                            </span>
                          </p>

                          <div class="dropdown float-end">
                            <a
                              href="#"
                              class="dropdown-toggle text-muted arrow-none"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              <i class="mdi mdi-dots-vertical font-18"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-pencil me-1"></i>Edit</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-delete me-1"></i>Delete</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-plus-circle-outline me-1"></i
                                >Add People</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-exit-to-app me-1"></i
                                >Leave</a
                              >
                            </div>
                          </div>

                          <p class="mb-0">
                            <img
                              src="https://mblogthumb-phinf.pstatic.net/MjAxNzA2MTZfNTAg/MDAxNDk3NTc5NDc4NTQ2.Ufe2TjvMYJsI_IZnN80Gcs8bR7cZpLRz3o7ayFCVncAg.-aOmnvQ5n4VVDGDkydd06yxMZfHS6-YvGmkd400oM9og.JPEG.gatoblancokr/Cat-Cool-Summer.jpg?type=w2"
                              alt="user-img"
                              class="avatar-xs rounded-circle me-1"
                            />
                            <span class="align-middle">전지원</span>
                          </p>
                        </div>
                        <!-- end card-body -->
                      </div>
                      <!-- Task Item End -->

                      <!-- Task Item -->
                      <div class="card mb-0">
                        <div class="card-body p-3">
                          <small class="float-end text-muted"
                            >16 Mar 2022</small
                          >
                          <span class="badge bg-success">낮음</span>
                          <span class="badge bg-success">진행 50%</span>

                          <h5 class="mt-2 mb-2">
                            <a
                              href="#"
                              data-bs-toggle="modal"
                              data-bs-target="#task-detail-modal"
                              class="text-body"
                              >업무등록 프론트 작업</a
                            >
                          </h5>

                          <p class="mb-0">
                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                              <i
                                class="mdi mdi-briefcase-outline text-muted"
                              ></i>
                              개발
                            </span>
                          </p>

                          <div class="dropdown float-end">
                            <a
                              href="#"
                              class="dropdown-toggle text-muted arrow-none"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              <i class="mdi mdi-dots-vertical font-18"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-pencil me-1"></i>Edit</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-delete me-1"></i>Delete</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-plus-circle-outline me-1"></i
                                >Add People</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-exit-to-app me-1"></i
                                >Leave</a
                              >
                            </div>
                          </div>

                          <p class="mb-0">
                            <img
                              src="../assets/images/users/avatar-6.jpg"
                              alt="user-img"
                              class="avatar-xs rounded-circle me-1"
                            />
                            <span class="align-middle">양초명</span>
                          </p>
                        </div>
                        <!-- end card-body -->
                      </div>
                      <!-- Task Item End -->
                    </div>
                    <!-- end company-list-2-->
                  </div>

                  <div class="tasks">
                    <h5 class="mt-0 task-header text-uppercase">보류 (1)</h5>
                    <div id="task-list-three" class="task-list-items">
                      <!-- Task Item -->

                      <!-- Task Item -->
                      <div class="card mb-0">
                        <div class="card-body p-3">
                          <small class="float-end text-muted"
                            >14 Mar 2022</small
                          >
                          <span class="badge bg-danger">낮음</span>
                          <span class="badge bg-success">진행 0%</span>

                          <h5 class="mt-2 mb-2">
                            <a
                              href="#"
                              data-bs-toggle="modal"
                              data-bs-target="#task-detail-modal"
                              class="text-body"
                              >인프라 재설계</a
                            >
                          </h5>

                          <p class="mb-0">
                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                              <i
                                class="mdi mdi-briefcase-outline text-muted"
                              ></i>
                              개발
                            </span>
                          </p>

                          <div class="dropdown float-end">
                            <a
                              href="#"
                              class="dropdown-toggle text-muted arrow-none"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              <i class="mdi mdi-dots-vertical font-18"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-pencil me-1"></i>Edit</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-delete me-1"></i>Delete</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-plus-circle-outline me-1"></i
                                >Add People</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-exit-to-app me-1"></i
                                >Leave</a
                              >
                            </div>
                          </div>

                          <p class="mb-0">
                            <img
                              src="../assets/images/users/avatar-4.jpg"
                              alt="user-img"
                              class="avatar-xs rounded-circle me-1"
                            />
                            <span class="align-middle">조민혁</span>
                          </p>
                        </div>
                        <!-- end card-body -->
                      </div>
                      <!-- Task Item End -->
                    </div>
                    <!-- end company-list-3-->
                  </div>

                  <div class="tasks">
                    <h5 class="mt-0 task-header text-uppercase">작업완료 (1)</h5>
                    <div id="task-list-four" class="task-list-items">
                      <!-- Task Item -->
                      <div class="card mb-0">
                        <div class="card-body p-3">
                          <small class="float-end text-muted"
                            >15 Mar 2022</small
                          >
                          <span class="badge bg-success">중간</span>
                          <span class="badge bg-success">진행 100%</span>

                          <h5 class="mt-2 mb-2">
                            <a
                              href="#"
                              data-bs-toggle="modal"
                              data-bs-target="#task-detail-modal"
                              class="text-body"
                              >일정관리 요구사항/화면설계서 작성</a
                            >
                          </h5>

                          <p class="mb-0">
                            <span class="pe-2 text-nowrap mb-2 d-inline-block">
                              <i
                                class="mdi mdi-briefcase-outline text-muted"
                              ></i>
                              분석
                            </span>
                          </p>

                          <div class="dropdown float-end">
                            <a
                              href="#"
                              class="dropdown-toggle text-muted arrow-none"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              <i class="mdi mdi-dots-vertical font-18"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-pencil me-1"></i>Edit</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-delete me-1"></i>Delete</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-plus-circle-outline me-1"></i
                                >Add People</a
                              >
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item"
                                ><i class="mdi mdi-exit-to-app me-1"></i
                                >Leave</a
                              >
                            </div>
                          </div>

                          <p class="mb-0">
                            <img
                              src="https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-176213403491/media/magazine_img/magazine_270/%EC%8D%B8%EB%84%A4%EC%9D%BC.jpg""
                              alt="user-img"
                              class="avatar-xs rounded-circle me-1"
                            />
                            <span class="align-middle">김효은</span>
                          </p>
                        </div>
                        <!-- end card-body -->
                      </div>
                      <!-- Task Item End -->
                    </div>
                    <!-- end company-list-4-->
                  </div>
                </div>
                <!-- end .board-->
              </div>
              <!-- end col -->
            </div>
            <!-- end row-->
          </div>
          <!-- container -->
        </div>
        <!-- content -->

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

    <!--  Add new task modal -->
    <div
      class="modal fade task-modal-content"
      id="add-new-task-modal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="NewTaskModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="NewTaskModalLabel">Create New Task</h4>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form class="p-2">
              <div class="mb-3">
                <label class="form-label">Project</label>
                <select class="form-select form-control-light">
                  <option>Select</option>
                  <option>Hyper - Admin Dashboard</option>
                  <option>CRM - Design & Development</option>
                  <option>iOS - App Design</option>
                </select>
              </div>

              <div class="row">
                <div class="col-md-8">
                  <div class="mb-3">
                    <label for="task-title" class="form-label">Title</label>
                    <input
                      type="text"
                      class="form-control form-control-light"
                      id="task-title"
                      placeholder="Enter title"
                    />
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="mb-3">
                    <label for="task-priority2" class="form-label"
                      >Priority</label
                    >
                    <select
                      class="form-select form-control-light"
                      id="task-priority2"
                    >
                      <option>Low</option>
                      <option>Medium</option>
                      <option>High</option>
                    </select>
                  </div>
                </div>
              </div>

              <div class="mb-3">
                <label for="task-description" class="form-label"
                  >Description</label
                >
                <textarea
                  class="form-control form-control-light"
                  id="task-description"
                  rows="3"
                ></textarea>
              </div>

              <div class="row">
                <div class="col-md-6">
                  <div class="mb-3">
                    <label for="task-title" class="form-label">Assign To</label>
                    <select
                      class="form-select form-control-light"
                      id="task-priority"
                    >
                      <option>Coderthemes</option>
                      <option>Robert Carlile</option>
                      <option>Louis Allen</option>
                      <option>Sean White</option>
                      <option>Riley Steele</option>
                      <option>Zak Turnbull</option>
                    </select>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="mb-3">
                    <label for="task-priority" class="form-label"
                      >Due Date</label
                    >
                    <input
                      type="text"
                      class="form-control form-control-light"
                      id="birthdatepicker"
                      data-toggle="date-picker"
                      data-single-date-picker="true"
                    />
                  </div>
                </div>
              </div>

              <div class="text-end">
                <button
                  type="button"
                  class="btn btn-light"
                  data-dismiss="modal"
                >
                  Cancel
                </button>
                <button type="button" class="btn btn-primary">Create</button>
              </div>
            </form>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <!--  Task details modal -->
    <div
      class="modal fade task-modal-content"
      id="task-detail-modal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="TaskDetailModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="TaskDetailModalLabel">
              iOS App home page <span class="badge bg-danger ms-2">High</span>
            </h4>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div class="p-2">
              <h5 class="mt-0">Description:</h5>

              <p class="text-muted mb-4">
                Voluptates, illo, iste itaque voluptas corrupti ratione
                reprehenderit magni similique? Tempore, quos delectus asperiores
                libero voluptas quod perferendis! Voluptate, quod illo rerum?
                Lorem ipsum dolor sit amet. With supporting text below as a
                natural lead-in to additional contenposuere erat a ante.
              </p>

              <div class="row">
                <div class="col-md-4">
                  <div class="mb-4">
                    <h5>Create Date</h5>
                    <p>
                      17 March 2018 <small class="text-muted">1:00 PM</small>
                    </p>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="mb-4">
                    <h5>Due Date</h5>
                    <p>
                      22 December 2018 <small class="text-muted">1:00 PM</small>
                    </p>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="mb-4" id="tooltip-container">
                    <h5>Asignee:</h5>
                    <a
                      href="javascript:void(0);"
                      data-bs-container="#tooltip-container"
                      data-bs-toggle="tooltip"
                      data-bs-placement="top"
                      title="Mat Helme"
                      class="d-inline-block"
                    >
                      <img
                        src="../assets/images/users/avatar-6.jpg"
                        class="rounded-circle avatar-xs"
                        alt="friend"
                      />
                    </a>
                  </div>
                </div>
              </div>
              <!-- end row-->

              <ul class="nav nav-tabs nav-bordered mb-3">
                <li class="nav-item">
                  <a
                    href="#home-b1"
                    data-bs-toggle="tab"
                    aria-expanded="false"
                    class="nav-link active"
                  >
                    Comments
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    href="#profile-b1"
                    data-bs-toggle="tab"
                    aria-expanded="true"
                    class="nav-link"
                  >
                    Files
                  </a>
                </li>
              </ul>

              <div class="tab-content">
                <div class="tab-pane show active" id="home-b1">
                  <textarea
                    class="form-control form-control-light mb-2"
                    placeholder="Write message"
                    id="example-textarea"
                    rows="3"
                  ></textarea>
                  <div class="text-end">
                    <div class="btn-group mb-2 d-none d-sm-inline-block">
                      <button
                        type="button"
                        class="btn btn-link btn-sm text-muted font-18"
                      >
                        <i class="dripicons-paperclip"></i>
                      </button>
                    </div>
                    <div class="btn-group mb-2 ms-2 d-none d-sm-inline-block">
                      <button type="button" class="btn btn-primary btn-sm">
                        Submit
                      </button>
                    </div>
                  </div>

                  <div class="d-flex mt-2">
                    <img
                      class="me-3 avatar-sm rounded-circle"
                      src="../assets/images/users/avatar-3.jpg"
                      alt="Generic placeholder image"
                    />
                    <div class="w-100">
                      <h5 class="mt-0">Jeremy Tomlinson</h5>
                      Cras sit amet nibh libero, in gravida nulla. Nulla vel
                      metus scelerisque ante sollicitudin. Cras purus odio,
                      vestibulum in vulputate at, tempus viverra turpis.

                      <div class="d-flex mt-3">
                        <a class="pe-3" href="#">
                          <img
                            src="../assets/images/users/avatar-4.jpg"
                            class="avatar-sm rounded-circle"
                            alt="Generic placeholder image"
                          />
                        </a>
                        <div class="w-100">
                          <h5 class="mt-0">Kathleen Thomas</h5>
                          Cras sit amet nibh libero, in gravida nulla. Nulla vel
                          metus scelerisque ante sollicitudin. Cras purus odio,
                          vestibulum in vulputate at, tempus viverra turpis.
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="text-center mt-2">
                    <a href="javascript:void(0);" class="text-danger"
                      >Load more
                    </a>
                  </div>
                </div>
                <div class="tab-pane" id="profile-b1">
                  <div class="card mb-1 shadow-none border">
                    <div class="p-2">
                      <div class="row align-items-center">
                        <div class="col-auto">
                          <div class="avatar-sm">
                            <span class="avatar-title rounded"> .ZIP </span>
                          </div>
                        </div>
                        <div class="col ps-0">
                          <a
                            href="javascript:void(0);"
                            class="text-muted fw-bold"
                            >Hyper-admin-design.zip</a
                          >
                          <p class="mb-0">2.3 MB</p>
                        </div>
                        <div class="col-auto">
                          <!-- Button -->
                          <a
                            href="javascript:void(0);"
                            class="btn btn-link btn-lg text-muted"
                          >
                            <i class="dripicons-download"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="card mb-1 shadow-none border">
                    <div class="p-2">
                      <div class="row align-items-center">
                        <div class="col-auto">
                          <img
                            src="../assets/images/projects/project-1.jpg"
                            class="avatar-sm rounded"
                            alt="file-image"
                          />
                        </div>
                        <div class="col ps-0">
                          <a
                            href="javascript:void(0);"
                            class="text-muted fw-bold"
                            >Dashboard-design.jpg</a
                          >
                          <p class="mb-0">3.25 MB</p>
                        </div>
                        <div class="col-auto">
                          <!-- Button -->
                          <a
                            href="javascript:void(0);"
                            class="btn btn-link btn-lg text-muted"
                          >
                            <i class="dripicons-download"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="card mb-0 shadow-none border">
                    <div class="p-2">
                      <div class="row align-items-center">
                        <div class="col-auto">
                          <div class="avatar-sm">
                            <span class="avatar-title bg-secondary rounded">
                              .MP4
                            </span>
                          </div>
                        </div>
                        <div class="col ps-0">
                          <a
                            href="javascript:void(0);"
                            class="text-muted fw-bold"
                            >Admin-bug-report.mp4</a
                          >
                          <p class="mb-0">7.05 MB</p>
                        </div>
                        <div class="col-auto">
                          <!-- Button -->
                          <a
                            href="javascript:void(0);"
                            class="btn btn-link btn-lg text-muted"
                          >
                            <i class="dripicons-download"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- .p-2 -->
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <!-- bundle -->
    <script src="../assets/js/vendor.min.js"></script>
    <script src="../assets/js/app.min.js"></script>

    <!-- dragula js-->
    <script src="../assets/js/vendor/dragula.min.js"></script>

    <!-- demo js -->
    <script src="../assets/js/ui/component.dragula.js"></script>
  </body>
</html>