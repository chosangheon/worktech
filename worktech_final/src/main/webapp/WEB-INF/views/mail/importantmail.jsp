<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>중요편지 함</title>

<!-- CSS Libraries -->
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/summernote/summernote-bs4.css">
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/jquery-selectric/selectric.css">
<link rel="stylesheet"
	href="../../../resources/dist/assets/modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">


<!-- Start GA -->
<script async="async" src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
</head>
<body>
<c:import url="../common/headerUser.jsp" />
<!-- Main Content -->
			<div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>수신 메일함</h1>
            <div class="section-header-button">
              <a href="features-post-create.html" class="btn btn-primary">메일 보내기</a>
            </div>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">메일함</a></div>
            </div>
          </div>
          <div class="section-body">
            <h2 class="section-title">메일함</h2>
            <p class="section-lead">
              	메일 삭제, 중요메일 관리를 할 수 있습니다.
            </p>

            <div class="row">
              <div class="col-12">
                <div class="card mb-0">
                  <div class="card-body">
                    <ul class="nav nav-pills">
                      <li class="nav-item">
                        <a class="nav-link" href="#">수신메일함 <span class="badge badge-primary">0</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">발신메일함 <span class="badge badge-primary">0</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link active" href="#">중요메일함 <span class="badge badge-white">0</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">휴지통 <span class="badge badge-primary">0</span></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>수신 메일함</h4>
                  </div>
                  <div class="card-body">
                    <div class="float-left">
                      <select class="form-control selectric">
                      	<option>전체선택                </option>
                        <option>중요메일함으로 보내기</option>
                        <option>휴지통으로 보내기</option>
                      </select>
                    </div>
                    

                    <div class="clearfix mb-3"></div>

                    <div class="table-responsive">
                      <table class="table table-striped">
                        <tr>
                          <th class="text-center pt-2">
                            <div class="custom-checkbox custom-checkbox-table custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                              <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                            </div>
                          </th>
                          <th>제목</th>
                          <th>발신자</th>
                          <th>날짜</th>
                          <th>첨부파일</th>
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-2">
                              <label for="checkbox-2" class="custom-control-label">&nbsp;</label>
                            </div>
                          </td>
                          <td>12-26 결제문서 입니다.
                            <div class="table-links">
                              <a href="#">상세보기</a>
                              <div class="bullet"></div>
                              <a href="#" class="text-danger">휴지통</a>
                            </div>
                          <td>
                            <a href="#">
                              <img alt="image" src="assets/img/avatar/avatar-5.png" class="rounded-circle" width="35" data-toggle="title" title=""> <div class="d-inline-block ml-1">강건강</div>
                            </a>
                          </td>
                          <td>2021-12-26</td>
                          <td>o</td>
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-3">
                              <label for="checkbox-3" class="custom-control-label">&nbsp;</label>
                            </div>
                          </td>
                          <td>12-25 결제문서 입니다. 수정본입니다.
                            <div class="table-links">
                              <a href="#">상세보기</a>
                              <div class="bullet"></div>
                              <a href="#" class="text-danger">휴지통</a>
                            </div>
                          </td>
                          <td>
                            <a href="#">
                              <img alt="image" src="assets/img/avatar/avatar-5.png" class="rounded-circle" width="35" data-toggle="title" title=""> <div class="d-inline-block ml-1">강건강</div>
                            </a>
                          </td>
                          <td>2021-12-25</td>
                          <td>o</td>
                          
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-4">
                              <label for="checkbox-4" class="custom-control-label">&nbsp;</label>
                            </div>
                          </td>
                          <td>12-25 결제문서 입니다.
                            <div class="table-links">
                              <a href="#">상세보기</a>
                              <div class="bullet"></div>
                              <a href="#" class="text-danger">휴지통</a>
                            </div>
                          </td>
                          <td>
                            <a href="#">
                              <img alt="image" src="assets/img/avatar/avatar-5.png" class="rounded-circle" width="35" data-toggle="title" title=""> <div class="d-inline-block ml-1">강건강</div>
                            </a>
                          </td>
                          <td>2021-12-25</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-5">
                              <label for="checkbox-5" class="custom-control-label">&nbsp;</label>
                            </div>
                          </td>
                          <td>10-20 결제문서입니다.
                            <div class="table-links">
                              <a href="#">상세보기</a>
                              <div class="bullet"></div>
                              <a href="#" class="text-danger">휴지통</a>
                            </div>
                          </td>
                          <td>
                            <a href="#">
                              <img alt="image" src="assets/img/avatar/avatar-5.png" class="rounded-circle" width="35" data-toggle="title" title=""> <div class="d-inline-block ml-1">강건강</div>
                            </a>
                          </td>
                          <td>2021-10-20</td>
                          <td>o</td>
                        </tr>
                        <tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                              <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                            </div>
                          </td>
                          <td>10-19 결제 문서입니다.
                            <div class="table-links">
                              <a href="#">상세보기</a>
                              <div class="bullet"></div>
                              <a href="#" class="text-danger">휴지통</a>
                            </div>
                          </td>
                          <td>
                            <a href="#">
                              <img alt="image" src="assets/img/avatar/avatar-5.png" class="rounded-circle" width="35" data-toggle="title" title=""> <div class="d-inline-block ml-1">강건강</div>
                            </a>
                          </td>
                          <td>2021-10-19</td><!-- 날짜 -->
                        </tr>
                      </table>
                    </div>
                    <div class="float-right">
                      <nav>
                        <ul class="pagination">
                          <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span>
                              <span class="sr-only">Previous</span>
                            </a>
                          </li>
                          <li class="page-item active">
                            <a class="page-link" href="#">1</a>
                          </li>
                          <li class="page-item">
                            <a class="page-link" href="#">2</a>
                          </li>
                          <li class="page-item">
                            <a class="page-link" href="#">3</a>
                          </li>
                          <li class="page-item">
                            <a class="page-link" href="#">4</a>
                          </li>
                          <li class="page-item">
                            <a class="page-link" href="#">5</a>
                          </li>
                          <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                              <span aria-hidden="true">&raquo;</span>
                              <span class="sr-only">Next</span>
                            </a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
		<!-- footer -->
		<c:import url="../common/footer.jsp" />


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
	<script src="../../../resources/dist/assets/js/page/features-post-create.js"/>

</body>
</html>