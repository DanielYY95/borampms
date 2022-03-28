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
<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">

<!-- App css -->
<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/project_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />
 
 <!-- jquery 라이브러리 -->
 <script src="${path}/tools/jquery-3.6.0.js"></script>
 
 
 
<script type="text/javascript">
	let msg = '${msg}';
	
	if(msg!=''){
		alert(msg);
	}
	
	
	
</script>
<style>
      .container{width: 70%;}
      .input-group-prepend{width:20%;}
      .input-group-text{width:100%;font-weight:bolder;}
  </style>
		
  </head>



    <body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
        <!-- Begin page -->
        <div class="wrapper">
			
				<!-- ========== Left Sidebar Start ========== -->
            <jsp:include page="../include/leftBar.jsp" 
                flush="true"/>


		<!-- 왼쪽 사이드바 종료  -->


            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                   

                    <!-- Start Content-->
                    <div class="container-fluid">
                        <jsp:include page="../include/headerBar.jsp" 
                            flush="true"/>

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
                                            <ul class="nav nav-tabs nav-bordered mb-3" style="display: flex; justify-content: space-around;">
                                                <li class="nav-item"> <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
                                                    <a href="${path}/taskDetail.do"  aria-expanded="true" class="nav-link">
                                                    업무정보
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#input-types-code"  aria-expanded="true" class="nav-link">
                                                        WBS
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/toFrm.do?"  aria-expanded="true" class="nav-link active">
                                                        산출물
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="" aria-expanded="true" class="nav-link">
                                                        이슈
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/project/task/taskGuide.html"  aria-expanded="true" class="nav-link">
                                                        가이드
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/project/task/taskHistory.html"  aria-expanded="true" class="nav-link">
                                                        히스토리
                                                    </a>
                                                </li>
                                            </ul> <!-- end nav-->
                                        </div>	
				<!-- Signup modal content -->
                        <div id="taskDetail"  tabindex="-1" role="dialog" aria-hidden="true">
                            <div>
                                <div  style="width: 70%; margin: 0 auto">

                                    <div class="modal-header">
                                    	
                                        <h4>업무 산출물</h4>                                                                
                                    	
                                    </div>

                                    <div class="modal-body">
										<!-- ### 파일업로드 File Upload -->
                                        <div class="container">
                                            <form method="post" enctype="multipart/form-data"
                                                action="${path}/toInsert.do">
                                        
                                        <div id="uploadContainer">
                                                <div class="input-group mb-3" >
                                                
                                                    <div class="row g-2">
                                                       		<input name="ptId" value="${ptId}" hidden />
                                                            <input name="toWriter" value="${user_info.uiId}" hidden />
                                                            <input class="form-control" type="file" name="toReport"  id="formFileMultiple" multiple>
                                                            
                                                    </div>
                                                    <span><button class="btn btn-primary" id="regBtn" type="button" onclick="chkFile()">등록</button>
                                                    </span>
                                                    
                                                </div>
                                                
                                            </div>
                                        </form>
                                        </div>
                                        
                                        <!-- 산출물 리스트. 아직 DB쪽이... -->
                                        <div class="fileContainer">
                                            <c:forEach var="fname" items="${outputList }">
                                                <div class="input-group mb-3 fileCls">
                                                    <div class="custom-file">
                                                        <input type="file" name="report" 
                                                            class="custom-file-input" id="file01"/>
                                                        <label class="custom-file-label" for="file01">${fname.toFile}</label>
                                                    </div>		
                                                    <div >
                                                        <span onclick="downFile('${fname.toId}')">다운로드</span>
                                                        <span onclick="deleteFile('${fname.toId}')">삭제</span>
                                                    </div>
                                                </div> 	 
                                            </c:forEach>
                                        </div>

						
                                        <div id="btnList" class="mb-3 text-center" style="display: flex; justify-content: space-between;">
                                            <button class="btn btn-secondary"  type="button" >삭제</button>
                                            
                                            <button class="btn btn-primary" id="uptBtn" type="button">수정</button>
                                            
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
            <jsp:include page="../include/rightBar_footer.jsp" 
                flush="true"/>

        </div>
        </div><!-- End Wrapper -->
        


        <!-- plugin js -->
		<script src="${path}/tools/project_assets/js/vendor/dropzone.min.js"></script>
		<!-- init js -->
		<script src="${path}/tools/project_assets/js/ui/component.fileupload.js"></script>
		        
        <script>
        // 파일 유효성 체크
        function chkFile(){
        	
        	if($("[name=toReport]").val()!=""){
        		$("form").submit();
        		$("[name=toReport]").val("");
        	}else{
        		alert("파일을 선택해주세요.")
        		return;
        	}
        			
        }
        
        
        // 첨부파일명이 화면에 나타날 수 있도록
		$("#uploadContainer").on("change", 
				".custom-file-input", function(){
			$(this).next(".custom-file-label").text($(this).val());
			
		});  
            
			// label의 text를 파일 이름으로 변경
            // 이미 랜더링이 된 상태여서 새로 만들어진 것들에 대해서는 적용이 안되는듯...업로드는 제대로 되는디
		

        </script>

	  
    </body>
</html>


     
