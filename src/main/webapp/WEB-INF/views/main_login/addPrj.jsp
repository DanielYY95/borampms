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
        <title>내 프로젝트 목록 - borampms</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">

        <!-- App css -->
        <link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${path}/tools/main_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />

		 <!-- jquery 라이브러리 -->
		 <script src="${path}/tools/jquery-3.6.0.js"></script>
 
		
    </head>

	
    <body class="loading" data-layout-color="light"  data-layout="topnav" data-layout-mode="fluid" data-rightbar-onstart="true">
        <!-- Begin page -->
        <div class="wrapper">

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                	
                	<div>
                		<a href="${path}/main.do" class="logo text-center logo-light" style="background-color:#313a46">
							<span class="logo-lg">
								<img src="${path}/tools/project_assets/images/boram_dark.png" alt="" height="45">
							</span>
							<span class="logo-sm">
								<img src="${path}/tools/project_assets/images/boram_sm_dark.png" alt="" height="35">
							</span>
						</a>
			                	
                	</div>
                	
                	<jsp:include page="../include/headerBar.jsp" flush="true"/>
				
        			<br>
				<!-- Start Content-->
				<div class="container-fluid">
					<div class="page-title-box">
                       
                           <h4 class="page-title text-center">프로젝트 등록</h4>
                       </div>
	
			
                        <div class="row">
                            <div class="col-4 mx-auto my-0">
                                <div class="card">
                                    <div class="card-body">
                                
                                    <br>
                                        <div class="tab-content">
                                        	<form method="post" action="${path}/insertPrj.do">
                                            	<div class="tab-pane show active" id="input-masks-preview">
                                                    <div class="row">
	                                                    <div class="col-lg-12">
		                                                    <div class="mb-3">
															    <label class="form-label">제목</label>
															    <input type="text" class="form-control" name="piTitle" value="">
															    <span class="font-13 text-muted">제목 입력은 필수사항입니다.</span>
															</div>
														</div>
													</div>
													<div class="row">
										
														<div class="col mb-3">
															    <label class="form-label">작성자</label>
															    <input type="text" class="form-control" name="piWriter" value="${user_info.uiId}" readonly>
															</div>
													
														 <div class="col mb-3">
						                                    <label for="example-select" class="form-label">진행상태</label>
						                                    <select class="form-select" id="example-select" name="piStatus">
						                                        <option>진행 전</option>
						                                        <option>진행 중</option>
						                                        <option>보류</option>
						                                        <option>완료</option>
						                                    </select>
						                                </div>
															
															
														</div>
													</div>
														
                                                    
                                                          <div class="row">
							                                <div class="col mb-3">
							                                 <label class="form-label">시작일</label>
							                                 <input class="form-control" required=""  type="date" name="piStartdate">
							                             </div>
							                             <div class="col mb-3">
							                                 <label class="form-label">마감일</label>
							                                 <input class="form-control" required=""  type="date" name="piDuedate">
							                             </div>
							                            </div>
                                 
                                         			
                                       
                                       	    </form>
                                       	    	
                                       	    
                                       	    </div>
                                       	
						                        <!-- end card-body -->
                                        </div>
                                        	 

	                                </div>
	                              	<div class="mb-3 text-center" style="display: flex; justify-content: space-between;">
						                             <button class="btn btn-secondary" onclick="goBack()">취소</button>
						                             <button class="btn btn-primary" type="button" id="regBtn">등록</button>
						                         </div>
                                        	
	                              
	                              
	                             </div>
	                           
	                             <div class="clearfix"></div>
	                             
	                           
           
	                             
	                        </div> <!-- end card-box -->
	
	                    </div> <!-- end Col -->
	                
	
	
	
                        
				</div>
			</div>	
		
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		
		
		<!-- start rightBar_footer -->
		<jsp:include page="../include/rightBar_footer.jsp" flush="true"/>
		<!-- end rightBar_footer -->
		
	</div>
	<!-- wrapper -->
	


			
			
<script>
	
	function goBack(){
		
		location.href="${path}/prjList.do"
	}

	

	// 업무 등록
	$("#regBtn").click(function() {
		if(confirm("등록하시겠습니까?")) {
			if($("[name=piTitle]").val().trim() == "") {
				alert("제목을 작성해주세요.");
			}  else if($("[name=piStartdate]").val().trim() == "") {
				alert("업무 시작일을 지정해주세요.");
			} else if($("[name=piDuedate]").val().trim() == "") {
				alert("업무 마감일을 지정해주세요.");
			}  else {
				$("form").submit();
			}
		}
	});
	

	$("[name=piTitle]").change(function(){
	    if($(this).val().length>30){
	        alert("제목은 최대 30자까지 작성가능합니다.");
	        $(this).val($(this).val().substring(0,29));
	    }
	});
			
	let newDateOptions = {
	        year: "numeric",
	        month: "2-digit",
	        day: "2-digit"
	}
	
	$("[name=piStartdate]").change(function(){
	
	    if($("[name=piStartdate]").val()>$("[name=piDuedate]").val() && $("[name=piDuedate]").val()!=""){
	        alert("시작일은 마감일보다 이후로 설정할 수 없습니다.");
	        $(this).val('');
	    }
	});
	
	$("[name=piDuedate]").change(function(){
	
	    if($("[name=piStartdate]").val()>$("[name=piDuedate]").val()){
	        alert("마감일은 시작일보다 이전으로 설정할 수 없습니다.");
	        $(this).val('');
	    }
	});
	

    $("#alarmLogo").hide();
    
	
</script>


</body>