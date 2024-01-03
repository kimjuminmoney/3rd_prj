<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>

<title id="titleJoin">공지사항</title>
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common1.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
  

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

.notice_wrap { 
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

<body>
<body style = "background-color: #fff" >
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

	<div id="container" style="background-color: #fff" >
	    <div class="notice_wrap">
	                
          	<!-- 공지사항 디자인 -->
            <table summary="공지사항" class="notice_tb">
                 <caption class="hid">번호, 제목, 날짜, 작성자</caption>
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
                     </tr>
                 </thead>
                 
                 
               <!-- 전체 공지 -->  
               <tbody id="notice">
               <c:if test="${ listSize == 0 }">
                       <tr>
                             <!-- 공지가 없을 때 보여줄 페이지 -->
                             <th colspan="3">공지사항이 없습니다.</th>
                       </tr>   
                       </c:if>
               <c:forEach var="notice" items="${ noticeList }">
                 <tr>     
                 <td><c:out value= "${ notice.noticeIndex }"/></td>
                 <td><a href="notice_detail.do?notCode=${notice.notCode }"><c:out value="${notice.notTitle }"/> </a>
                 <td><c:out value= "${ notice.notDate }"/></td>
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
	                        <a href="javascript:void(0)">1</a></li>
                        
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

