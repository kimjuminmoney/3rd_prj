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
<title>공지사항</title>
<style type="text/css">
	.table th:nth-child(1) {
		width: 50px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(2) {
		width: 50px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(3) {
		width: 1000px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(4) {
		width: 100px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(5) {
		width: 100px; /* 첫 번째 열의 너비 설정 */
	}
</style>
<script type="text/javascript">
	$(function(){
	   
		$("#addNoticeBtn").click(function(){
			location.href="addNotice.do";
		});//click
		
		$('.my-datatable').DataTable();
		
	});//ready
	
	function showNotTable() {
	    var notTable = document.getElementById("notTable");
	    var cnTable = document.getElementById("cnTable");
	    
	    notTable.style.display = "block";
	    cnTable.style.display = "none";
	}//showNotTable
	
	function showCnTable() {
	    var notTable = document.getElementById("notTable");
	    var cnTable = document.getElementById("cnTable");
	    
	    notTable.style.display = "none";
	    cnTable.style.display = "block";
	}//showCnTable
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
                    <h1 class="h3 mb-2 text-gray-800">공지사항</h1>
                    <hr style="background-color:#1CC88A; border-width: 2px; margin-bottom: 100px">

                    <!-- 일반공지 테이블 -->
                    <div class="card shadow mb-4" id="notTable" style="display: block;">
                        <div class="card-header py-3">
							<div class="btn-group" role="group" aria-label="Basic outlined example">
							  <button type="button" class="btn btn-outline-primary" onclick="showNotTable()">일반</button>
							  <button type="button" class="btn btn-outline-primary" onclick="showCnTable()">강좌</button>
							</div>
							<button type="button" id="addNoticeBtn" class="btn btn-outline-primary" style="margin-left: 1350px;">공지사항 쓰기</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="my-datatable display table table-bordered" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>분류</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="notice" items="${ requestScope.noticeList }">
                                        <tr>
                                            <td><c:out value="${ notice.notCode }"/></td>
                                            <td>일반</td>
                                            <td><a href="detailNotice.do"><c:out value="${ notice.notTitle }"/></a></td>
                                            <td><c:out value="${ notice.adminName }"/></td>
                                            <td><c:out value="${ notice.notDate }"/></td>
                                        </tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 강좌공지 테이블 -->
                    <div class="card shadow mb-4" id="cnTable" style="display: none;">
                        <div class="card-header py-3">
							<div class="btn-group" role="group" aria-label="Basic outlined example">
							  <button type="button" class="btn btn-outline-primary" onclick="showNotTable()">일반</button>
							  <button type="button" class="btn btn-outline-primary" onclick="showCnTable()">강좌</button>
							</div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="my-datatable display table table-bordered" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>분류</th>
                                            <th>제목</th>
                                            <th style="width:400px">강좌명</th>
                                            <th>작성자</th>
                                            <th style="width:100px">작성일</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="couNotice" items="${ requestScope.cnList }">
                                        <tr>
                                            <td><c:out value="${ couNotice.cnCode }"/></td>
                                            <td>강좌</td>
                                            <td><a href="detailCouNotice.do"><c:out value="${ couNotice.cnTitle }"/></a></td>
                                            <td><c:out value="${ couNotice.couName }"/></td>
                                            <td><c:out value="${ couNotice.insName }"/></td>
                                            <td><c:out value="${ couNotice.cnDate }"/></td>
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