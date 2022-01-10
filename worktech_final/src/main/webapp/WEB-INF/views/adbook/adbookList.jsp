<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>사내 주소록</title>
<style>
h4.section-title {
	top: -13px;
}

h4.section-title:hover {
	cursor: pointer;
	color: #67d4ef;
}

#searchBtn {
	height: 100%;
}

.paging-area {
	display: flex;
	justify-content: center;
}

.select {
	border: none;
	background: none;
	font-weight: bold;
	color: #495057;
}
</style>
</head>
<body>
	<c:import url="../common/headerUser.jsp" />

	<!-- Main Content -->
	<div class="main-content">
		<section class="section">
			<div class="section-header">
				<h1>주소록</h1>
				<div class="section-header-breadcrumb">
					<div class="breadcrumb-item active"><a href="#">주소록</a></div>
					<div class="breadcrumb-item">사내 주소록</div>
				</div>
			</div>

			<div class="section-body">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<c:url var="adbookList" value="adbookList.ab" />
								<h4 class="section-title"
									onclick="location.href='${ adbookList }'">사내 주소록</h4>
								<div class="card-header-form">

									<!-- 사내 주소록 검색 -->
									<c:url var="searchAdbook" value="searchAdbook.ab">
										<c:param name="page" value="${ pi.currentPage }" />
									</c:url>
									<form action="${ searchAdbook }">
										<div class="input-group">
											<input type="text" class="form-control" name="searchValue" placeholder="이름 · 전화번호 · 이메일">
											<div class="input-group-btn">
												<button class="btn btn-primary" id="searchBtn">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</form>

								</div>
							</div>
							<div class="card-body p-0">
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>이름</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th><select class="select" name="dept" id="dept"
													onchange="selectAdbook(this)">
														<option selected disabled>부서</option>
														<option value="200">경영지원부</option>
														<option value="300">전략기획부</option>
														<option value="400">인사부</option>
														<option value="500">기술영업부</option>
														<option value="600">개발부</option>
														<option value="700">디자인부</option>
														<option value="800">고객관리부</option>
														<option value="900">품질관리부</option>
												</select></th>
												<th><select class="select" name="job" id="job"
													onchange="selectAdbook(this)">
														<option selected disabled>직책&nbsp;&nbsp;&nbsp;</option>
														<option>사장</option>
														<option>팀장</option>
														<option>부장</option>
														<option>과장</option>
														<option>대리</option>
														<option>주임</option>
														<option>사원</option>
												</select></th>
												<th>입사일</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="a" items="${ list }">
												<tr>
													<td><c:if test="${ a.pUrl eq null }">
															<img alt="image" src="resources/dist/assets/img/avatar/avatar-5.png" class="rounded-circle" width="35">
														</c:if>
														<c:if test="${ a.pUrl ne null }">
															<!-- 사진 경로 후에 수정 -->
															<img alt="image">
														</c:if>
														&nbsp;&nbsp;&nbsp;${ a.name }
													</td>
													<td>${ a.phone }</td>
													<td>${ a.email }</td>
													<td>${ a.dName }</td>
													<td>${ a.jobGrade }</td>
													<td>${ a.hireDate }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<br clear="all">
									<!-- 주소록 페이지 이동 버튼 -->
									<div class="card-body paging-area">
										<div class="buttons">
											<nav aria-label="Page navigation example">
												<ul class="pagination">
													<c:if test="${ pi.currentPage <= 1 }">
														<li class="page-item disabled">
															<a class="page-link" aria-label="Previous"> <i class="fas fa-angle-double-left"></i></a>
														</li>
														<li class="page-item disabled">
															<a class="page-link" aria-label="Previous"> <i class="fas fa-angle-left"></i></a>
														</li>
													</c:if>

													<c:if test="${ pi.currentPage > 1 }">
														<c:url var="start" value="${ loc }">
															<c:param name="page" value="1" />
															<c:param name="searchValue" value="${ searchValue }" />
															<c:param name="selectCategory" value="${ selectCategory }" />
															<c:param name="selectValue" value="${ selectValue }" />
														</c:url>
														<li class="page-item">
															<a class="page-link" href="${ start }" aria-label="Previous"> <i class="fas fa-angle-double-left"></i></a>
														</li>
														<c:url var="before" value="${ loc }">
															<c:param name="page" value="${ pi.currentPage - 1 }" />
															<c:param name="searchValue" value="${ searchValue }" />
															<c:param name="selectCategory" value="${ selectCategory }" />
															<c:param name="selectValue" value="${ selectValue }" />
														</c:url>
														<li class="page-item">
															<a class="page-link" href="${ before }" aria-label="Previous"> <i class="fas fa-angle-left"></i></a>
														</li>
													</c:if>

													<c:forEach var="p" begin="${ pi.startPage }"
														end="${ pi.endPage }">
														<c:if test="${ p eq pi.currentPage }">
															<li class="page-item disabled"><a class="page-link">${ p }</a></li>
														</c:if>

														<c:if test="${ p ne pi.currentPage }">
															<c:url var="pagination" value="${ loc }">
																<c:param name="page" value="${ p }" />
																<c:param name="searchValue" value="${ searchValue }" />
																<c:param name="selectCategory" value="${ selectCategory }" />
																<c:param name="selectValue" value="${ selectValue }" />
															</c:url>
															<li class="page-item">
																<a class="page-link" href="${ pagination }">${ p }</a>
															</li>
														</c:if>
													</c:forEach>

													<c:if test="${ pi.currentPage >= pi.maxPage }">
														<li class="page-item disabled">
															<a class="page-link" aria-label="Next"> <i class="fas fa-angle-right"></i></a>
														</li>
														<li class="page-item disabled">
															<a class="page-link" aria-label="Next"> <i class="fas fa-angle-double-right"></i></a>
														</li>
													</c:if>

													<c:if test="${ pi.currentPage < pi.maxPage }">
														<c:url var="after" value="${ loc }">
															<c:param name="page" value="${ pi.currentPage + 1 }" />
															<c:param name="searchValue" value="${ searchValue }" />
															<c:param name="selectCategory" value="${ selectCategory }" />
															<c:param name="selectValue" value="${ selectValue }" />
														</c:url>
														<li class="page-item">
															<a class="page-link" href="${ after }" aria-label="Next"> <i class="fas fa-angle-right"></i></a>
														</li>
														<c:url var="end" value="${ loc }">
															<c:param name="page" value="${ pi.maxPage }" />
															<c:param name="searchValue" value="${ searchValue }" />
															<c:param name="selectCategory" value="${ selectCategory }" />
															<c:param name="selectValue" value="${ selectValue }" />
														</c:url>
														<li class="page-item">
															<a class="page-link" href="${ end }" aria-label="Next"> <i class="fas fa-angle-double-right"></i></a>
														</li>
													</c:if>
												</ul>
											</nav>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<c:import url="../common/footer.jsp" />

	<script>
      	function selectAdbook(value){
      		var type = $(value).attr('id');
      		var selected = $("#" + type + " option:selected").val();
      		
			if(type == 'dept'){
				location.href = "adbookList.ab?selectCategory=" + type + "&selectValue=" + selected;
			} else if(type == 'job'){
				location.href = "adbookList.ab?selectCategory=" + type + "&selectValue=" + selected;
			}   		
      		
      	}
      </script>
</body>
</html>