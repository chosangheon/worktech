<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>메일 상세보기</title>
<!-- CSS Libraries -->
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/summernote/summernote-bs4.css">
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/jquery-selectric/selectric.css">
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
<!-- Start GA -->
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
	
	<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<div class="section-header-back">
							<a href="features-posts.html" class="btn btn-icon"><i
								class="fas fa-arrow-left"></i></a>
						</div>
						<h1>메일 상세보기</h1>
						<div class="section-header-breadcrumb">
							<div class="breadcrumb-item">
								<a href="#">메일함</a>
							</div>
							<div class="breadcrumb-item">메일 상세보기</div>
						</div>
					</div>

					<div class="section-body">
						<h2 class="section-title">메일 상세보기</h2>

						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h4>메일 내용</h4>
									</div>

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
																	<!-- 																		알람 --> <!-- 																</span> -->
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
											<div class="read-content">
                                                    <div class="media pt-3">
                                                        <img class="mr-4 rounded-circle" alt="image" src="./images/avatar/1.jpg">
                                                        <div class="media-body">
                                                            <h5 class="text-primary">강건강</h5>
                                                            <p class="mb-0">2021-12-26</p>
                                                        </div>
                                                        
                                                        <a href="javascript:void()" class="text-muted "><i
                                                                class="fa fa-reply"></i> </a>
                                                        <a href="javascript:void()" class="text-muted ml-3"><i
                                                                class="fa fa-long-arrow-right"></i> </a>
                                                        <a href="javascript:void()" class="text-muted ml-3"><i
                                                                class="fa fa-trash"></i></a>
                                                    </div>
                                                    <hr>
                                                    <div class="media mb-4 mt-5">
                                                        <div class="media-body">
                                                            <h5 class="my-1 text-primary">12월 26일 결제 서류입니다.</h5>
                                                        </div>
                                                    </div>
                                                    <div class="read-content-body">
                                                        <h5 class="mb-5">Hi,Ingredia,</h5>
                                                        <p><strong>Ingredia Nutrisha,</strong> A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture</p>
                                                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for
                                                            the far World of Grammar. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.
                                                        </p>
                                                        <p>Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut
                                                            metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum
                                                            rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar,</p>
                                                        <h5 class="pt-3">Kind Regards</h5>
                                                        <p>Mr Smith</p>
                                                        <hr>
                                                    </div>
                                                    <div class="read-content-attachment">
                                                        <h6><i class="fa fa-download mb-2"></i> 첨부파일
                                                            <span>(1)</span></h6>
                                                        <div class="row attachment">
                                                            <div class="col-auto">
                                                                <a href="javascript:void()" class="text-muted">My-Photo.ppt</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                </div>
											
											</div>
											
                                                    </div>
											<div class="text-right">
                                                    <button class="btn btn-primary btn-sl-sm mb-5" type="button">답장하기</button>
                                                    <button class="btn btn-primary btn-sl-sm mb-5" type="button">삭제하기</button>
                                            </div>
											<!--                   		</div> -->

<!-- 										</div> -->
									</div>
								</div>
							</div>
						</div>
				</section>
			</div>	
			<!-- footer -->
			
			<!-- General JS Scripts -->
	<script src="../../../resources/dist/assets/modules/jquery.min.js"></script>
	<script src="../../../resources/dist/assets/modules/popper.js"></script>
	<script src="../../../resources/dist/assets/modules/tooltip.js"></script>
	<script
		src="../../../resources/dist/assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="../../../resources/dist/assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="../../../resources/dist/assets/modules/moment.min.js"></script>
	<script src="../../../resources/dist/assets/js/stisla.js"></script>

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

	<!-- Template JS File -->
	<script src="../../../resources/dist/assets/js/scripts.js"></script>
	<script src="../../../resources/dist/assets/js/custom.js"></script>
			
</body>
</html>