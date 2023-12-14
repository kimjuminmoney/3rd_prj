<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" itemscope="" itemtype="http://schema.org/Article"><head>

<title id="titleJoin">서비스 문의</title>

 

<!-- 220117 수정 -->
<link href="https://www.starbucks.co.kr/common/css/reset.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/style.css?v=230809" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery.bxslider.css" rel="stylesheet">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common1.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
   

 <!-- 20230206 수정 -->


<link href="https://www.starbucks.co.kr/common/css/style_whatsnew.css?v=20220221" rel="stylesheet">


<style>

.ct_center #container {
	width: 1056px;
	margin: 0 auto;
	padding-top: 20px;
	padding-bottom: 236px;
	background-color: #fff;
}

.news_sch_wrap { 
	padding:20px 30px; 
	height:38px; 
	background:#fff; 
	border-radius:3px; 
	margin-bottom:40px; 
	position:relative; 
}

.inquiry_wrap { 
	width:1100px; 
	padding-bottom:80px; 
	margin:0 auto; 
	background-color: #fff
}

footer#footer {
	background: #fff;
	clear:both;
	position:relative;
	width:100%;
	padding: 0px
}


</style>
</head>

<script>

$(function(){
	$("#sch_bar").click(function(){
		var param={ title : $("#title").val()};
		$.ajax ({
			url:"inquiry.do",
			type:"GET",
			dara: param,
			dataType:"json",
			error:function(xhr) {
				alert(xhr.status);
			},
			
			success: function (inquiryList) {
				$("#output").html(output);
}); 
	


</script>

<body style="background-color: #fff" class="w1080 ct_center win chrome chrome119 next" cz-shortcut-listen="true">


  
<header>
<jsp:include page="../index_nav/index_in_head.jsp"></jsp:include>
</header>
    


<div class="sub_tit_wrap">
	<div class="sub_tit_inner">
	<h2>서비스 문의</h2>
	</div>
</div>

<div id="container" style="background-color: #fff" >
                <!-- 공지사항 -->
            <!-- <div class="news_sch_wrap">
                   <p><input type="text" name="sch_bar" id="sch_bar" placeholder="검색어를 입력해 주세요."> <a href="javascript:void(0)" class="newBoardSearchBtn">검색</a></p>
                </div>        -->       
                <div class="inquiry_wrap">
                   
                   <div class="news_sch_wrap">
                   	<select id="itName" class="inputBox" 
                   	style="text-align: center; height: 36px; width: 120px; border:1px solid #ddd; border-radius: 3px;" >
					   <option selected>---문의 유형---</option>
					   <c:forEach var="inquiry" items="${ requestScope.inquiryList }">
					   	<option value="${ inquiry.itName }"><c:out value="${ inquiry.itName }"/></option>
					   	</c:forEach>
					</select>
					
                      <p><label for="sch_bar" class="a11y">검색어</label><!-- 접근성_20171123 label 추가 -->
                      <input type="text" name="sch_bar" id="sch_bar" placeholder="검색어를 입력해 주세요."> 
                      <a href="javascript:void(0)" class="newBoardSearchBtn" id="btn">검색</a></p>
                   </div>
                   
                    <table summary="문의" class="notice_tb">
                        <caption class="hid">번호, 유형, 제목, 날짜</caption>
                        <colgroup>
                            <col width="5.45454%">
                            <col width="10.45454%">
                            <col width="54.5454%">
                            <col width="10.90909%">
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">NO</th>
                                <th scope="col">유형</th>
                                <th scope="col">제목</th>
                                <th scope="col">날짜</th>
                                <th scope="col">작성자</th>
                            </tr>
                        </thead>
                        
                       <tbody id="inquiry">
                       <c:if test="${ listSize == 0 }">
                       <tr>
                             <!-- 문의 내역이 없을 때 보여줄 페이지 -->
                             <th colspan="5">문의하신 내용이 없습니다.</th>
                       </tr>   
                       </c:if>
                         <c:forEach var="inquiry" items="${ inquiryList }">
                           <tr>     
                           <td><c:out value= "${ inquiry.inquiryIndex }"/></td>
                           <td><c:out value= "${ inquiry.itName }"/></td>
                           <td><a href="inquiry_detail.do?inqCode=${ inquiry.inqCode }"><c:out value= "${ inquiry.inqTitle }"/></a></td>
                           <td><c:out value= "${ inquiry.inqDate }"/></td>
                           <td><c:out value="${ empty inquiry.uiName ? inquiry.insName : inquiry.uiName}"/></td>
                           </tr>
                         </c:forEach>
                    </table>
                    
                    
                    <!-- 하단 페이지 -->
                    
                   <div class="news_pagination">
                   
                        <ul class="pager">
                        <li class="control">
                        
                        <a href="javascript:void(0)">
                        <img alt="이전으로" src="//image.istarbucks.co.kr/common/img/util/ec/prev.jpg"></a></li>
                        
                        
                        
                        
	                        <li class=" active">
	                        <a href="javascript:void(0)">11</a></li>
	                        <li class="">
	                        <a href="javascript:void(0)">12</a></li>
	                        <li class="">
	                        <a href="javascript:void(0)">13</a></li>
	                        <li class="">
	                        <a href="javascript:void(0)">14</a></li>
	                        <li class="">
	                        <a href="javascript:void(0)">15</a></li>
	                        <li class="">
	                        <a href="javascript:void(0)">16</a></li>
                        
                        <li class="control">
                        <a href="javascript:void(0)">
                        <img alt="다음으로" src="//image.istarbucks.co.kr/common/img/util/ec/next.jpg"></a></li></ul>
                    </div>
                    
                </div>
                <!-- 문의사항 end -->
</div>
   
           
<footer id="footer">
<jsp:include page="../index_nav/index_in_foot.jsp"></jsp:include>
</footer>

</body>
</html>