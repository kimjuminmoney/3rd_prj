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
		width: 50px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(2) {
		width: 400px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(3) {
		width: 250px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(4) {
		width: 150px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(5) {
		width: 150px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(6) {
		width: 150px; /* 첫 번째 열의 너비 설정 */
	}
	.table th:nth-child(7) {
		width: 100px; /* 첫 번째 열의 너비 설정 */
	}
</style>
<script type="text/javascript">
	$(function(){
		
	});//ready
	
	function showStuTable() {
        var stuTable = document.getElementById("stuTable");
        var insTable = document.getElementById("insTable");
        
        stuTable.style.display = "block";
        insTable.style.display = "none";
    }//showStuTable

    function showInsTable() {
        var stuTable = document.getElementById("stuTable");
        var insTable = document.getElementById("insTable");
        
        stuTable.style.display = "none";
        insTable.style.display = "block";
    }//showInsTable
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
                    <h1 class="h3 mb-2 text-gray-800">회원관리</h1>
                    <hr style="background-color:#1CC88A; border-width: 2px; margin-bottom: 100px">

<script>
        $(document).ready(function() {
            // Use the class selector to initialize DataTable
            $('.my-datatable').DataTable();
        });
    </script>


                    <!-- 학생 테이블 -->
                    <div class="card shadow mb-4" id="stuTable" style="display: block;">
                        <div class="card-header py-3">
							<div class="btn-group" role="group" aria-label="Basic outlined example">
							  <button type="button" class="btn btn-outline-primary" value="학생" onclick="showStuTable()">학생</button>
							  <button type="button" class="btn btn-outline-primary" value="강사" onclick="showInsTable()">강사</button>
							</div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="my-datatable display table table-bordered"  width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>가입일</th>
                                            <th>수강중인 강좌</th>
                                            <th>수료한 강좌</th>
                                            <th>탈퇴</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="student" items="${ requestScope.studentsList }" varStatus="i">
                                        <tr>
                                            <td><c:out value="${ i.count }"/></td>
                                            <td><a href="detailStudent.do"><c:out value="${ student.uiId }"/></a></td>
                                            <td><c:out value="${ student.uiName }"/></td>
                                            <td><c:out value="${ student.uiJoindate }"/></td>
                                            <td><c:out value="${ student.couN }"/></td>
                                            <td><c:out value="${ student.couY }"/></td>
                                            <td><c:out value="${ student.uiQuit }"/></td>
                                        </tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- 강사테이블 -->
                    <div class="card shadow mb-4"  id="insTable" style="display: none;">
                        <div class="card-header py-3">
							<div class="btn-group" role="group" aria-label="Basic outlined example">
							  <button type="button" class="btn btn-outline-primary" value="학생" onclick="showStuTable()">학생</button>
							  <button type="button" class="btn btn-outline-primary" value="강사" onclick="showInsTable()">강사</button>
							</div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="my-datatable display table table-bordered"  width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>가입일</th>
                                            <th>전화번호</th>
                                            <th>강좌수</th>
                                            <th>탈퇴</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="instructor" items="${ requestScope.instructorsList }" varStatus="i">
                                        <tr>
                                            <td><c:out value="${ i.count }"/></td>
                                            <td><a href="detailInstructor.do"><c:out value="${ instructor.insId }"/></a></td>
                                            <td><c:out value="${ instructor.insName }"/></td>
                                            <td><c:out value="${ instructor.insJoindate }"/></td>
                                            <td><c:out value="${ instructor.insTel }"/></td>
                                            <td><c:out value="${ instructor.couCnt }"/></td>
                                            <td><c:out value="${ instructor.insQuit }"/></td>
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