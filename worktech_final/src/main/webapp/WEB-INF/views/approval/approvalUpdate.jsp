<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>새 결재 진행</title>
	
	<!-- jstree -->
	<link rel="stylesheet" href="resources/dist/themes/default/style.min.css" />
	
	<!-- CSS Libraries -->
	<link rel="stylesheet" href="resources/dist/assets/modules/summernote/summernote-bs4.css">
	<link rel="stylesheet" href="resources/dist/assets/modules/codemirror/lib/codemirror.css">
	<link rel="stylesheet" href="resources/dist/assets/modules/codemirror/theme/duotone-dark.css">
	<link rel="stylesheet" href="resources/dist/assets/modules/jquery-selectric/selectric.css">

	<style>
        .inputData {
            border: 1px #dff5fa solid;
            padding: 10px;
            border-radius: 5px;
            text-align: left;
        }
        	
		.section-header{
			padding: 20px, 35px;
			margin: -10px, -30px, 30px;
		}
		
		.container {
		  margin-top: 20px;
		}
		
		:disabled,
        input[type="text"]:disabled,
        input[type="date"]:disabled,
        input[type="number"]:disabled {
            background: #fdfdff;
        }		
		
	    .filebox .upload-name {
            display: inline-block;
            height: 40px;
            padding: 0 45px;
            vertical-align: middle;
            border: 1px solid #dff5fa;
            width: 86%;
            color: #999999;
            border-radius: 3px;
            background-color: #ffffff00;
        }
        
        .filebox label {
            color: #fff;
        }
        
        .filebox input[type="file"] {
            position: absolute;
            width: 0;
            height: 0;
            padding: 0;
            overflow: hidden;
            border: 0;
        }
            
	</style>
</head>

<body>
<c:import url="../common/headerUser.jsp" />
	<!-- Main Content -->
	<div class="main-content">
		<section class="section">
			<div class="section-header">
				<h1>결재 작성</h1>
				<div class="section-header-breadcrumb">
					<div class="breadcrumb-item active"><a href="#">전자 결재</a></div>
					<div class="breadcrumb-item">결재 수정</div>
				</div>
    		</div>
    		
			<form action="appupdate.ap" method="post" enctype="Multipart/form-data">
                <input type="hidden" name="page" value="${ page }">
				<input type="hidden" name="appNo" value="${ app.appNo }">			
			<div class="row">
				<div class="col-12 col-md-12 col-lg-12">
					<div class="card">
						<div class="card-header">
							<h4>결재 수정</h4>
						</div>
						<div class="card-body">
							<div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">문서 제목</label>
								<div class="col-sm-12 col-md-7">
									<input type="text" class="form-control" name="appTitle" value="${ app.appTitle }">
									<input type="hidden" name="flag" id="flag" value="0">
								</div>
                    		</div>
							<div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">결재 작성자</label>
								<div class="col-sm-12 col-md-7">
		                            <input type="text" class="form-control" disabled value="${ loginUser.name } ${loginUser.jobGrade} ">
		                            <input type="hidden" name="appWriter" value="${ loginUser.mNo }">
	                            </div>
                    		</div>    
                    		                		
	                    	<div class="form-group row mb-4">
	                      		<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">문서 첨부</label>
	                      		<div class="col-sm-12 col-md-7 ">
	                        		<input type="text" class="upload-name form-control" id="uploadName" value="" disabled>
	                      		</div>
	                      		<div class="filebox">
	                      			<label class="btn btn-info" for="file">문서선택</label>
	                      			<input type="file" name="reloadAppFile" id="file" class="ex_file" multiple="multiple" accept=".xlsx"> 
	                      		</div>
	                      	</div>
	                      	<div class="form-group row mb-4">
	                      		<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">첨부 문서</label>
	                      		<div class="col-sm-12 col-md-7 ">
	                      		<c:if test="${ !empty app.fileList.get(0).getFormName() }">
		                            	<c:forEach var="form" items="${ app.fileList }">
		                            		<div>
				                            	<i class="fas fa-save"></i>
				                                <a href="/resources/buploadFiles/${ form.getFormRname() }" download="${ form.getFormName() }">
													${ form.getFormName() }
												</a>
												&nbsp;<i class="fas fa-times deleteBtn" name="fileDelete"></i>
												<input type="hidden" name="formNo" value="${ form.getFormNo() }">
											</div><br>
										</c:forEach>
								</c:if>
								</div>
	                    	</div>
	                    	      	
	                    	<div class="form-group row mb-4">
	                      		<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">결재선</label>
	                      		<div class="col-sm-12 col-md-7">
	                       			<input type="text" class="form-control" id="appLiMemberName" name="appLiMemberName" value="${ app.appLiMemberName }">
	                       			<input type="hidden" class="form-control" id="appLiMember" name="appLiMember" value="${ app.appLiMember }">
	                     		</div>
	                     		<button type="button" class="btn btn-info" data-toggle="modal" data-target="#appLine">찾기</button>
	                    	</div>
	                    	<div class="form-group row mb-4">
	                      		<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">수신참조</label>
	                      		<div class="col-sm-12 col-md-7">
	                       			<input type="text" class="form-control" id="appRefMemberName" name="appRefMemberName" value="${ app.appRefMemberName }">
	                       			<input type="hidden" class="form-control" id="appRefMember" name="appRefMember" value="${ app.appRefMember }">
	                     		</div>
	                     		<button type="button" class="btn btn-info" data-toggle="modal" data-target="#appLine2">찾기</button>
	                    	</div>
	                    	
							<div class="form-group">
	                        	<label>작성 내용</label>
	                        		<div>
	                        			<textarea name="appContent" class="summernote" id="summernote">${ app.appContent }</textarea>
	                       			</div>
	                        </div>							
							</div>	                    	
	                        <div class="card-footer text-right">
	                        	<button class="btn btn-primary mr-1" type="submit">저장</button>
	                        	<c:url var="clist" value="approvalmain.ap"/>
	                        	<button class="btn btn-danger" type="reset" onclick="location.href='${ clist }'">취소</button>
	                        </div>
                  		</div>                  		
					</div>
				</div>
				</div>
				</form>
				</section> 
			</div>
	
 	<div class="modal fade" id="appLine" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">결재선 지정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          		</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
				            <div id="appline-tree" class="well col-sm-3"></div>
			 	            <div id="appline-result" class="col-sm-6">결재자</div> 
		          		</div>
		          	</div>
		        </div>
		        <div class="modal-footer">
		        	<button type="button" class="btn btn-default" data-dismiss="modal" id="save">선택</button>
		          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		        </div>
			</div>
		</div>
	</div>
	
 	<div class="modal fade" id="appLine2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">결재선 지정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          		</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
				            <div id="appline-tree2" class="well col-sm-3"></div>
			 	            <div id="appline-result3" class="col-sm-6">결재자</div> 
		          		</div>
		          	</div>
		        </div>
		        <div class="modal-footer">
		        	<button type="button" class="btn btn-default" data-dismiss="modal" id="save">선택</button>
		          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		        </div>
			</div>
		</div>
	</div>	
	
	
	<!-- jstree -->
	<script src="resources/dist/libs/jquery.js"></script>
	<script src="resources/dist/jstree.min.js"></script>
	
    <!-- JS Libraies -->
	<script src="resources/dist/assets/modules/summernote/summernote-bs4.js"></script>
	<script src="resources/dist/assets/modules/codemirror/lib/codemirror.js"></script>
	<script src="resources/dist/assets/modules/codemirror/mode/javascript/javascript.js"></script>
	<script src="resources/dist/assets/modules/jquery-selectric/jquery.selectric.min.js"></script>
		
	<script>
	
//  결재자 지정
	var jsonData = [
		{
			id  : 100,
			text : "경영지원부",
			state : {
			selected  : false
		},
		children    : [
			{
				id  : 2,
				text : "OOO 팀장",
				icon : "resources/dist/themes/default/member.png",
				state : {
				selected  : false
				},  
			},
			{
				id  : 3,
				text : "XXX 대리",
				icon : "resources/dist/themes/default/member.png",
				state : {
				selected  : false
	        	},  
	      	}
	    ]
		
		}, 
		{
			id: 200,
		    text : "전략기획부",
	    	state : {
	     	selected : false
		},
	    	children : [
				{
					id  : 111111,
					text : "이시우 사원",
					icon : "resources/dist/themes/default/member.png",
					state : {
					selected  : false
					},  
				},
				{
					id  : 222222,
					text : "김도윤 주임",
					icon : "resources/dist/themes/default/member.png",
					state : {
					selected  : false
		        	},  
		      	}
	    	]
		},
		
		{
		    id  : 300,
		    text : "인사부",
		    state : {
			selected  : false
		},
			children    : [
			{
				id  : 6,
		        text : "",
		        state : {
				selected  : false
		        },  
			},
			{
		        id  : 7,
		        text : "Sub Folder 2",
		        state : {
		        selected  : false
		        },  
			}
			]
		}, 
		
		{
			id: 400,
		    text : "기술영업부",
		    state : {
		    selected : false
		},
		    children : [
				{
					id  : 333333,
					text : "조민준 사원",
					icon : "resources/dist/themes/default/member.png",
					state : {
					selected  : false
					},  
				},
				{
					id  : 444444,
					text : "박준우 대리",
					icon : "resources/dist/themes/default/member.png",
					state : {
					selected  : false
		        	},  
		      	}
		    ]
		},
		
		{
			id: 500,
			text : "개발부",
			state : {
			selected : false
		},
			children : []
		},
		{
			id  : 600,
			text : "디자인부",
			state : {
			selected  : false
			},
				children    : [
				{
					id  : 10,
					text : "Sub Folder 1",
					state : {
					selected  : false
					},  
				},
				{
					id  : 11,
					text : "Sub Folder 2",
					state : {
					selected  : false
					},  
				}
				]
		}, 
		
		{
			id: 700,
		    text : "고객관리부",
		    state : {
		    selected : false
		},
		    children : []
		},
		
		{
			id: 800,
			text : "품질관리부",
			state : {
			selected : false
		},
			children : [
				{
					id  : 555555,
					text : "하지호 과장",
					icon : "resources/dist/themes/default/member.png",
					state : {
					selected  : false
					},  
				},
				{
					id  : 666666,
					text : "김지아 부장",
					icon : "resources/dist/themes/default/member.png",
					state : {
					selected  : false
		        	},  
		      	},
				{
					id  : 777777,
					text : "이지유 팀장",
					icon : "resources/dist/themes/default/member.png",
					state : {
					selected  : false
		        	},  
		      	}
			]
		},
		{
			id  : 900,
			text : "미주영업부",
			state : {
			selected  : false
			},
				children    : [
				{
					id  : 16,
					text : "Sub Folder 1",
					state : {
					selected  : false
					},  
				},
				{
					id  : 17,
					text : "Sub Folder 2",
					state : {
					selected  : false
					},  
				}
				]
		}, 
		
	];

	$('#appline-tree')
	  .on('changed.jstree', function (e, data) {
	    var objNode = data.instance.get_node(data.selected);
	    $('#appline-result').html('결재자: <br/><strong>' + objNode.text+'</strong>');
	    $('#appLiMemberName').val(objNode.text);
	    $('input[name=appLiMemberName]').val(objNode.text);
 	    $('input[name=appLiMember]').val(objNode.id); 
	  })
	  .jstree({
	  core: {
	    data: jsonData
	  }
	});
	
	$('#appline-tree2')
	  .on('changed.jstree', function (e, data) {
	    var objNode = data.instance.get_node(data.selected);
	    $('#appline-result3').html('수신/참조자: <br/><strong>' + objNode.text+'</strong>');
	    $('#appRefMemberName').val(objNode.text);
	    $('input[name=appRefMemberName]').val(objNode.text);
 	    $('input[name=appRefMember]').val(objNode.id); 
	  })
	  .jstree({
	  core: {
	    data: jsonData
	  }
	});
	  
	
    $(function () {
        var now = new Date();
        var year = now.getFullYear();
        var month = now.getMonth() + 1;
        var date = now.getDate();
        $('input[name=bDate]').val(year + '-' + month + '-' + date);
    });
    
    $("#file").on('change', readInputFile);

    // 파일 업로드
    function readInputFile(e) {
        var fileInput = document.getElementsByClassName("ex_file");
        var name = document.getElementById("uploadName").value;
        var area = document.getElementById("uploadName");

        var sel_files = [];

        sel_files = [];

        var files = e.target.files;
        var fileArr = Array.prototype.slice.call(files);

        fileArr.forEach(function (f) {
            if (files.length < 4) {
                sel_files.push(f);
                var reader = new FileReader();
                reader.readAsDataURL(f);
                area.value = "";

                for (var i = 0; i < fileInput.length; i++) {
                    if (fileInput[i].files.length > 0) {
                        for (var j = 0; j < fileInput[i].files.length; j++) {
                            if (j == 0) {
                                area.value += fileInput[i].files[j].name;
                            } else {
                                area.value += ", " + fileInput[i].files[j].name;
                            }
                        }
                    }
                }
            }
        })
        if (files.length > 4) {
            alert("파일은 최대 3개까지 업로드 가능합니다.");
        }
    }
    
    $(document).on("click", "i[name='fileDelete']", function() {
    	var fullDiv = $(this).parent();
    	
    	$('#flag').val('1');
    	
    	fullDiv.html('');
    	
	})    
  </script>
  
	<!-- JS Libraies -->
	<script src="resources/dist/assets/modules/summernote/summernote-bs4.js"></script>
	<script src="resources/dist/assets/modules/codemirror/lib/codemirror.js"></script>
	<script src="resources/dist/assets/modules/codemirror/mode/javascript/javascript.js"></script>
	<script src="resources/dist/assets/modules/jquery-selectric/jquery.selectric.min.js"></script>
	
	

	
</body>
</html>