<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- App favicon -->
        <link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">
        <!-- App css -->
        <link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${path}/tools/main_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style"/>
        <!-- SimpleMDE css -->
		<link href="${path}/tools/main_assets/css/vendor/simplemde.min.css" rel="stylesheet" type="text/css" />
		<link
		    rel="stylesheet"
		    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
		  />
		<!-- jquery 라이브러리 -->
 		<script src="${path}/tools/jquery-3.6.0.js"></script>
        <!-- css -->
        <style>
        	.pagination-margin-top{
        		margin-top:10px;
        	}
        	.card-body{
        	padding:3rem 9rem;
        	}
        </style>
    </head>

    <body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
        <!-- Begin page -->
        <div class="wrapper">
            <!-- ========== Left Sidebar Start ========== -->
            <jsp:include page="../include/leftBar.jsp"/>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                    <!-- Topbar Start -->
                    <jsp:include page="../include/headerBar.jsp" flush="true"/>
                    <!-- end Topbar -->

                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Apps</a></li>
                                            <li class="breadcrumb-item active">File Manager</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">문서 상세정보</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                    <h4 class="header-title">[부서 문서공유함]</h4>
                                    <br>
                                        <div class="tab-content">
                                            <div class="tab-pane show active" id="input-masks-preview">
                                                    <div class="row">
	                                                    <div class="col-lg-6">
		                                                    <div class="mb-3">
															    <label class="form-label">제목</label>
															    <input type="text" class="form-control" name="ddTitle" value="${deptRowList.ddTitle}" readonly>
															    <span class="font-13 text-muted"></span>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
															    <label class="form-label" >부서</label>
															    <input type="text" class="form-control" name="ddDept" value="${deptRowList.ddDept}" readonly>
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
															    <label class="form-label">작성자</label>
															    <input type="text" class="form-control" name="ddWriter" value="${deptRowList.ddWriter}" readonly>
															</div>
														</div>
													</div>
													<div class="mb-3">
                                                        <label class="form-label">내용</label>
                                                        <textarea class="form-control" id="example-textarea" name="ddContent" rows="5" readonly>${deptRowList.ddContent}</textarea>
                                                    </div>
													<div class="row">
	                                                    <div class="col-lg-6">
															    <label class="form-label">파일 다운로드</label>
							
														</div>
													</div>
													<c:forEach var="fname" items="${deptRowList.fnames}">
													<div class="row">
								            			<div class="col-lg-4">
															<div class="mb-3">
																<div class="input-group flex-nowrap">
                                                            		<span class="input-group-text" id="basic-addon1" onclick="downFile('${fname}')"><i class="dripicons-upload"></i></span>
                                                            		<input type="text" class="form-control" name="report" placeholder="${fname}" aria-label="Username" aria-describedby="basic-addon1" readonly>
                                                        		</div>
														  	</div>
													  	</div>
												  	</div>
												  	</c:forEach>
													<div style="text-align:right;">
														<button id="docList-btn" type="button" class="btn btn-primary">글목록</button>
		                                            </div>
                                                <!-- end row -->                      
                                            </div> <!-- end preview-->
                                        
                                            <div class="tab-pane" id="input-masks-code">
                                                <pre class="mb-0">                                                    
                                                </pre> <!-- end highlight-->
                                            </div> <!-- end preview code-->
                                        </div>

	                                </div>
	                                <!-- end inbox-rightbar-->
	                             </div>
	                             <!-- end card-body -->
	                             <div class="clearfix"></div>
	                        </div> <!-- end card-box -->
	
	                    </div> <!-- end Col -->
	                    
	                </div><!-- End row -->
                    
	
	            </div> <!-- container -->
	
	         </div> <!-- content -->

                <!-- Footer Start -->
                <jsp:include page="../include/rightBar_footer.jsp"/>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        

		<!-- jstree js -->
		<script src="${path}/tools/main_assets/js/vendor/jstree.min.js"></script>
		<script src="${path}/tools/main_assets/js/pages/demo.jstree.js"></script>
		<!-- SimpleMDE js -->
		<script src="${path}/tools/main_assets/js/vendor/simplemde.min.js"></script>
		<!-- SimpleMDE demo -->
		<script src="${path}/tools/main_assets/js/pages/demo.simplemde.js"></script>
    </body>
	<script>
	/* 글목록버튼 클릭시, 문서관리 페이지로 이동 */
	$("#docList-btn").click(function(){
		alert("문서관리 페이지로 이동하시겠습니까?");
		location.href="${path}/dept.do?method=list";
	});
	function downFile(fname){
		if(confirm("다운로드할 파일:"+fname)){
			location.href="${path}/download.do?fname="+fname;
		}
	}
	</script>
</html>
