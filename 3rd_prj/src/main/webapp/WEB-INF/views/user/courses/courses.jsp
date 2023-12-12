<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <!-- #breadcrumb:boostcourse/common/_head.gsp -->
<meta charset="utf-8">


<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<!-- <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css"> -->
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
<!-- <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script> -->
<!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses.css" type="text/css">
<!-- courses_notice_table css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses_notice_table.css" type="text/css">

        <title>강의실 : edwith </title>
<!-- jQuery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 공지사항 아코디언 창 -->
<script type="text/javascript">
$(document).ready(function() {
$(".que").click(function() {
	   $(this).next(".anw").stop().slideToggle(300);
	  $(this).toggleClass('on').siblings().removeClass('on');
	  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});
})
</script>
        
</head>
<body class="re_pack win chrome chrome119">
<div id="wrap">
<!-- 로고 2개있는 경우 및 부스트코스, edwith 분기 -->
<jsp:include page="../nav/header_courses.jsp"></jsp:include>
    
<div id="container">

<!-- nav -->
<jsp:include page="../nav/nav_courses.jsp"></jsp:include>
<!-- nav -->

	<div id="content">
	<section class="page mg_menu">
	<!--page_header-->
	<header class="page_header">
		<div class="group_lr mab10">
			<div class="group_l">
				<h1 class="page_title">
					강의
				</h1>
			</div>
		</div>
	</header>
	<!--//page_header-->

	<div class="class_manager type2">
		<!--chapter_list-->
		<div class="" style="padding: 0px">
			<div class="le_txt" style="margin: 20px;"><strong><c:out value="${ ucDomain.content }"/></strong></div>
			<div style="border: 3px;padding-top: 10px; padding-bottom: 3px;">
			<div class="info_lec" style="display: flex; padding-right: 0px; align-items: center; height: 80px;">
							<div style="flex: 1; border: 1px solid #00ab50; border-radius: 10px; padding: 5px; margin: 20px; display: flex; align-items: center; justify-content: center; flex-direction: column; height: 100%;">
								<c:if test="${ ucDomain.completionStatus eq 'Y' }">
								<img src="http://localhost/daitdayoung/common/icon/laurel.png" width="30px"/><strong>수료</strong>
								</c:if>
								<c:if test="${ ucDomain.completionStatus eq 'N' }">
								<img src="http://localhost/daitdayoung/common/icon/uncheck.png" width="30px"/><strong>수강중</strong>
								</c:if>
							</div>
							
							<div class="le_txt" style="flex: 1; border: 1px solid #00ab50; border-radius: 10px; padding: 5px; margin: 20px; display: flex; align-items: center; justify-content: center; flex-direction: column; height: 100%;">
								<div class="info_more_area">
                                   <strong>수료기준</strong>
                                   <div class="help_pop" >
                                         강좌 진도율 : 총 <em><c:out value="${ ucDomain.enrollRate }"/></em>% 이상<br/>
                                         시험 성적 : <em><c:out value="${ ucDomain.examResults }"/></em>점 이상
                                   </div>
                           		</div>
							</div>
							<div style="flex: 1; border: 1px solid #00ab50; border-radius: 10px; padding: 5px; margin: 20px; display: flex; align-items: center; justify-content: center; flex-direction: column; height: 100%;">
							<strong>강좌 기간</strong>
                               <p>
                                   <c:out value="${ ucDomain.registrationdate }"/> ~ <c:out value="${ ucDomain.coursePeriod }"/>
                               </p>
                            </div>
						<!-- </a> -->
					<!-- </li>
				</ul> -->
			</div>
			<div style="margin: 20px;">
			<strong>진도율</strong>
	             <div class="progress_area">
	                 <div class="progress" style=" height: 30px; ">
	                     <div class="progress_bar" style="width:  ${ ucDomain.progressRate/lecCnt *100 }%; height: 30px;align-items: center;display: flex;justify-content: center;">
		                 <strong>${ ucDomain.progressRate/lecCnt *100 }%</strong>
	                     </div>
	                 </div>
	             </div>
			</div>
			</div>
		</div>
			<!-- 공지사항 아코디언 -->
			<div id="Accordion_wrap">
			     <div class="que" style="text-align: center; font-size: 20px">
			      공지사항
			      <div class="arrow-wrap">
				      <span class="arrow-top"><img src="http://localhost/daitdayoung/common/icon/up.png" width="30px"/></span>
				      <span class="arrow-bottom"><img src="http://localhost/daitdayoung/common/icon/down.png" width="30px"/></span>
			      </div>
			      
			     </div>
				<div class="anw">
				<table id="customers" class="forum_list_new bdnone table">
				<thead>
				<tr>
					<th>번호</th><th>제목</th><th>글쓴이</th><th>날짜</th>
				</tr>
				</thead>
				<tbody>
				<c:if test="${ empty noticeList }">
				<tr>
					<th colspan="4"> 등록된 공지사항이 없습니다.</th>
				</tr>
				</c:if>
				<c:forEach var="notice" items="${ noticeList }">
				<tr class="notice">
					<td><c:out value="${ notice.ind }"/></td>
					<td>
						<a href="courses_notice.do?crgCode=${ param.crgCode }&couCode=${ param.couCode}&cnCode=${ notice.cnCode}" class="wrap_link">
							<strong class="title">${notice.cnTitle}</strong>
						</a>
					</td>
					<td>
					<div class="user_info">
						<span class="username">${notice.insName}</span>
					</div>
					</td>
					<td>
					<time class="time" datetime="${notice.cnDate}">${notice.cnDate}</time>
					</td>
				</tr>
				</c:forEach>
				</tbody>
				</table>
				</div>
			</div>
			<ul>
				<!-- [D] 진행중 class : on -->
				<li>
					<ul class="sub">
					<c:forEach var="lecture" items="${lectureList }">
						<li >
							<a href="courses_detail.do?crgCode=${ lecture.crgCode}&couCode=${ ucDomain.couCode}&lecCode=${ lecture.lecCode}" style="display: flex;">
								<div style="flex: 1">
									<c:if test="${ lecture.courseStatus eq 'Y' }">
									<img src="http://localhost/daitdayoung/common/icon/check.png" width="30px"/>
									</c:if>
									<c:if test="${ lecture.courseStatus eq 'N' }">
									<img src="http://localhost/daitdayoung/common/icon/uncheck.png" width="30px"/>
									</c:if>
								</div>
								<!-- <span class="ico_lecture" style="flex: 1"></span> -->
								<div class="le_txt" style="flex: 1">
									<strong><c:out value="${ lecture.lecName }"/></strong>
								</div>
								<div class="time" style="float: right"><span class="blind">강의시간</span>06:04</div>
							</a>
						</li>
					</c:forEach>
					</ul>
				</li>
			</ul>
		<!--project_list-->
		<ul id="project_group_area" class="mat30 ui-sortable"><div data-space-buffer=""></div></ul>
	</div>
	<p class="none" style="display:none" data-nodata-message="">준비중입니다.</p>
</section>

</div>
        
<!-- footer -->     
<jsp:include page="../nav/footer_courses.jsp"></jsp:include>   
<!-- footer -->     
</div>

    
</div>

</body>
</html>