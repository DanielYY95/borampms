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
		<div class="leftside-menu">
			<!-- LOGO -->
			<a href="index.html" class="logo text-center logo-light"> <span class="logo-lg"> <img src="${path}/tools/project_assets/images/logo.png" alt="" height="16" />
			</span> <span class="logo-sm"> <img src="${path}/tools/project_assets/images/logo_sm.png" alt="" height="16" />
			</span>
			</a>

			<!-- LOGO -->
			<a href="index.html" class="logo text-center logo-dark"> <span class="logo-lg"> <img src="${path}/tools/project_assets/images/logo-dark.png" alt="" height="16" />
			</span> <span class="logo-sm"> <img src="${path}/tools/project_assets/images/logo_sm_dark.png" alt="" height="16" />
			</span>
			</a>

			<div class="h-100" id="leftside-menu-container" data-simplebar>
				<!--- Sidemenu -->
				<!-- 왼쪽 사이드바 시작  -->
				<ul class="side-nav">
					<li class="side-nav-item"><a href="../dashboard/prjDash.html" class="side-nav-link"> <i class="fa fa-bar-chart" aria-hidden="true"></i> <span> 대시보드 </span>
					</a></li>
					<li class="side-nav-item"><a href="../schedule/schCalendar.html" class="side-nav-link"> <i class="uil-calender"></i> <span> 캘린더 </span>
					</a></li>

					<li class="side-nav-item"><a data-bs-toggle="collapse" href="#sidebarTasks" aria-expanded="false" aria-controls="sidebarTasks" class="side-nav-link"> <i class="uil-clipboard-alt"></i> <span> 일정관리 </span> <span class="menu-arrow"></span>
					</a>
						<div class="collapse" id="sidebarTasks">
							<ul class="side-nav-second-level">
								<li><a href="../schedule/schGantt.html">WBS/간트차트</a></li>
								<li><a href="../schedule/schKanban.html">칸반보드</a></li>
							</ul>
						</div></li>
					<li class="side-nav-item"><a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link"> <i class="uil-home-alt"></i> <span> 업무 관리 </span>
					</a>
						<div class="collapse" id="sidebarDashboards">
							<ul class="side-nav-second-level">
								<li><a href="../task/task_list.html">업무 목록</a></li>
								<li><a href="../task/task_issue.html">업무 이슈</a></li>
							</ul>
						</div></li>
					<li class="side-nav-item"><a href="../doc/Doc-Management.html" class="side-nav-link"> <i class="uil-folder-plus"></i> <span> 문서관리 </span>
					</a></li>
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
	
	<!-- Left Sidebar End -->
	<!-- 왼쪽 사이드바 종료  -->

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
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form Elements</li>
                                        </ol>
                                    </div>
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
                                                    <a href="taskDetail.html"  aria-expanded="true" class="nav-link active">
                                                    업무정보
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#input-types-code"  aria-expanded="true" class="nav-link">
                                                        WBS
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="taskOutput.html"  aria-expanded="true" class="nav-link">
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

                                            <!-- Signup modal content -->
                                                <div id="taskDetail"  tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div  >
                                                        <div  style="width: 70%; margin: 0 auto">

                                                            <div class="modal-header">
                                                            	
                                                                <h4>업무정보</h4>                                                                
                                                            	
                                                            </div>
            
                                                            <div class="modal-body">
                                                               
            
                                                                <form class="ps-3 pe-3" action="${path}/taskUpt.do">
            																							
                                                                    <div class="mb-3">
                                                                        <label for="username" class="form-label">제목</label>
                                                                        <input name="title" class="form-control"  required="" placeholder="제목을 입력해주세요" readonly>
                                                                    </div>
                                                                    
                                                                    
                                                                   <!-- Autoclose -->
																	<div style="display:flex; justify-content: space-between;">
                                                                   
                                                                        <div class="mb-3 position-relative" style="width: 30%;">
                                                                            <label class="form-label">작성자</label>
                                                                            <input type="text" name="writer" required="" value="양초명" class="form-control" readonly>
                                                                        </div>

                                                                        <div class="mb-3 position-relative" id="datepicker4" style="width: 30%;">
                                                                            <label class="form-label">시작일</label>
                                                                            <input type="text" name="startdate" required="" class="form-control" data-provide="datepicker" data-date-autoclose="true" data-date-container="#datepicker4" readonly>
                                                                        </div>
                                                                                                                                            
                                                                                                                                        <!-- Autoclose -->
                                                                        <div class="mb-3 position-relative" id="datepicker4" style="width: 30%;">
                                                                            <label class="form-label">마감일</label>
                                                                            <input type="text" name="duedate" required="" class="form-control" data-provide="datepicker" data-date-autoclose="true" data-date-container="#datepicker4" readonly>
                                                                        </div>

                                                                    </div>
																	
																	<!-- Multiple Select -->
																	<div class="mb-3 position-relative">
																		<label class="form-label">업무담당자</label>
                                                                        <select name="charge" class="select2 form-control select2-multiple" required="" data-toggle="select2" multiple="multiple" data-placeholder="업무담당자 지정">
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
            														

                                                                    <div style="display:flex; justify-content: space-between; ">
                                                                        <div class="mb-3" style="width: 45%;">
                                                                            <label for="example-select" class="form-label">분류</label>
                                                                            <select class="form-select" id="example-select" >
                                                                                <option>요구사항 도출</option>
                                                                                <option>요구사항 분석</option>
                                                                                <option>요구사항 명확</option>
                                                                                <option>요구사항 확인</option>
                                                                                <option>개발</option>
                                                                            </select>
                                                                        </div>	
                                                                        

                                                                        
                                                                        <div class="mb-3" style="width: 45%;">
                                                                            <label for="example-select" class="form-label">진행상태</label>
                                                                            <select class="form-select" id="example-select" >
                                                                                <option>진행 전</option>
                                                                                <option>진행 중</option>
                                                                                <option>지연</option>
                                                                                <option>완료</option>
                                                    
                                                                            </select>
                                                                        </div>

                                                                    </div>
            														
            														 <div class="mb-3">
		                                                                <label for="example-textarea" class="form-label">내용</label>
		                                                                <textarea class="form-control" id="example-textarea" rows="15" readonly></textarea>
		                                                            </div>	<hr>		
            
                                                       
                                                                    <div id="btnList" class="mb-3 text-center" style="display: flex; justify-content: space-between;">
                                                                        <button class="btn btn-secondary" type="button" >삭제</button>
                                                                        <button class="btn btn-primary" id="uptBtn" type="button">수정</button>
                                                                        
                                                                    </div>
            
                                                                </form>
            
                                                            </div>
                                                        </div><!-- /.modal-content -->
                                                    </div><!-- /.modal-dialog -->
                                                </div><!-- /.modal -->
                                        </div> <!-- end tab-content-->
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

        <script>
            $("option").not(":selected").attr("disabled", "disabled"); // 처음에 selected 되지않은 것들로 수정할 수 없도록
           

            // .on("click")이 .click() 보다 메모리를 덜 먹고 동적으로 생성되는 요소들이 잘 작동
            // .on('click', @@, function) 으로 처리하는 경우 중복 클릭되는 문제 => stopImmediatePropagation() 로 해결  // 참고 링크: https://velog.io/@heeboventure/jQuery-click-%EC%9D%B4%EB%B2%A4%ED%8A%B8-%EC%A4%91%EB%B3%B5-%EB%B0%9C%EC%83%9D-%EB%AC%B8%EC%A0%9C-%ED%95%B4%EA%B2%B0
                // 현재 이벤트가 상위뿐 아니라 현재 레벨에 걸린 다른 이벤트도 동작하지않도록 중단 
                // jQuery 클릭 이벤트 시 여러 번 실행되는 경우: 버블링(하위 요소를 누르면 상위도 클릭되는) 현상 떄문에

            $("#btnList").on('click','#uptBtn',function(e){
                e.stopImmediatePropagation();
                $("input, textarea").removeAttr("readonly");
                $("option").removeAttr("disabled");
                $(this).text("수정완료").attr("id", "uptSuccessBtn"); // => 요걸 누르면 한번 더 눌린 것처럼 되네...

            })

            $(document).on("click", "#uptSuccessBtn",function(e){
                $("form").submit();
                $("input, textarea").attr('readonly', true);
                $("option").not(":selected").attr("disabled", "disabled");
                $(this).text("수정").attr("id", "uptBtn");
            })


        </script>

	   <!-- bundle -->
        <script src="${path}/tools/project_assets/js/vendor.min.js"></script>
        <script src="${path}/tools/project_assets/js/app.min.js"></script>
     

    </body>
</html>


     
