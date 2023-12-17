<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="../admin_include/include_head.jsp"></jsp:include>
<title>일반문의 상세</title>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	$("#addBtn").click(function(){
		   var param={notTitle: $("#notTitleFrm").val(),
				   	notContent: $("#notContentFrm").val()}
		   $.ajax({
			   url:"addnot.do",
			   type:"GET",
			   data: param,
			   dataType:"json",
			   error:function( xhr ){
				   alert( xhr.status );
			   },
			   success:function(jsonObj){
				   var cnt = jsonObj.cnt;
				   if(cnt=='0'){
					   alert("공지사항이 추가되지 않았습니다. 다시 한번 시도해주세요.");
				   }else{
					   alert("공지사항이 추가되었습니다.");
					   location.href="manageNotice.do";
				   }
			   }//success
		   });//ajax
	   });//click
	   $("#canBtn").click(function(){
		   window.history.back();
	   });
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
                    <h1 class="h3 mb-4 text-gray-800">공지사항 추가</h1>
                    <hr style="background-color:#1CC88A; border-width: 2px;">

                </div>
                <!-- /.container-fluid -->
                
                <div id="inqueryDetail" style="width:1000px; margin: 0 auto; margin-top: 100px">
					<table style="margin-bottom: 10px;">
					<tr>
						<td style="border-right: 1px solid #DFE0E2; padding-right: 10px"><c:out value="${ requestScope.adminName }"/></td>
						<td style="padding-left: 10px"><c:out value="${ requestScope.currentDate }"/></td>
					</tr>				
					</table>
					<input class="form-control" id="notTitleFrm" type="text" placeholder="제목을 입력해주세요.">
	                <hr>
	                <textarea class="form-control" id="notContentFrm" placeholder="문의에 대한 답변을 입력해주세요." id="floatingTextarea2" style="height: 200px"></textarea>
                </div>
                <div id="addInquery" style="width:1000px; margin: 0 auto; margin-top: 50px">
					<div style="margin-top: 50px;">
					  <button type="button" id="addBtn" class="btn btn-outline-success">등록</button>
					  <button id="canBtn" type="button" class="btn btn-outline-secondary">취소</button>
					</div>
                </div>

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

</body>

</html>