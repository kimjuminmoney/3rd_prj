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
	   var param={inqCode: $("#inqCode2").val(),
			   inqAnswer: $("#inqAnswer").val()}
	   $.ajax({
		   url:"addInquery.do",
		   type:"GET",
		   data: param,
		   dataType:"json",
		   error:function( xhr ){
			   alert( xhr.status );
		   },
		   success:function(jsonObj){
			   var cnt = jsonObj.cnt;
			   if(cnt=='1'){
				   alert("정상적으로 답변이 등록되었습니다.");
				   window.history.back();
			   }else{
				   alert("정상적으로 답변이 등록되지 않았습니다. 다시 한번 시도해주세요.");
			   }
		   }//success
	   });//ajax
   });//click

   $("#modBtn").click(function(){
	   var param={inqCode: $("#inqCode").val(),
			   inqAnswer: $("#inqModAnswer").val()}
	   $.ajax({
		   url:"addInquery.do",
		   type:"GET",
		   data: param,
		   dataType:"json",
		   error:function( xhr ){
			   alert( xhr.status );
		   },
		   success:function(jsonObj){
			   var cnt = jsonObj.cnt;
			   if(cnt=='1'){
				   alert("정상적으로 답변이 수정되었습니다.");
				   location.reload();
			   }else{
				   alert("정상적으로 답변이 수정되지 않았습니다. 다시 한번 시도해주세요.");
			   }
		   }//success
	   });//ajax
   });//click
   
   $("#canBtn1").click(function(){
	   window.history.back();
   });
   
   $("#canBtn2").click(function(){
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
                    <h1 class="h3 mb-4 text-gray-800">일반문의 답변</h1>
                    <hr style="background-color:#1CC88A; border-width: 2px;">

                </div>
                <!-- /.container-fluid -->
                
                <div id="inqueryDetail" style="width:1000px; margin: 0 auto; margin-top: 100px">
	                <h6 id="inqueryTitle" class="h3 mb-4 text-gray-800" style="font-size: 20px"><c:out value="${ requestScope.inqTitle }"/></h6>
					<table>
					<tr>
						<td style="border-right: 1px solid #DFE0E2; padding-right: 10px"><c:out value="${ requestScope.uiName }"/></td>
						<td style="border-right: 1px solid #DFE0E2; padding-left: 10px; padding-right: 10px"><c:out value="${ requestScope.itName }"/></td>
						<td style="padding-left: 10px"><c:out value="${ requestScope.inqDate }"/></td>
					</tr>				
					</table>
	                <hr>
	                <p style="color: #5A5C69;"><c:out value="${ requestScope.inqContent }"/></p>
                </div>
                <c:if test="${ param.answerStat=='Y' }">
                <div id="inqueryAnswer" style="width:1000px; margin: 0 auto; margin-top: 50px">
	                <hr style="background-color:#1CC88A;">
        			<div id="inqueryAnswerFrm" class="form-floating" style="margin-top: 50px">
        				<h6 id="answerTitle" class="h3 mb-4 text-gray-800" style="font-size: 20px">답변</h6>
	        			<table>
						<tr>
							<td style="border-right: 1px solid #DFE0E2; padding-right: 10px"><c:out value="${ requestScope.adminName }"/></td>
							<td style="padding-left: 10px"><c:out value="${ requestScope.inqAnswerdate }"/></td>
						</tr>				
						</table>
						<hr>
						<p style="color: #5A5C69;"><c:out value="${ requestScope.inqAnswer }"/></p>
					</div>
                </div>
                <div id="modifyInquery" style="width:1000px; margin: 0 auto; margin-top: 50px">
	                <hr style="background-color:#1CC88A;">
        		<!--<h6 id="inqueryAdd" class="h3 mb-4 text-gray-800" style="font-size: 20px">답변</h6> -->        	
	        			<div id="modifyInqueryFrm" class="form-floating">
						  <textarea class="form-control" placeholder="수정할 답변을 입력해주세요." name="inqAnswer" id="inqModAnswer" style="height: 200px"></textarea>
						  <input type="hidden" id="inqCode" value="${ param.inqCode }" name="inqCode"> 
						</div>
					<div style="margin-top: 50px; margin-bottom: 50px;">
					  <button id="modBtn" type="button" class="btn btn-outline-success">수정</button>
					  <button id="canBtn1" type="button" class="btn btn-outline-secondary">취소</button>
					</div>
                </div>
                </c:if>
                <c:if test="${ param.answerStat=='N' }">
                <div id="addInquery" style="width:1000px; margin: 0 auto; margin-top: 50px">
	                <hr style="background-color:#1CC88A;">
        			<div id="addInqueryFrm" class="form-floating">
					  <textarea class="form-control" placeholder="문의에 대한 답변을 입력해주세요." name="inqAnswer" id="inqAnswer" style="height: 200px"></textarea>
					  <input type="hidden" id="inqCode2" value="${ param.inqCode }" name="inqCode"> 
					</div>
					<div style="margin-top: 50px; margin-bottom: 50px;">
					  <button id="addBtn" type="button" class="btn btn-outline-success">등록</button>
					  <button id="canBtn2" type="button" class="btn btn-outline-secondary">취소</button>
					</div>
                </div>
                </c:if>

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