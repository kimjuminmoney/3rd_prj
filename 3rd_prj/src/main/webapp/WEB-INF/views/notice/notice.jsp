<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>

<title id="titleJoin">공지사항</title>

<script type="text/javascript" src="https://www.starbucks.co.kr/common/js/esabsbuxkr.js?single"></script> 

<!-- 220117 수정 -->
<link href="https://www.starbucks.co.kr/common/css/reset.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/style.css?v=230809" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery.bxslider.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/idangerous.swiper.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery-ui.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/ezmark.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/style_dt.css?v=20230320" rel="stylesheet"> <!-- 20230206 수정 -->


<link href="https://www.starbucks.co.kr/common/css/style_whatsnew.css?v=20220221" rel="stylesheet">
</head>
<body>

</body>
</head>

<body class="w1080 ct_center win chrome chrome119 next">

  
<header>
<jsp:include page="../index_nav/index_in_head.jsp"></jsp:include>
</header>


<div class="sub_tit_wrap">
	<div class="sub_tit_inner">
	<h2>공지사항</h2>
	</div>
</div>

<div id="container">
                <!-- 공지사항 -->
				<!-- <div class="news_sch_wrap">
                	<p><input type="text" name="sch_bar" id="sch_bar" placeholder="검색어를 입력해 주세요."> <a href="javascript:void(0)" class="newBoardSearchBtn">검색</a></p>
                </div>        -->       
                <div class="notice_wrap">
                	
                	<div class="news_sch_wrap">
	                	<p>
	                	<label for="sch_bar" class="a11y">검색어</label>
	                	<!-- 접근성_20171123 label 추가 -->
	                	<input type="text" name="sch_bar" id="sch_bar" placeholder="검색어를 입력해 주세요."> 
	                	<a href="javascript:void(0)" class="newBoardSearchBtn">검색</a>
	                	</p>
	                </div>
	                
	                
	                <!-- 공지사항 디자인 -->
                    <table summary="공지사항" class="notice_tb">
                        <caption class="hid">공지사항 번호, 제목, 날짜, 조회수 테이블</caption>
                        <colgroup>
                            <col width="5.45454%">
                            <col width="74.5454%">
                            <col width="10.90909%">
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">NO</th>
                                <th scope="col">제목</th>
                                <th scope="col">날짜</th>
                                <th scope="col">작성자</th>
                            </tr>
                        </thead>
                        
                        
                      <!-- 전체 공지 -->  
                      <tbody id="notice">
                      <c:forEach var="notice" items="${ noticeList }">
                        <tr>     
                        <td><c:out value= "${ notice.noticeIndex }"/></td>
                        <td><c:out value= "${ notice.notTitle }"/></td>
                        <td><c:out value= "${ notice.notDate }"/></td>
                        <td><c:out value= "${ notice.adminId }"/></td>
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
                <!-- 공지사항 end -->
</div>
           

            
            
            

<footer class="bg-dark py-4 mt-auto">
<jsp:include page="../index_nav/index_in_foot.jsp"></jsp:include>
</footer>

</body>
</html>

