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
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
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

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<div id="wrap">
<!-- 로고 2개있는 경우 및 부스트코스, edwith 분기 -->
<header id="header" class="default_login mooc">
<!-- #breadcrumb:boostcourse/common/_gnb_course_menu.gsp -->
<h1 class="logo">
    <a href="/">
        <img width="" height="16px" src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v5.svg" alt="edwith">
    </a>
</h1>

<!-- 신규 boostcourse gnb 시작 -->
<div class="layout_in " data-wrap-gnb-menu data-is-boostcourse="true">
        <ul class="gnb ly_type2" id="gnb">
            <!-- [D] 활성화 li class="on" 추가 -->
            <!-- 운영 강좌/클래스 -->
                <!-- 나의 강좌/클래스 -->
            <li class="ic" data-gnb-menu="join">
                <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown">
                    <span>나의 강좌</span>
                </a>
                <div class="ly_dropdown">
                    <div class="ly_top">
                        <h2 class="tit">나의 강좌</h2>
                        <a href="/myPage/home" class="more">전체보기</a>
                    </div>
                    <div class="scroll_wrap" data-scroll-wrap="join">
                        <ul class="my_class" data-list="course" data-gnb-course-list="join"></ul>
                        <div class="more_button" style="padding: 24px 24px 0px; display: none;" data-course-more-div="join">
                            <button type="button" class="add_button" data-course-more-btn="join">
                                더보기 <span class="num" data-course-more-num="join"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </li>
            
            
            <li class="ic" data-gnb-menu="myNews">
                <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown">
                    <span>나의 소식</span>
                </a>
                <span class="count"><em>0</em></span>
                <div class="ly_dropdown">
                    <div class="ly_top">
                        <h2 class="tit">나의 소식</h2>
                    </div>
                    <div class="scroll_wrap" data-scroll-wrap="news">
                        <ul class="my_news" data-list="news"></ul>
                        <div class="more_button" style="padding: 24px 24px 0 24px; display:none" data-news-more-div>
                            <button type="button" class="add_button" data-news-more-btn>
                                더보기 <span class="num" data-news-more-num></span>
                            </button>
                        </div>
                    </div>
                    <button type="button" class="btn_jumpbar"><span>D-Day</span></button>
                </div>
            </li>
            
            <li class="ic todo" data-gnb-menu="myTodo">
                <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown">
                    <span>나의 할 일</span>
                </a>
                <span class="count"><em>0</em></span>
                <div class="ly_dropdown">
                    <div class="ly_top">
                        <h2 class="tit">나의 할 일</h2>
                    </div>
                    <div class="scroll_wrap" data-scroll-wrap="todo">
                        <ul class="noti_list" data-list="todo"></ul>
                        <div class="more_button" style="padding: 24px 24px 0 24px; display:none" data-todo-more-div>
                            <button type="button" class="add_button" data-todo-more-btn>
                                더보기 <span class="num" data-todo-more-num></span>
                            </button>
                        </div>
                    </div>
                </div>
            </li>
        
        <li class="search">
            <div class="group">
                <div class="input">
                    <span class="input_area"><input type="text" name="searchQuery" id="input_srch" data-claus-search-text></span>
                    <span class="added"><button type="button" class="btn" id="btn_srch" data-claus-search-btn><span class="sr_only">검색</span></button></span>
                </div>
            </div>
        </li>
        <!-- #breadcrumb:boostcourse/common/_loginbox.gsp -->

<li class="nickname ly_right" data-gnb-menu="myLogin">
    <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown" title="나의 메뉴">
        
        <span class="thumb bgnone">
            <img data-gnb-profile-image src="https://cphinf.pstatic.net/mooc/20231109_73/1699518435941mLJn6_PNG/aLBZa5mqaNLKq3kOxZbH.png?type=ff64_64" width="32" height="32" alt="money55">
        </span>
        
    </a>

    <div class="ly_dropdown">
        <ul>
            
            
            <li><a href="/myPage/home" title="나의 강좌" >나의 강좌</a></li>
            <li><a href="/myPage/recentlyPlayedList" title="최근 본 동영상" >최근 본 동영상</a></li>
            
            <li><a href="/userInfo/base-info" title="개인 정보" >개인 정보</a></li>
            
            <li><a href="/logout" title="로그아웃">로그아웃</a></li>
        </ul>
    </div>
</li>



    </ul>
</div>
<!-- 신규 boostcourse gnb 끝 -->

<script src="https://www.edwith.org/static/js/src/entries/common/_gnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/common/_gnbmenu.entry.js");
        entry.initialize({
            isLogged : $.trim( $("#__isLogged").val() ) === "" ? false : true,
            isClosedPartner : false,
            courseId: '5094',
            userId: '2668417'
        });
    });
</script>

<!--[D] 파트너 컬러 적용되는 부분입니다. -->

</header>
    
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
						<a href="/help/navigator?helpName=JOIN_COURSE" target="_blank" title="도움말" class="ico_help2">도움말</a>
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
				<!-- <ul class="sub">
					<li style="display: flex;padding-right: 0px;align-items: center"> -->
						<!-- <a href="/onlineclass-tutorial/lecture/65388" style="display: flex;"> -->
							<div style="flex: 1; border: 1px solid #00ab50; border-radius: 10px; padding: 5px; margin: 20px; display: flex; align-items: center; justify-content: center; flex-direction: column; height: 100%;">
							<!-- <div style="flex: 1; border: 1px solid #00ab50; border-radius: 10px; padding: 5px; margin: 20px; align-items: center;justify-content: center; flex-direction: column;" > -->
								<c:if test="${ ucDomain.completionStatus eq 'Y' }">
								<img src="http://localhost/daitdayoung/common/icon/laurel.png" width="30px"/><strong>수료</strong>
								</c:if>
								<c:if test="${ ucDomain.completionStatus eq 'N' }">
								<img src="http://localhost/daitdayoung/common/icon/uncheck.png" width="30px"/><strong>수강중</strong>
								</c:if>
							</div>
							
							<!-- <span class="ico_lecture" style="flex: 1"></span> -->
							<div class="le_txt" style="flex: 1; border: 1px solid #00ab50; border-radius: 10px; padding: 5px; margin: 20px; display: flex; align-items: center; justify-content: center; flex-direction: column; height: 100%;">
<!-- 							<div class="le_txt" style="flex: 1"> -->
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
						<a href="/onlineclass-tutorial/notice/${notice.cnCode}" class="wrap_link">
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
										<a href="/onlineclass-tutorial/lecture/65388" style="display: flex;">
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
<script src="https://www.edwith.org/static/js/vendor/tinymce/tinymce.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/katex/katex.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/lecture/show.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/lecture/show.entry.js");
        entry.initialize({
            env : {
                mtType : "/mini.editor"
            },
            nextAccess: false,
            isSequence : false,
            isAlwaysOpen: true,
            data : {
                isUsingHiddenComment: true,    //비밀글 사용 여부
                courseName : "onlineclass-tutorial",
                lectureId : 65372,
                bbsId : 32824,
                nextId : 65371,
                nextUrl : '/onlineclass-tutorial/lecture/65371/?isDesc=false'
            },
            hasConstraintOnLectureCompletion : true,
            completeLecture: false
        });
    });
</script>

        </div>
        
<!-- #breadcrumb:boostcourse/common/_footer_course.gsp -->

    <footer id="footer" class="simple new_f">
        <p class="copyright">© NAVER Connect All Rights Reserved.</p>
        <button class="btn_to_top" data-btn-scroll-top data-nclk="foot.top"><span class="blind">페이지 맨 위로가기</span></button>
    </footer>



<!-- lcs file -->
<script src="https://www.edwith.org/static/lcs-js/lcslog.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_lcs.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_lcs.entry.js");
        entry.initialize({
            environment: "PRODUCTION",
            useSti: false
        });
    });
</script>
<script src="https://www.edwith.org/static/js/src/entries/footer/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){

        //페이지 맨 위로 가기 이벤트
        $('[data-btn-scroll-top]').on('click', function(e){
            e.preventDefault();
            $("html, body").animate({ scrollTop: 0 }, "slow");
        });

        var entry = require("/entries/footer/index.entry.js");
        entry.initialize({
            el : "#_layer",
            isLogin: true,
            isClosedMooc: false,
            hasEmail: true,
            myInfoLink : "http://www.edwith.org/userInfo/base-info"
        });
    });
</script>
    </div>

    <!-- 개인정보 제3자 제공 동의 모달 -->
    <div class="modal_wrap privacy_agree" id="_agreement_modal" style="display:none">
        <div class="modal_inner">
            <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
            <div class="modal_container" data-md-content></div>
        </div>
    </div>
</div>
<script src="https://www.edwith.org/static/js/src/entries/layouts/course.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
$(document).ready(function(){
var entry = require( "/entries/layouts/course.entry.js" );
    entry.initialize({
        messageCode : $("#__MESSAGE_CODE").val(),
        popupTitle : $("#__MESSAGE_TITLE").val(),
        message : $("#__MESSAGE").val(),
        course : "onlineclass-tutorial",
        isCourseUseVote: true,
        isOpenCourseAgreement: false
    });
});
</script>
</body>
</html>