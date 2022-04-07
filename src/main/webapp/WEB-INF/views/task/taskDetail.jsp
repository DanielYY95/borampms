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
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	<meta content="Coderthemes" name="author" />
	<!-- App favicon -->
	<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

	<!-- App css -->
	<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />
	
	<!-- jquery 라이브러리 -->
	 <script src="${path}/tools/jquery-3.6.0.js"></script>
	 
			
</head>


 
 
 
<script type="text/javascript">
	let msg = '${msg}';
	
	if(msg!=''){
		alert(msg);
	}
	
	msg='';

    // .match("@@") @@ 특정 문자가 포함되었는지 true/false
    // 전체.find("option[value='개발1팀 양초명']").attr("selected", true);


    //text 값으로 찾아서 선택하기
        // var test = "이";
        ///$('#testSelect option:contains('+ test +')').attr('selected', true);

    //$("option").attr("selected", true);
   // console.log($("[name=charge] option[value='개발1팀 양초명']"));
   // console.log($("[name=charge]").find("option[value='개발1팀 양초명']"));

	// let ptChargeList = [${taskUser.ptCharge}];
	// let deptList = ["개발1팀", "마케팅팀", "IT팀", "인사팀"];
	
	// console.log(ptChargeList);
	// for(String x: ptChargeList){
	// 	for(String y: deptList){
	// 		if(x.includes(y)){
				
	// 		}
	// 	}
		
	// }
	
	
</script>
<style>
      .container{width: 70%;}
      .input-group-prepend{width:20%;}
      .input-group-text{width:100%;font-weight:bolder;}
  </style>
		
  </head>

	
	
	<!-- textarea는 초기에 지정할 수 없는건가??? ===>  >과 < 사이에 넣어야한다.
		업무담당자 지정은 js로 해야할 듯?
        => 요걸 처리를 안 하니까 자꾸 빈값으로 들어가서 에러가 생긴다....
        수정시, 빈값이 되지않도록 유효성 체크도 필요할듯.... => 해결
 
        내용 - 에디터 문제...'
        
        
        ### 업무 등록자는 업무 상세정보에서 업무 삭제와 업무정보 수정, 이슈 등록 가능.
        	업무 담당자는 업무, WBS 확인, 산출물 등록하고, 이슈 등록 가능 
        
        
	 -->
	

  
    <body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
        <!-- Begin page -->
        <div class="wrapper">
        	

			<jsp:include page="../include/leftBar.jsp" 
						flush="true"/>

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
        	
		        	<jsp:include page="../include/headerBar.jsp" 
		        				flush="true"/>
				
        			
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
                                                    <a href="${path}/taskDetail.do"  aria-expanded="true" class="nav-link active">
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
                                                    <a href="${path}/toFrm.do"  aria-expanded="true" class="nav-link">
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
                                                <div id="taskDetail"  tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div  >
                                                        <div class="col-lg-9 col-sm-12"  style="margin: 0 auto">

                                                            <div class="modal-header">
                                                            	
                                                                <h4>업무정보 <small style="color:red;">※ 업무등록자만 수정, 삭제 가능합니다.</small></h4>                                                                
                                                            	<button class="btn btn-primary float-end" id="listBtn" type="button">글 목록</button>
                                                            </div>
            
                                                            <div class="modal-body">
                                                               
            
                                                                <form class="ps-3 pe-3" action="${path}/taskUpt.do">
            																							
                                                                    <!-- ptId도 넘겨주기 위해서... -->
                                                                    <input name="ptId" value="${taskUser.ptId}" hidden/>


                                                                    <div class="mb-3">
                                                                        <label for="username" class="form-label">제목</label>
                                                                        <input name="ptTitle" class="form-control" value="${taskUser.ptTitle}"  required="" placeholder="제목을 입력해주세요" readonly>
                                                                    </div>
                                                                    
                                                                    
                                                                   <!-- Autoclose -->
																	<div class="row g-3">
                                                                   
                                                                        <div class="col mb-3 position-relative" >
                                                                            <label class="form-label">작성자</label>
                                                                            <input type="text" id="writer" required="" value="${taskUser.uiName}" class="form-control" readonly>
                                                                        </div>

                                                                        <div class="col mb-3 position-relative" id="datepicker4">
                                                                            <label class="form-label">시작일</label>
                                                                            <input type="date" name="ptStartdate" required="" value="${taskUser.ptStartdate}" class="form-control"   readonly>
                                                                        </div>

                                                                
                                                                                                                                            
                                                                                                                                        <!-- Autoclose -->
                                                                        <div class="col mb-3 position-relative" id="datepicker4" >
                                                                            <label class="form-label">마감일</label>
                                                                            <input  type="date" name="ptDuedate" required="" value="${taskUser.ptDuedate}" class="form-control"  readonly>
                                                                        </div>

                                                                    </div>
																	
                                                                    
                                                                    <div class="row g-3">

                                                                        					<!-- Multiple Select -->
																	<div class="col-lg-6 col-sm-4 mb-3 position-relative">
																		<label class="form-label">업무담당자</label>
                                                                  
                                                                        <select id="chargeUpt"  name="ptCharge" class="select2 form-control select2-multiple" value="${taskUser.ptCharge}" required="" data-toggle="select2" multiple="multiple" data-placeholder="업무담당자 지정">
																	      	<optgroup label="개발1팀">
																		        <option value="개발1팀 양초명">개발1팀 양초명</option>
																		        <option value="개발1팀 조민혁">개발1팀 조민혁</option>

																		    </optgroup>
																		      	<optgroup label="개발2팀">
																		        <option value="개발2팀 한가람">개발2팀 한가람</option>
																		        <option value="개발2팀 김효은">개발2팀 김효은</option>
																		        <option value="개발2팀 전지원">개발2팀 전지원</option>

																		    </optgroup>
																		    
																		     <optgroup label="인사팀">
					
																		        <option value="인사팀 양초명">인사팀 양초명</option>
																		        <option value="인사팀 한가람">인사팀 한가람</option>
																		        <option value="인사팀 김효은">인사팀 김효은</option>
																		    </optgroup>
																		    
																		    <optgroup label="기획팀">
																		        <option value="기획팀 조민혁">기획팀 양현수</option>
																		        <option value="기획팀 전지원">기획팀 전지원</option>
																		    </optgroup>
																		   
																		    <optgroup label="디자인팀">
																		        <option value="디자인팀 조민혁">디자인팀 조민혁</option>
																		        <option value="디자인팀 전지원">디자인팀 전지원</option>
																		    </optgroup>
																		   
																		   
																		    <optgroup label="마케팅팀">
																		        <option value="마케팅팀 양초명">마케팅팀 양초명</option>
																		        <option value="마케팅팀 양현수">마케팅팀 양현수</option>
																		       

																		    </optgroup>
																		   
																		 
																		</select>
																		
																		<script>
																			// 선택자 // .split(@@기준으로 잘라서 배열로 만든다.) => ["개발1팀 양초명", "개발1팀 양현수"]
																			// let ChargeList = ["개발1팀 양초명","개발1팀 양현수", "IT팀 조민혁"];
																			let ptCharge = "${taskUser.ptCharge}";
																			let chargeList = ptCharge.split(",");
																			
																			// "${taskUser.ptCharge}"
																			$("#chargeUpt").val(chargeList); // 개발1팀 양초명, 개발1팀 양현수
																
																		
																		
																		</script>
																		
																	</div> <!-- 선택이되면 selected="" 
                                                                        data-select2-id="select2-data-id값(없으면 임의값)" 
                                                                        요게 바로 만들어지는 span과 연관된 것이다....
                                                                    -->
            														


                                                                        <div class="col-lg-3 col-sm-4 mb-3">
                                                                            <label for="example-select" class="form-label">분류</label>
                                                                            <select class="form-select" id="example-select" value="${taskUser.ptType}" name="ptType">
                                                                                <option>기획</option>
                                                                                <option>설계</option>
                                                                                <option>개발</option>
                                                                                <option>구현</option>
                                                                                <option>테스트</option> 
                                                                                <option>점검</option> 
                                                                         
                                                                            </select>
                                                                        </div>	
                                                                       	<script>
																			// 선택자
																			$("[name=ptType]").val("${taskUser.ptType}");
																			console.log("${taskUser.ptType}");
																		
																		
																		</script>

                                                                        
                                                                        <div class="col-lg-3 col-sm-4 mb-3">
                                                                            <label for="example-select" class="form-label">진행상태</label>
                                                                            <select class="form-select" id="example-select" value="${taskUser.ptStatus}" name="ptStatus">
                                                                                <option>진행 전</option>
                                                                                <option>진행 중</option>
                                                                                <option>보류</option>
                                                                                <option>완료</option>
                                                    
                                                                            </select>
                                                                        </div>
                                                                       	<script>
																			// 선택자
																			$("[name=ptStatus]").val("${taskUser.ptStatus}");
																			console.log("${taskUser.ptStatus}");
																		
																		
																		</script>

                                                                    </div>
            														
            														 <div class="mb-3">
		                                                                <label for="example-textarea" class="form-label">내용</label>
		                                                                <textarea class="form-control" id="example-textarea" rows="15" name="ptContent" readonly>${taskUser.ptContent} </textarea>
		                                                            </div>	<hr>		
            
                                                       
                                                                    <div id="btnList" class="mb-3 text-center" style="display: flex; justify-content: space-between;">
                                                                       
                                                                       <c:if test="${taskUser.uiId eq user_info.uiId}">
                                                                            <button class="btn btn-secondary" 
                                                                            		type="button" id="delBtn">삭제</button>
                                                                            
                                                                            <button class="btn btn-info" 
                                                                            		id="uptBtn" type="button">수정</button>
                                                                        </c:if>
                                                                                                                
                      
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
                        </div>
				<!-- container -->
					
                </div>
				<!-- content -->
		
		<jsp:include page="../include/rightBar_footer.jsp" 
					flush="true"/>
		
		  	</div>
       </div><!-- End Wrapper -->
                                          
		<!-- 이거 다음은 script 영역이다. 이게 끝 -->

	

        <script>
            $("option").attr("disabled", "disabled"); // 처음에 selected 되지않은 것들로 수정할 수 없도록
            


            $("[name=ptTitle]").change(function(){
                if($(this).val().length>30){
                    alert("제목은 최대 30자까지 작성가능합니다.");
                    $(this).val($(this).val().substring(0,29));
                }
            });
            
            $("[name=ptStartdate]").change(function(){
        	
        	    if($("[name=ptStartdate]").val()>$("[name=ptDuedate]").val() && $("[name=ptDuedate]").val()!=""){
        	        alert("시작일은 마감일보다 이후로 설정할 수 없습니다.");
        	        $(this).val('');
        	    }
        	});
        	
        	$("[name=ptDuedate]").change(function(){
        	 
        	    if($("[name=ptStartdate]").val()>$("[name=ptDuedate]").val()){
        	        alert("마감일은 시작일보다 이전으로 설정할 수 없습니다.");
        	        $(this).val('');
        	    }
        	});


            // .on("click")이 .click() 보다 메모리를 덜 먹고 동적으로 생성되는 요소들이 잘 작동
            // .on('click', @@, function) 으로 처리하는 경우 중복 클릭되는 문제 => stopImmediatePropagation() 로 해결  // 참고 링크: https://velog.io/@heeboventure/jQuery-click-%EC%9D%B4%EB%B2%A4%ED%8A%B8-%EC%A4%91%EB%B3%B5-%EB%B0%9C%EC%83%9D-%EB%AC%B8%EC%A0%9C-%ED%95%B4%EA%B2%B0
                // 현재 이벤트가 상위뿐 아니라 현재 레벨에 걸린 다른 이벤트도 동작하지않도록 중단 
                // jQuery 클릭 이벤트 시 여러 번 실행되는 경우: 버블링(하위 요소를 누르면 상위도 클릭되는) 현상 떄문에

            $("#btnList").on('click','#uptBtn',function(e){
                e.stopImmediatePropagation();
                $("input, textarea").not("#writer, #chargeView").removeAttr("readonly");
                $("option").removeAttr("disabled");
                $(this).text("수정완료").attr("id", "uptSuccessBtn"); 
                
            })
            
             $('#listBtn').on('click',function(){
               location.href="${path}/task.do?method=list";
            })

            $(document).on("click", "#uptSuccessBtn",function(e){
                // 수정 전, 유효성 체크
                if($("[name=ptTitle]").val().trim()==""){
                    alert("제목을 입력해주세요.");
                    return false;
                }

               
                if($("[name=ptContent]").val().trim()==""){
                    alert("내용을 입력해주세요.");
                    return false;
                }

                $("form").submit();
                $("input, textarea").attr('readonly', true);
                $("option").not(":selected").attr("disabled", "disabled");
                $(this).text("수정").attr("id", "uptBtn");
            })

         
            
			// 삭제 버튼
            $("#delBtn").click(function(){
                let pw = prompt("삭제를 원하시면 비밀번호를 입력하세요.");
                console.log(typeof(pw));

                $.ajax({
                    url : "${path}/pwchk.do",
                    type : "get",
                    dataType : "json",
                    data : "pw="+pw,
                    success : function(data){
                        
                        let result = data.result;
                        console.log(result)
                        
                        if(result == 1){
                            if(confirm("삭제를 진행하시겠습니까?")){
                            location.href="${path}/taskDel.do";
                        }

                        }else{
                            alert("비밀번호가 일치하지않습니다.")
                            return false;
                        }
                    }
                
                });


            })
            
       		
            


        </script>

	 

    </body>
</html>


     
