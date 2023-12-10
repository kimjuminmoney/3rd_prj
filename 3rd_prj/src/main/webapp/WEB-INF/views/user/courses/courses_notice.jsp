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

        <title>강의실 공지사항 : edwith </title>
<!-- jQuery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        
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
	
	<!--//page_header-->
<header class="page_header">
        <div class="group_lr">
            <div class="group_l">
                <h1 class="page_title">5월 개선 예정 사항을 알려드립니다</h1>
            </div>
        </div>
    </header>
    <article class="forum_view">
        <!-- [D] 권한에 따라 노출되는 UI가 다름 -->
        <div class="forum_func group_lr">
            <div class="group_l">
                <div class="user_info">
                        <span class="ic_ad vamiddle">관리자</span>
                    <time class="time" >2020.05.15</time>
                </div>
            </div>
            <div class="group_r">
                <!-- 새로운 주제로 토론하기 레이어 -->
                <div class="modal_wrap pop_forum" style="display:none">
                    <div class="modal_inner">
                        <!--애니메이션 영역-->
                        <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
                        <div class="modal_container" data-md-content="">
                        </div>
                    </div>
                </div>
                <!-- //새로운 주제로 토론하기 레이어 -->
            </div>
        </div>
        <div class="ce ce_view">
            <article class="material_view material_text">
                <div class="material_desc editor_reset">
                    <p><strong>[개선 예정 사항 안내]</strong></p>
<p>- 개선 예정 사항에 대해 궁금해 하시는 edwith 방문자들께 예정된 사항을 안내해 드립니다.</p>
<p><strong>[5월 14일 반영 예정 사항] - 반영 완료</strong></p>
<p>- 공개 댓글의 답글도 비밀글로 쓸 수 있게 개선<br>- 평가 현황의 엑셀 다운로드 속도 개선<br>- 퀴즈, 과제 제출자 목록에 미제출자 탭 추가<br>- 종료된 시험도 평가 완료 전까지는 기간을 재조정할 수 있도록 개선<br>- 종료된 시험을 비공개 전환 시 교수자 입장이 불가하던 것을 입장 가능하게 개선<br>- 공지사항 팝업 서비스 개시 : 학습자가 접속하면 노출, 1회 노출 후 재노출 없음<br>- 비수강생의 퀴즈 접근 시 alert 메시지 개선 : 이해하기 쉬운 안내 문구로 수정</p>
<p><strong>[5월 이후 반영 예정 사항]</strong></p>
<p>- LIVE 강의 기능 개선<br>&nbsp; - 수강 중 표시&nbsp;: 수강생 본인이 현재 라이브 수강 상태를 확인할 수 있는 기능 개선<br>&nbsp; - 수강 현황 표시 : LIVE 강의에 대한 수강생의 참여/미참여 상태를 확인할 수 있는 기능 개선<br>&nbsp;</p>
<p>개선 사항에 대한 보다 자세한 안내는 도움말을 참고해 주세요.</p>
<p><a href="/help/advice#cid=11&amp;sid=75&amp;a=v" rel="noopener noreferrer">새로운 기능 안내 : 도움말 바로가기</a></p>
</div>
</article>

<div class="share">
                <!--페이지네비게이션 : 이전글/다음글/목록보기-->
                
<!-- #breadcrumb:common/_pageNavigation.gsp -->
<div class="group_lr">
    <div class="paginate">
        
            <div class="pagin l"><a href="#" class="btn_prve disabled" style="pointer-events: none;">이전 글이 없습니다.</a></div>
        
            <div class="pagin r"><a href="#" class="btn_next disabled" style="pointer-events: none;">다음 글이 없습니다.</a></div>
        
    </div>
    <div class="group_lr">
        <div class="group_r">
            <a href="/onlineclass-tutorial/notices/32827" class="btn btn_type2 bold N=a:lec.list" data-selector="backToListBtn">목록</a>
        </div>
    </div>
</div>
                <!--//페이지네비게이션 -->
            </div>
        </div>
    </article>
	
	
	
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