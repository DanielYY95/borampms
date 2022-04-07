<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <c:set var="path" value="${pageContext.request.contextPath }" />
            <fmt:requestEncoding value="utf-8" />
            <!DOCTYPE html>
            <%-- --%>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <title>Insert title here</title>
                    <!-- App favicon -->
                    <link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">

                    <!-- App css -->
                    <link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
                    <link href="${path}/tools/project_assets/css/app-creative.min.css" rel="stylesheet" type="text/css"
                        id="app-style" />

                    <!-- jquery 라이브러리 -->
                    <script src="${path}/tools/jquery-3.6.0.js"></script>



                    <script type="text/javascript">
                        let msg = '${msg}';

                        if (msg != '') {
                            alert(msg);
                        }



                    </script>
                    <style>
                        .container {
                            width: 70%;
                        }

                        .input-group-prepend {
                            width: 20%;
                        }

                        .input-group-text {
                            width: 100%;
                            font-weight: bolder;
                        }
                    </style>

                </head>



                <body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
                    data-rightbar-onstart="true">
                    <!-- Begin page -->
                    <div class="wrapper">

                        <!-- ========== Left Sidebar Start ========== -->
                        <jsp:include page="../include/leftBar.jsp" flush="true" />


                        <!-- 왼쪽 사이드바 종료  -->


                        <!-- ============================================================== -->
                        <!-- Start Page Content here -->
                        <!-- ============================================================== -->

                        <div class="content-page">
                            <div class="content">


                                <!-- Start Content-->
                                <div class="container-fluid">
                                    <jsp:include page="../include/headerBar.jsp" flush="true" />

                                    <!-- start page title -->
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="page-title-box">

                                                <h4 class="page-title">업무 상세정보</h4>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end page title -->

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <div>
                                                        <ul class="nav nav-tabs nav-bordered mb-3"
                                                            style="display: flex; justify-content: space-around;">
                                                            <li class="nav-item">
                                                                <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
                                                                <a href="${path}/taskDetail.do" aria-expanded="true"
                                                                    class="nav-link">
                                                                    업무정보
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/taskWbs.do" aria-expanded="true"
                                                                    class="nav-link">
                                                                    WBS
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/toFrm.do?" aria-expanded="true"
                                                                    class="nav-link active">
                                                                    산출물
                                                                </a>
                                                            </li>
                                                             <li class="nav-item">
                                                                <a href="${path}/issue.do?method=list" aria-expanded="true" class="nav-link">
                                                                    이슈
                                                                </a>
                                                            </li>
                                                       
                                                        </ul> <!-- end nav-->
                                                    </div>
                                                    <!-- Signup modal content -->
                                                    <div id="taskDetail" tabindex="-1" role="dialog" aria-hidden="true">
                                                        <div>
                                                            <div style="width: 70%; margin: 0 auto">

                                                                <div class="modal-header">

                                                                    <h4>업무 산출물 <small style="color:red;">※ 업무담당자만 등록 가능합니다.</small></h4>
																	<button class="btn btn-primary float-end" id="listBtn" type="button">글 목록</button>
                                                                </div>

                                                                <div class="modal-body">
                                                                    <!-- ### 파일업로드 File Upload -->
                                                                    <div class="container">
                                                                    	 
                                                                    	 <c:if test="${chargeChk eq 1}">
	                                                                        <form method="post"
	                                                                            enctype="multipart/form-data"
	                                                                            action="${path}/toInsert.do">
	
	                                                                            <div id="uploadContainer" >
	                                                                                <div class="mb-3" style="margin: 0 auto;">
	
	                                                                                    <div class="row g-2 justify-content-center">
	                                                                                        <input name="ptId"
	                                                                                            value="${ptId}" hidden />
	                                                                                        <input name="toWriter"
	                                                                                            value="${user_info.uiId}"
	                                                                                            hidden />
	                          
	                                                                                        <input class="form-control"
	                                                                                            type="file" name="toReport"
	                                                                                            id="formFileMultiple"
	                                                                                            multiple style="width: 60%">
																							  <span style="width: 15%"><button
	                                                                                            class="btn btn-primary px-3"
	                                                                                            id="regBtn" type="button"
	                                                                                            onclick="chkFile()">등록</button>
	                                                                                    	</span>
	                                                                                    </div>
	                                                  
	                                                                                </div>
	
	                                                                            </div>
	                                                                        </form>
                                                                        </c:if>
                                                                        
                                                                        
                                                                    </div>

                                         
                                                                    <div class="fileContainer">
                                                                        <c:forEach var="fname" items="${outputList }">

                                                                            <div class="p-2">
                                                                                <div class="row align-items-center w-50" style="margin: 0 auto;">                                                                                  
                                                                                    <div class="col ps-0"> <a
                                                                                            href="javascript:void(0);"
                                                                                            class="text-muted fw-bold"
                                                                                            data-dz-name="">${fname.toFile}</a>
                                                                                    </div>
                                                                                    
                                                                                    <div class="col-auto"> <!-- a태그였기 때문에 문제가 있었다.. 이러면 같은 이름의 파일인 경우에는..? -->
                                                                                        <!-- Button --> <button
                                                                                            class="btn btn-link btn-lg text-muted"
                                                                                            data-dz-remove="" onclick="downFile('${fname.toFile}')"> <i
                                                                                                class="dripicons-download" ></i>
                                                                                        </button>
                                                                                    </div>
                                                                                    <c:if test="${fname.toWriter eq user_info.uiId}"> <!-- 파일을 등록한 사람만 삭제 가능 -->
	                                                                                    <div class="col-auto">
	                                                                                        <!-- Button --> <button
	                                                                                            class="btn btn-link btn-lg text-muted"
	                                                                                            data-dz-remove="" 
	                                                                                            onclick="deleteFile('${fname.toFile}')"> <i
	                                                                                                class="dripicons-cross"></i>
	                                                                                        </button>
	                                                                                    </div>
                                                                                    </c:if>
                                                                                </div>
                                                                            </div>


                                                                        </c:forEach>
                                                                    </div>
	

                                                                </div> <!-- end card-body -->
                                                            </div> <!-- end card -->
                                                        </div><!-- end col -->
                                                    </div><!-- end row -->
                                                </div>

                                            </div> <!-- end padding-->
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="../include/rightBar_footer.jsp" flush="true" />

                            </div>
                        </div><!-- End Wrapper -->



                        <!-- plugin js -->
                        <script src="${path}/tools/project_assets/js/vendor/dropzone.min.js"></script>
                        <!-- init js -->
                        <script src="${path}/tools/project_assets/js/ui/component.fileupload.js"></script>

                        <script>
                            // 파일 유효성 체크
                            function chkFile() {

                                if ($("[name=toReport]").val() != "") {
                                    $("form").submit();
                                    $("[name=toReport]").val("");
                                } else {
                                    alert("파일을 선택해주세요.")
                                    return;
                                }

                            }


          
                            function downFile(fname) {
                                if(confirm("다운로드할 파일:" + fname)){
                                	location.href="${path}/download.do?fname="+fname;
                                }
                            }
                            
                            function deleteFile(fname) {
                                if(confirm("삭제하시겠습니까?")){
                                    location.href="${path}/toDelete.do?toFile="+fname;
                                }
                            }
                            
                            


                        </script>


                </body>

                </html>