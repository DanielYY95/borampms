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

    <!-- 간트 js/css 시작 -->
    <script src="${path}/tools/main_assets/js/dhtmlxgantt.js"></script>

	<!-- jquery 라이브러리 -->
	<script src="${path}/tools/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="${path}/tools/main_assets/css/dhtmlxgantt.css" />
    <link rel="stylesheet" href="${path}/tools/main_assets/css/controls_styles.css" />


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
                                                                    class="nav-link active">
                                                                    WBS
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/toFrm.do?" aria-expanded="true"
                                                                    class="nav-link">
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


                                <!-- Start Content-->
                           <div class="container-fluid" style="height: 80vh;">
								<div id="gantt_here" style='width:100%; height:100%;'></div>
								
							</div>
                                 </div>

                             </div> <!-- end padding-->
                         </div>
                     </div>
                 </div>
                 <jsp:include page="../include/rightBar_footer.jsp" flush="true" />

             </div>
         </div><!-- End Wrapper -->



          <script type="text/javascript">
          
          // 참고: https://docs.dhtmlx.com/gantt/api__gantt_ontaskloading_event.html
          
		// test data
		gantt.config.start_date = new Date(2022, 01, 01);
		gantt.config.end_date = new Date(2022, 12, 31);
		
		gantt.init("gantt_here");
		getData();
		
		
		
		// 해당 업무가 표시된다. 
			// 적용됬다가 말았다가 하는 문제..?
		$(function(){
		 	$("[task_id=${prj_task.ptId}]").click();
			console.log($("[task_id=${prj_task.ptId}]"));
			

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

	        return date.getFullYear() + '-' + month + '-' + day;
		}
		function stringToDate(value) {
	        return new Date(Number(value.split('-')[0]),Number(value.split('-')[1])-1,Number(value.split('-')[2]));
		}
	</script>
 
    <!-- dragula js-->
    <script src="${path}/tools/main_assets/js/vendor/dragula.min.js"></script>

    <!-- demo js -->
    <script src="${path}/tools/main_assets/js/ui/component.dragula.js"></script>
  	
 

  </body>