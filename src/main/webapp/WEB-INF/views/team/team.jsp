<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>Dashboard | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!-- third party css -->
<link href="${path}/tools/project_assets/css/vendor/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
<!-- third party css end -->

<!-- App css -->
<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

<!-- jquery 라이브러리 -->
<script src="${path}/tools/jquery-3.6.0.js"></script>
<style>
	.inbox-widget .inbox-item .inbox-item-img img {
   		width: 54px;
	}
	.modal {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		display: none;
		background-color: rgba(0, 0, 0, 0.4);
	}
	.header-title {
		font-size: 30px;
	}
</style>


<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
	<!-- Begin page -->
	<div class="wrapper">
		<!-- ========== Left Sidebar Start ========== -->
		<jsp:include page="../include/leftBar.jsp" flush="true" />
		<div class="content-page">
			<div class="content">
				<!-- Topbar Start -->
				<jsp:include page="../include/headerBar.jsp" flush="true" />

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
								</div>
								<h4 class="page-title">팀 페이지</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<div class="row my-3">
										<div class="header-title" style="font-size:20px; padding-bottom:5px; float:left;">팀소개
											<textarea style="width:100%; height:170px;" value=""></textarea>
											<div style="text-align:right;">
												<button id="docList-btn" type="button" class="btn btn-primary">편집</button>
												<button id="docList-btn1" type="button" class="btn btn-primary">저장</button>
                                            </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6" style="float:left; width:30%;">
						<div class="card card-h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center mb-2">
                                   	<h4 class="header-title">팀원</h4>
                           		</div>
								<div class="inbox-widget" style="height:500px;overflow-x:hidden; overflow-y:scroll;">
                                    <div class="inbox-item">
                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
                                        <p class="inbox-item-author">양초명</p>
                                        <p class="inbox-item-text">개발1팀</p>
                                        <p class="inbox-item-text">email</p>
                                        <p class="inbox-item-date">
                                            <button type="button" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
                                        </p>
                                    </div>
                                    <div class="inbox-item">
                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
                                        <p class="inbox-item-author">양초명</p>
                                        <p class="inbox-item-text">개발1팀</p>
                                        <p class="inbox-item-text">email</p>
                                        <p class="inbox-item-date">
                                            <button type="button" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
                                        </p>
                                    </div>
                                    <div class="inbox-item">
                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
                                        <p class="inbox-item-author">양초명</p>
                                        <p class="inbox-item-text">개발1팀</p>
                                        <p class="inbox-item-text">email</p>
                                        <p class="inbox-item-date">
                                            <button type="button" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
                                        </p>
                                    </div>
                                    <div class="inbox-item">
                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
                                        <p class="inbox-item-author">양초명</p>
                                        <p class="inbox-item-text">개발1팀</p>
                                        <p class="inbox-item-text">email</p>
                                        <p class="inbox-item-date">
                                            <button type="button" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
                                        </p>
                                    </div>
                                    <div class="inbox-item">
                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
                                        <p class="inbox-item-author">양초명</p>
                                        <p class="inbox-item-text">개발1팀</p>
                                        <p class="inbox-item-text">email</p>
                                        <p class="inbox-item-date">
                                            <button type="button" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
                                        </p>
                                    </div>
                                    <div class="inbox-item">
                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
                                        <p class="inbox-item-author">양초명</p>
                                        <p class="inbox-item-text">개발1팀</p>
                                        <p class="inbox-item-text">email</p>
                                        <p class="inbox-item-date">
                                            <button type="button" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
                                        </p>
                                    </div>
                                    <div class="inbox-item">
                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
                                        <p class="inbox-item-author">양초명</p>
                                        <p class="inbox-item-text">개발1팀</p>
                                        <p class="inbox-item-text">email</p>
                                        <p class="inbox-item-date">
                                            <button type="button" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
                                        </p>
                                    </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-7 col-lg-6" style="float:right; width:35%; height:616px; ">
						<div class="card card-h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center mb-2">
									<h4 class="header-title">상세보기</h4>
								</div>
								<div>
									<p style="font-size:25px;">이름 : 한가람</p>
									<p style="font-size:25px;">부서 : 개발1팀</p>
									<p style="font-size:25px;">직급 : 과장</p>
									<p style="font-size:25px;">이메일 : 이메일</p>
									<p style="font-size:25px;">연락처 : 연락처</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-7 col-lg-6" style="float:right; width:30%; height:616px; margin-right:2%;">
						<div class="card card-h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center mb-2">
									<h4 class="header-title">상세보기</h4>
								</div>
									<div class="inbox-item-img" style="text-align:center;">
										<img src="${path}/tools/main_assets/images/users/profile.png" style="width:100%;" class="rounded-circle" alt="">
									</div>
							</div>
						</div>
					</div>
					<jsp:include page="../include/rightBar_footer.jsp" flush="true" />
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-xl modal-dialog-centered">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">사진제목</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
            <img class="card-img-top rounded img-fluid" src="images/research/research-1.jpg">
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>

      </div>
    </div>
	<script>
		$(document).ready(function(){
		    $("#myBtn").click(function(){
		        $("#myModal").modal();
		    });
		});
	</script>
</body>
</html>