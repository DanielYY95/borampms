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

	<!-- Footer Start -->
	<footer class="footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<script>
						document.write(new Date().getFullYear())
					</script>
					© Hyper - Coderthemes.com
				</div>
				<div class="col-md-6">
					<div class="text-md-end footer-links d-none d-md-block">
						<a href="javascript: void(0);">About</a>
						<a href="javascript: void(0);">Support</a>
						<a href="javascript: void(0);">Contact Us</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer end -->


	<!-- Right Sidebar -->
	<div class="end-bar">
		<div class="rightbar-title">
			<a href="javascript:void(0);" class="end-bar-toggle float-end">
				<i class="dripicons-cross noti-icon"></i>
			</a>
			<h5 class="m-0">설정</h5>
		</div>

		<div class="rightbar-content h-100" data-simplebar>
			<div class="p-3">
				<!-- Settings -->
				<h5 class="mt-3">색깔 설정</h5>
				<hr class="mt-1"/>
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox"
						name="color-scheme-mode" value="light" id="light-mode-check" checked>
					<label class="form-check-label" for="light-mode-check">밝은 배경</label>
				</div>
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox"
						name="color-scheme-mode" value="dark" id="dark-mode-check"/>
					<label class="form-check-label" for="dark-mode-check">검은 배경</label>
				</div>

				<!-- Left Sidebar-->
				<h5 class="mt-4">좌측 배경</h5>
				<hr class="mt-1" />
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="theme"
						value="default" id="default-check"/>
					<label class="form-check-label" for="default-check">기본값</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="theme"
						value="light" id="light-check" checked/>
					<label class="form-check-label" for="light-check">밝음</label>
				</div>

				<div class="form-check form-switch mb-3">
					<input class="form-check-input" type="checkbox" name="theme"
						value="dark" id="dark-check"/>
					<label class="form-check-label" for="dark-check">검은</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact"
						value="fixed" id="fixed-check" checked/>
					<label class="form-check-label" for="fixed-check">고정</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact"
						value="condensed" id="condensed-check"/>
					<label class="form-check-label" for="condensed-check">압축</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact"
						value="scrollable" id="scrollable-check"/>
					<label class="form-check-label" for="scrollable-check">스크롤</label>
				</div>

				<div class="d-grid mt-4">
					<button class="btn btn-primary" id="resetBtn">설정 초기화</button>
				</div>
			</div>
			<!-- end padding-->

		</div>
	</div>
	<!-- /End-bar -->
	
	<div class="rightbar-overlay"></div>

	 <!-- bundle --> 
	 <script src="${path}/tools/project_assets/js/vendor.min.js"></script>
	 <script src="${path}/tools/project_assets/js/app.min.js"></script>
  

</html>