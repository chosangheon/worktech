<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>메일작성</title>


<!-- CSS Libraries -->
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/summernote/summernote-bs4.css">
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/jquery-selectric/selectric.css">
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">

<script async="async" src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-94034622-3');
</script>
</head>
<body>
<c:import url="../common/headerUser.jsp" />

	<!-- Main Content -->
	
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<div class="section-header-back">
							<a href="features-posts.html" class="btn btn-icon"><i
								class="fas fa-arrow-left"></i></a>
						</div>
						<h1>메일 작성</h1>
						<div class="section-header-breadcrumb">
							<div class="breadcrumb-item">
								<a href="#">메일함</a>
							</div>
							<div class="breadcrumb-item">새로운 메일 작성</div>
						</div>
					</div>

					<div class="section-body">
						<h2 class="section-title">새로운 메일작성</h2>
						<p class="section-lead">새로운 메일을 작성하실 수 있습니다.</p>

						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h4>메일 작성</h4>

									</div>


									<!--                   	<div class="card-body"> -->
									<div class="row">
										<div class="col-md-2">
											<div class="card">
												<div class="card-body">
													<div class="card-header">
														<h6 class="card-title">메뉴</h6>


													</div>
													<div class="card-body p-0">
														<ul class="nav nav-pills flex-column">
															<li class="nav-item active"><a href="#"
																class="nav-link"> <i class="fas fa-inbox"></i> 수신메일함
<!-- 																	<span class="badge bg-primary float-right"> -->
<!-- 																		알람 -->
<!-- 																</span> -->
															</a></li>
															<li class="nav-item"><a href="#" class="nav-link">
																	<i class="far fa-envelope"></i> 보낸메일함
															</a></li>
															<li class="nav-item"><a href="#" class="nav-link">
																	<i class="far fa-star"></i> 중요메일함
															</a></li>
															<li class="nav-item"><a href="#" class="nav-link">
																	<i class="far fa-trash-alt"></i> 휴지통
															</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>

										<div class="col-md-10">
											<div class="card">
												<div class="card-body">
													<div class="form-group row mb-4">
														<label
															class="col-form-label text-md-right col-12 col-md-2 col-lg-1">제목</label>
														<div class="col-sm-12 col-md-9">
															<input type="text" name="totitle" placeholder="메일 제목을 입력하세요." class="form-control">
														</div>
													</div>
													<div class="form-group row mb-4">
														<label
															class="col-form-label text-md-right col-12 col-md-2 col-lg-1">이메일</label>
														<div class="col-sm-12 col-md-9">
															<input type="text" name="tomail" placeholder="받는 사람 메일을 입력하세요."  class="form-control">
														</div>
													</div>
													<div class="form-group row mb-4">
														<label
															class="col-form-label text-md-right col-12 col-md-2 col-lg-1">내용</label>
														<div class="col-sm-12 col-md-9">
															<textarea class="summernote" name="tocontent" placeholder="메일 내용을 입력해주세요"></textarea>
														</div>
													</div>
													<div class="form-group row mb-4">
														<label
															class="col-form-label text-md-right col-12 col-md-3 col-lg-1">첨부파일</label>
														<div class="col-sm-12 col-md-9">
															<input type="file" class="form-control">
														</div>
													</div>
													<div class="form-group row mb-4">
														<label
															class="col-form-label text-md-right col-12 col-md-3 col-lg-1"></label>
														<div class="col-sm-12 col-md-9">
															<input type="submit" class="btn btn-primary" value="메일 보내기" class="">
															<button class="btn btn-primary">취소</button>
														</div>
													</div>
												</div>
												<!-- 										</div> -->
											</div>
										</div>

										<!--                   		</div> -->

									</div>
								</div>
							</div>
						</div>

					</div>

				</section>
			</div>
		</form>
			<!-- footer -->
			


	<!-- JS Libraies -->

	<script
		src="../../../resources/dist/assets/modules/summernote/summernote-bs4.js"></script>
	<script
		src="../../../resources/dist/assets/modules/jquery-selectric/jquery.selectric.min.js"></script>
	<script
		src="../../../resources/dist/assets/modules/upload-preview/assets/js/jquery.uploadPreview.min.js"></script>
	<script
		src="../../../resources/dist/assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

	<!-- Page Specific JS File -->
	<script
		src="../../../resources/dist/assets/js/page/features-post-create.js"></script>

	
</body>
</html>