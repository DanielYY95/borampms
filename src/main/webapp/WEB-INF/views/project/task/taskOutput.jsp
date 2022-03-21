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
<link href="${path}/tools/main_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />
 
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


            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                   

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
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
                                                    <a href="taskDetail.html"  aria-expanded="true" class="nav-link">
                                                    업무정보
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#input-types-code"  aria-expanded="true" class="nav-link">
                                                        WBS
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="taskOutput.html"  aria-expanded="true" class="nav-link active">
                                                        산출물
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="task_issue.html" aria-expanded="true" class="nav-link">
                                                        이슈
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="taskGuide.html"  aria-expanded="true" class="nav-link">
                                                        가이드
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="taskHistory.html"  aria-expanded="true" class="nav-link">
                                                        히스토리
                                                    </a>
                                                </li>
                                            </ul> <!-- end nav-->
                                        </div>	
										
										<!-- ### 파일업로드 File Upload -->
                                        <div class="container">
                                            <form method="post" enctype="multipart/form-data"
                                                action="${path}/toInsert.do">
                                        
                                        <div id="uploadContainer">
                                                <div class="input-group mb-3" >
                                                
                                                    <div class="row g-2">
                                                       
                                                            
                                                            <input class="form-control" type="file" name="toReport"  id="formFileMultiple" multiple>
                                                            
                                                    </div>
                                                    <span><button class="btn btn-primary">등록</button>
                                                    </span><span><button id="addUpload" class="btn btn-success" type="button">추가+</button></span>
                                                    
                                                </div>
                                                
                                            </div>
                                        </form>
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
        </div><!-- end page  -->

        <div class="rightbar-overlay"></div>
        <!-- /End-bar -->


        <!-- bundle -->
        <script src="../assets/js/vendor.min.js"></script>
        <script src="../assets/js/app.min.js"></script>
        <!-- plugin js -->
		<script src="../assets/js/vendor/dropzone.min.js"></script>
		<!-- init js -->
		<script src="../assets/js/ui/component.fileupload.js"></script>
		        
        <script>
            // 첨부파일명이 화면에 나타날 수 있도록
		$("#uploadContainer").on("change", ".custom-file-input", function(){
			$(this).next(".custom-file-label").text($(this).val());
			// label의 text를 파일 이름으로 변경
		});  // 이미 랜더링이 된 상태여서 새로 만들어진 것들에 대해서는 적용이 안되는듯...업로드는 제대로 되는디
		
		// 첨부파일 목록의 갯수
		let uploadLength = 1;
		
		// 추가버튼을 누르면 새로운 업로드 div 생성
		$("#uploadContainer").on("click", "#addUpload", function(){
			event.preventDefault(); // 계속해서 폼 제출을 하길래 막아놨다.

			let newUpload = '<div class="input-group mb-3"><div class="row g-2">'
						+'<input class="form-control" type="file" id="formFileMultiple" multiple>' 
						+'</div><span><button id="deleteUpload" class="btn btn-danger">'+"삭제-"+'</button></span></div>';
			
			$("#uploadContainer").append(newUpload);

		})

        	// 삭제버튼을 누르면 버튼의 조상의 조상인 div를 삭제한다. 
		$("#uploadContainer").on("click", "#deleteUpload", function(){
			event.preventDefault();
			$(this).parent().parent().remove();
			
		})
		
        $("#test").click(function(){

            alert($("input").val());
        })
       

        </script>

	   <!-- bundle -->
        <script src="${path}/tools/main_assets/js/vendor.min.js"></script>
        <script src="${path}/tools/main_assets/js/app.min.js"></script>
     

    </body>
</html>


     
