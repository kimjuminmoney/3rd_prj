<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="../admin_include/include_head.jsp"></jsp:include>
<!-- Custom styles for this page -->
<link href="http://localhost/daitdayoung/common/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">


<title>회원관리</title>
<style type="text/css">
	.table th:nth-child(1) {
		width: 800px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(2) {
		width: 200px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(3) {
		width: 150px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(4) {
		width: 100px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(5) {
		width: 75px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(6) {
		width: 75px; /* 첫 번째 열의 너비 설정 */
	}
</style>
<script type="text/javascript">
$(function(){
	$("#modBtn").click(function(){
		   var param={uiName: $("#nameFrm").val(),
				   	uiBirth: $("#birthFrm").val(),
				   	uiId: $("#uiId").val()}
		   $.ajax({
			   url:"modstu.do",
			   type:"GET",
			   data: param,
			   dataType:"json",
			   error:function( xhr ){
				   alert( xhr.status );
			   },
			   success:function(jsonObj){
				   var cnt = jsonObj.cnt;
				   if(cnt=='1'){
					   alert("학생회원정보가 수정되었습니다.");
					   location.reload();
				   }else{
					   alert("학생회원정보가 수정되지 않았습니다. 다시 한번 시도해주세요.");
				   }
			   }//success
		   });//ajax
	   });//click
});//ready
</script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- sidebar -->
        <jsp:include page="../admin_include/include_sidebar.jsp"></jsp:include>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- topbar -->
        		<jsp:include page="../admin_include/include_topbar.jsp"></jsp:include> 

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div>
                    	<h1 class="h3 mb-2 text-gray-800">학생회원 상세정보</h1>
                    	<hr style="background-color:#1CC88A; border-width: 2px;">
                    </div>
                    <div id="userDetail" style="width:1000px; margin: 0 auto; margin-top: 100px; margin-bottom: 30px;
                     display: grid; grid-template-columns: 1fr 1fr;">
		                <div id="udFrm" style="width:450px; margin: 0 auto; margin-bottom: 30px;">
			                <label class="form-label">아이디</label>
							<input type="text" id="idFrm" class="form-control" value="${ requestScope.uiId }" disabled readonly><br/>
			                <label class="form-label">가입일</label>
							<input type="text" id="joinFrm" class="form-control" value="${ requestScope.uiJoindate }" disabled readonly><br/>
						</div>
						<div id="udFrm2" style="width:450px; margin: 0 auto; margin-bottom: 30px;">	
			                <label class="form-label">이름</label>
							<input type="text" id="nameFrm" name="name" value="${ requestScope.uiName }" class="form-control"><br/>
			                <label class="form-label">생년월일</label>
							<input type="text" id="birthFrm" name="birth" value="${ requestScope.uiBirth }" class="form-control"><br/>
							<input type="hidden" id="uiId" value="${ param.uiId }" name="uiId">
		                </div>
						<div style="margin-top: 10px; margin-left: 25px">
					  		<button id="modBtn" type="button" class="btn btn-outline-success">수정</button>
					  		<button type="button" class="btn btn-outline-danger">탈퇴</button>
						</div>
                    </div>

	                <hr style="background-color:#1CC88A; width:1000px; margin: 0 auto; margin-bottom: 50px">
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4" style="width:1000px; margin: 0 auto;">
                        <div class="card-header py-3">
							<div class="btn-group" role="group" aria-label="Basic outlined example">
								강좌
							</div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>신청강좌</th>
                                            <th>신청날짜</th>
                                            <th>강사명</th>
                                            <th>진도율</th>
                                            <th>시험</th>
                                            <th>수료</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="detailStu" items="${ requestScope.detailStuList }">
                                        <tr>
                                            <td><c:out value="${ detailStu.couName }"/></td>
                                            <td><c:out value="${ detailStu.registrationDate }"/></td>
                                            <td><c:out value="${ detailStu.insName }"/></td>
                                            <td><c:out value="${ detailStu.progressRate / detailStu.lecCnt * 100 }"/>%</td>
                                            <td><c:out value="${ detailStu.examStatus }"/></td>
                                            <td><c:out value="${ detailStu.completionStatus }"/></td>
                                        </tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
        	<jsp:include page="../admin_include/include_footer.jsp"></jsp:include>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="http://localhost/daitdayoung/common/vendor/jquery/jquery.min.js"></script>
    <script src="http://localhost/daitdayoung/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    

    <!-- Core plugin JavaScript-->
    <script src="http://localhost/daitdayoung/common/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="http://localhost/daitdayoung/common/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="http://localhost/daitdayoung/common/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="http://localhost/daitdayoung/common/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="http://localhost/daitdayoung/common/js/demo/datatables-demo.js"></script>

</body>

</html>