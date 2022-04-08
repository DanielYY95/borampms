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
 

		<style>
			.col{
				padding-left: 0;
			
			}
		
		
		</style>
		
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

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                   	
                                    <h4 class="page-title">프로젝트 목록</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                    	<div class="row">
                                    		  <div class="col-xl-12">
                                                <div class="float-end  mt-2">
                                                    <button id="newPrjBtn" type="button" class="btn btn-danger mb-2"><i class="mdi mdi-basket me-1"></i> 새 프로젝트 등록</button>
                                                 
                                                </div>
                                            </div><!-- end col-->
                                    	
                                    	
                                    	</div>
                                    
                                    
                                        <div class="row mb-2">
                       
                                            <div class="col-xl-12">
                                                   
                                                <form id="searchForm" action="${path}/mainSearchPrj.do" class="row gy-2 gx-2 align-items-center justify-content-between"  method="post">
                                                
                                                    
                                                      <div class="col-auto">
                                                     	 <div class="row gy-4">
	                                                          <div class="col">
	                                                         
	                                                            <label class="p-1" style="width: 100px;" >프로젝트명</label>
	                                                          </div>
	                                                          <div class="col">
	                                                            <input type="search" name="piTitle" class="form-control" id="search-word" placeholder="검색">
	                                                          </div>
	                                                          <div class="col">
	                                                           <label class=" p-1" style="width: 100px;" >프로젝트상태</label>
	                                                          </div>
	                                                          <div class="col">
	                                                            <select class="form-select" id="search-select" name="piStatus">
	                                                                <option value="" selected>전체</option>
	                                                                <option>진행 전</option>
	                                                                <option>진행 중</option>
	                                                                <option>보류</option>
	                                                                <option>완료</option>
	                                                            </select>
	                                                          </div>
                                                          </div>
                                                      
                                                      </div>
                                                      <div class="col-auto">
                                                          <div class="row gy-5">
	                                                          <div  class="col">
	                                                            <label for="startdate-form" class="col-form-label p-1" style="width: 60px;" >시작일</label>
	                                                          </div>
	                                                          <div  class="col">
	                                                            <input id="startdate-form" class="form-control" name="piStartdate" type="date" />
	                                                          </div>
	                                                          <div  class="col">
	                                                            <label for="duedate-form" class="col-form-label p-1" style="width: 60px;">마감일</label>
	                                                          </div>
	                                                          <div  class="col">
	                                                            <input id="duedate-form" class="form-control" name="piDuedate" type="date" />
	                                                          </div>
	       													 <div  class="col">
																<button class="btn btn-primary" id="searchBtn" type="button">조회</button>
															</div>
	        
	                                                      </div>
                                                     </div>
                                            
                                              </form>
                                            </div>


                                          
                                        </div>

                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th style="width: 20px;">
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck1">
                                                                <label class="form-check-label" for="customCheck1">&nbsp;</label>
                                                            </div>
                                                        </th>
                                                        <th>프로젝트 ID</th>
                                                        <th>제목(프로젝트에 들어가기위해 여기를 누르시오)</th>
                                                        <th>프로젝트 관리자</th>
                                                        <th>생성일/마감일</th>
                                                        <th>프로젝트 상태</th>
                                                        
                                                    </tr>
                                                </thead>
                                                <tbody id="listBox">
                                                	<c:forEach var="prj" items="${prjList}">
                                                		<tr>
	                                                        <td>
	                                                            <div class="form-check">
	                                                                <input type="checkbox" class="form-check-input" id="customCheck2">
	                                                                <label class="form-check-label" for="customCheck2">&nbsp;</label>
	                                                            </div>
	                                                        </td>
	                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">${prj.piId} </a> </td>
	                                                        <td onclick="goToPrj('${prj.piId}')">${prj.piTitle}</td>
	                                                        <td>
	                                                            <div class="d-flex">
	                                                                <div class="d-flex align-items-center">
	                                                                    <div class="flex-shrink-0">
	                                                                        <img src="${path}/tools/main_assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xs" alt="friend">
	                                                                    </div>
	                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">${prj.uiName}</h5></div>
	                                                                </div>
	                                                            </div>
	                                                        </td>
	
	                                                        <td>
	                                                            <h5 class="my-0">${prj.piStartdate}</h5>
	                                                            <p class="mb-0 txt-muted">${prj.piDuedate}</p>
	                                                        </td>
	
	                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${prj.piStatus}</span></h5></td>
	                                                      
	                                                    </tr>
                                                	
              
                                                	</c:forEach>
                                                
                                        
                                                </tbody>
                                            </table>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div> <!-- end row -->
						
						
						
						   <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                   	
                                    <h4 class="page-title">프로젝트 참여가능 목록</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                         
                                               
		
		                                        <div class="table-responsive">
		                                            <table class="table table-centered table-nowrap mb-0">
		                                                <thead class="table-light">
		                                                    <tr>
		                                                        <th style="width: 20px;">
		                                                            <div class="form-check">
		                                                                <input type="checkbox" class="form-check-input" id="customCheck1">
		                                                                <label class="form-check-label" for="customCheck1">&nbsp;</label>
		                                                            </div>
		                                                        </th>
		                                                        <th>프로젝트 ID</th>
		                                                        <th>제목</th>
		                                                        <th>프로젝트 관리자</th>
		                                                        <th>생성일/마감일</th>
		                                                        <th>프로젝트 상태</th>
		                                                        <th style="width: 125px;">참가 요청/상태</th>
		                                                    </tr>
		                                                </thead>
		                                                <tbody>
		                                                	<c:forEach var="newprj" items="${newPrjList}">
		                                                		<tr>
			                                                        <td>
			                                                            <div class="form-check">
			                                                                <input type="checkbox" class="form-check-input" id="customCheck2">
			                                                                <label class="form-check-label" for="customCheck2">&nbsp;</label>
			                                                            </div>
			                                                        </td>
			                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">${newprj.piId}</a> </td>
			                                                        <td>${newprj.piTitle}</td>
			                                                        <td>
			                                                            <div class="d-flex">
			                                                                <div class="d-flex align-items-center">
			                                                                    <div class="flex-shrink-0">
			                                                                        <img src="${path}/tools/main_assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xs" alt="friend">
			                                                                    </div>
			                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">${newprj.uiName}</h5></div>
			                                                                </div>
			                                                            </div>
			                                                        </td>
			
			                                                        <td>
			                                                            <h5 class="my-0">${newprj.piStartdate}</h5>
			                                                            <p class="mb-0 txt-muted">${newprj.piDuedate}</p>
			                                                        </td>
			
			                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${newprj.piStatus}</span></h5></td>
			                                                        <td>
			                                                            <a href="javascript:void(0);" class="action-icon" onclick="joinToPrj('${newprj.piId}')">
			                                                            <span class="fs-5">요청&nbsp;</span><i class="dripicons-rocket"></i></a>
			                                                            
			                                                        </td>
			                                                    </tr>
		                                                	
		              
		                                                	</c:forEach>
		                                                		<c:forEach var="waitprj" items="${waitPrjList}">
		                                                		<tr>
			                                                        <td>
			                                                            <div class="form-check">
			                                                                <input type="checkbox" class="form-check-input" id="customCheck2">
			                                                                <label class="form-check-label" for="customCheck2">&nbsp;</label>
			                                                            </div>
			                                                        </td>
			                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">${waitprj.piId} </a> </td>
			                                                        <td>${waitprj.piTitle}</td>
			                                                        <td>
			                                                            <div class="d-flex">
			                                                                <div class="d-flex align-items-center">
			                                                                    <div class="flex-shrink-0">
			                                                                        <img src="${path}/tools/main_assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xs" alt="friend">
			                                                                    </div>
			                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">${waitprj.uiName}</h5></div>
			                                                                </div>
			                                                            </div>
			                                                        </td>
			
			                                                        <td>
			                                                            <h5 class="my-0">${waitprj.piStartdate}</h5>
			                                                            <p class="mb-0 txt-muted">${waitprj.piDuedate}</p>
			                                                        </td>
			
			                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${waitprj.piStatus}</span></h5></td>
			                                                        <td>
			                                                             <c:if test="${waitprj.puStatus eq 2}">
											                            	<span class="badge bg-primary text-light 
											                            		rounded-pill p-1  fs-6">승인 요청 중</span>
											                            	
											                            </c:if>
										                                <c:if test="${waitprj.puStatus eq 3}">
											                            	<span class="badge bg-secondary text-light 
											                            		rounded-pill p-1 fs-6">승인 반려</span>
											                            </c:if>
														                                                            
			                                                        </td>
			                                                    </tr>
		                                                	
		              
		                                                	</c:forEach>
		                                                
		                                                
		                                                    
		                                                </tbody>
		                                            </table>
		                                        </div>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div> <!-- end row -->
						
						
						
                    </div>
                    <!-- container -->

                </div>
                <!-- content -->


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->
			<jsp:include page="../include/rightBar_footer.jsp" flush="true"/>
			
			</div>
        </div>
        <!-- END wrapper -->

         
        <script>
        
    		$(".button-menu-mobile").hide();
    		// 여기서는 필요없기에 가려줘야한다.
   
        	$("#newPrjBtn").click(function(){
        		location.href="${path}/addPrjFrm.do";
        	})

       		$("#searchBtn").on("click", function(){
       			
				searchPrj();		
			})
		
			$("input").on("keypress",function(e){
				if(e.keyCode==13){
					e.preventDefault();
					searchPrj();
				}
		
			});
			        	

        	function goToPrj(piId){
        		location.href="${path}/prjDash.do?piId="+piId;

        	} 
        	
        	
        	function joinToPrj(piId){
        		
        		location.href="${path}/joinPrj.do?piId="+piId;
        	}

        	function searchPrj(){

        
        		$.ajax({

        			url:"${path}/mainSearchPrj.do",
        			type:"get",
        			data: $("#searchForm").serialize(),
        			dataType:"json",
        			success:function(data) {
        				
        				$("#listBox").html("");
        				let html = "";
        				$.each(data.searchPrjList, function(idx, sch) {
        					
        					html += '<tr><td><div class="form-check"><input type="checkbox" class="form-check-input" id="customCheck2">'+
        							'<label class="form-check-label" for="customCheck2">&nbsp;</label></div></td><td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">'+
        							sch.piId+'</a></td><td onclick="goToPrj('+"'"+sch.piId+"'"+')">'+sch.piTitle+'</td><td><div class="d-flex"><div class="d-flex align-items-center">'+
                                    '<div class="flex-shrink-0"><img src="${path}/tools/main_assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xs" alt="friend"></div>'+
                                    '<div class="flex-grow-1 ms-2"><h5 class="my-0">'+sch.uiName+'</h5></div> </div></div></td><td><h5 class="my-0">'+sch.piStartdate+
                                    '</h5><p class="mb-0 txt-muted">'+sch.piDuedate+'}</p> </td><td><h5 class="my-0"><span class="badge badge-info-lighten">'+
                                    sch.piStatus+'</span></h5></td></tr>';
        				});	
        		
        				$("#listBox").append(html);
        		
        			
        			},
        			error:function(err) {
        				console.log(err);
        			}
        	
        		})
        	}
        	

            $("#alarmLogo").hide();
            
            
            


        </script>

    </body>
</html>