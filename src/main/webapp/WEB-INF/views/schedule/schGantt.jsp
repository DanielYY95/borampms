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
   <link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico" />
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
    <!-- App css -->

    <link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />
    <!-- 간트 js/css 시작 -->
    <script src="${path}/tools/main_assets/js/dhtmlxgantt.js"></script>

	<!-- jquery 라이브러리 -->
	<script src="${path}/tools/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="${path}/tools/main_assets/css/dhtmlxgantt.css" />
    <link rel="stylesheet" href="${path}/tools/main_assets/css/controls_styles.css" />

    <style>

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
     <!-- 간트 js/css 끝 -->
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

    <jsp:include page="../include/leftBar.jsp" flush="true" />

      <!-- Left Sidebar End -->
      <!-- 왼쪽 사이드바 종료  -->

      <!-- ============================================================== -->
      <!-- Start Page Content here -->
      <!-- ============================================================== -->

   		<div class="content-page">
		<div class="content">

			<jsp:include page="../include/headerBar.jsp" flush="true" />


			<!-- Start Content-->
			<div class="container-fluid" style="height: 80vh;">
				<div id="gantt_here" style='width:100%; height:100%;'></div>

			</div>
			<!-- container -->

		</div>
		<!-- content -->

		<jsp:include page="../include/rightBar_footer.jsp" flush="true" />

	</div>
</div><!-- End Wrapper -->




    <script type="text/javascript">
		// test data
		gantt.init("gantt_here");
		getData();
		gantt.attachEvent("onAfterTaskDrag", function(id, mode, e){
			let task = gantt.getTask(id);
			saveData(false, task)
		});
		gantt.attachEvent("onLightboxSave", function(id, task, is_new){
			saveData(is_new, task)
		});

		gantt.attachEvent("onGridHeaderClick", function(name, e){
		    //any custom logic here
		    if(name == "add"){
				return false;
		    }
		    return true;
		});
 		gantt.attachEvent("onTaskDblClick", function(id,e){
		    //any custom logic here
		    return false;
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
		function saveData(is_new, task){
			if(is_new){
				let paramData = {
					ptTitle : task.text,
					ptStartdate : dateFormat(task.start_date),
					ptDuedate : dateFormat(task.end_date)
				}// 화면에서 입력한 값 = 저장할 값.
				$.ajax({
				    url:"${path}/saveSchGantt.do",
				    type:"get",
				    data: paramData,
				    dataType:"json",
				    success:function(data){
						alert("저장되었습니다.");
						document.getElementById('btn_search').click();
				    },
				    error:function(){
				       console.log("에러발생:"+err);
				    }

				})
			}else{
				let paramData = {
					ptTitle : task.text,
					ptId : task.id,
					ptStartdate : dateFormat(task.start_date),
					ptDuedate : dateFormat(task.end_date)
				}// 화면에서 입력한 값 = 저장할 값.
				$.ajax({
				    url:"${path}/updateSchGantt.do",
				    type:"get",
				    data: paramData,
				    dataType:"json",
				    success:function(data){
						alert("저장되었습니다.");
						location.reload();
				    },
				    error:function(){
				       console.log("에러발생:"+err);
				    }

				})

			}
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
	        return new Date(Number(value.split('-')[0]),Number(value.split('-')[1]),Number(value.split('-')[2]));
		}
	</script>

    <!-- dragula js-->
    <script src="${path}/tools/main_assets/js/vendor/dragula.min.js"></script>

    <!-- demo js -->
    <script src="${path}/tools/main_assets/js/ui/component.dragula.js"></script>
  </body>
</html>