<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <!-- #breadcrumb:boostcourse/common/_head.gsp -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Cache-Control" content="max-age=86400, public">
<meta http-equiv="origin-trial" content="Ati2DWxlgboPVi6vklPLcKgvC/IgtfpOtYAvD8L+1jONtKz6NAFzU4c+2yCTCypQPs4MNTbytrfX4JlQBsk73g8AAACGeyJvcmlnaW4iOiJodHRwczovL2Vkd2l0aC5vcmc6NDQzIiwiZmVhdHVyZSI6IkRpc2FibGVEaWZmZXJlbnRPcmlnaW5TdWJmcmFtZURpYWxvZ1N1cHByZXNzaW9uIiwiZXhwaXJ5IjoxNjM5NTI2Mzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZX0=">



	
		<meta property="og:url" content="http://www.edwith.org/onlineclass-tutorial/lecture/65372">
	
		<meta property="og:type" content="article">
	
		<meta property="og:title" content="[LECTURE] 퀵하게 학생 등록하는 방법 4가지! : edwith">
	
		<meta property="og:description" content="&nbsp;학생들을 수강신청하라고 가이드하는 것이 늘 어려우셨나요? 학생들이 어려서 메일 주소가 없으신가요? edwith가 4가지 방법을 공유드립니다. ​ [방법1] URL을 카카오톡과 같... - edwith">
	
		<meta property="og:image" content="https://cphinf.pstatic.net/mooc/20200405_246/1586069370681iDoUF_JPEG/tGmcDdkkdVciFQOdRczO.jpg">
	
		<meta property="og:site_name" content="edwith : 에듀케이션위드">
	
		<meta property="fb:app_id" content="1441124829481137">
	

	
		<meta name="keywords" content="&quot;누구나 쉽게 준비하는 에드위드 온라인클래스!, edwith, 동영상강의 ,비대면 ,과제수행중심수업 ,edwith ,온라인 ,학습증빙서류 ,출석확인 ,콘텐츠활용중심수업 ,에드위드 ,LMS ,온라인개학 ,비대면강의 ,원격수업 ,플립러닝 ,온라인클래스 ,학습결손 ,온라인강의">
	
		<meta name="description" content="누구나 쉽게 준비하는 에드위드 온라인클래스! edwith 강좌를 만들고자 하는 선생님들을 위해 만든 강좌입니다.">
	
		<meta name="image" content="https://cphinf.pstatic.net/mooc/20200405_246/1586069370681iDoUF_JPEG/tGmcDdkkdVciFQOdRczO.jpg">
	

	
		<meta itemprop="name" content="[LECTURE] 퀵하게 학생 등록하는 방법 4가지! : edwith">
	
		<meta itemprop="description" content="&nbsp;학생들을 수강신청하라고 가이드하는 것이 늘 어려우셨나요? 학생들이 어려서 메일 주소가 없으신가요? edwith가 4가지 방법을 공유드립니다. ​ [방법1] URL을 카카오톡과 같... - edwith">
	
		<meta itemprop="image" content="https://cphinf.pstatic.net/mooc/20200405_246/1586069370681iDoUF_JPEG/tGmcDdkkdVciFQOdRczO.jpg">
	


<!-- serverURL : https://www.edwith.org -->
<!-- i18n locale : ko -->
<!-- ko -->
<!-- KR -->
<!-- NEXT -->


	<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">


<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">

	
		<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
		<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
	
	
	

<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">

<script src="https://connect.facebook.net/en_US/all.js"></script>
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>

    
        <title>강의실 : edwith </title>
    
</head>
<body class="re_pack win chrome chrome119">

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<!-- <div class="modal_wrap ce_preview" id="_modal_wrap" style="display:none">
	<div class="modal_inner">
	    애니메이션 영역 [??]
	    <div class="modal_container" data-md-content></div>
	    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
    </div>
</div>
<div id="u_skip">
    
        <a href="#gnb" onclick="document.getElementById('gnb').tabIndex=-1;document.getElementById('gnb').focus();return false;"><span>개인 메뉴 바로가기</span></a>
    
    
    
    <a href="#snb" onclick="document.getElementById('snb').tabIndex=-1;document.getElementById('snb').focus();return false;"><span>하위 메뉴 바로가기</span></a>
    
    <a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문 바로가기</span></a>
</div> -->
<!-- #breadcrumb:layouts/course.gsp -->
<div id="wrap">
    <!-- 로고 2개있는 경우 및 부스트코스, edwith 분기 -->
    
        <header id="header" class="default_login mooc">

<!-- #breadcrumb:boostcourse/common/_gnb_course_menu.gsp -->
    
    <h1 class="logo"
        >
        <a href="/">
            <img width="" height="16px" src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v5.svg"
                 
                 alt="edwith">
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

<input type="hidden" id="__isLogged" value="org.nhnnext.mooc.user.SecUser : 2668417">


    

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
<style>
    #container .hd_txt > .inner {
        background-color: #00AB50;
    }

    #container .inc_sub .hd_txt .lecture_sub_tool .count_info {
        color: #00AB50;
    }

    #header .gnb > li > .count em {
        color: #00AB50;
    }

    #container .lnb #snb nav li:hover a {
        border-color: #00AB50;
    }

    #snb nav > ul > li.notice::after {
        background-color: #00AB50;
    }

    #snb nav > ul > li .icon svg path {
        fill: #00AB50;
    }

    #snb.manage nav > ul > li ul li:hover a, #snb.manage nav > ul > li ul li.active a {
        color: #00AB50;
    }

    #container .lnb #snb nav > ul > li.active a {
        border-color: #00AB50;
    }

    #container .lnb #snb nav > ul > li.active .menu {
        color: #00AB50;
    }

    #container .lnb #snb .widget h2 {
        color: #00AB50;
    }

    #content .page_header .group_r .it.it_added input:focus {
        border: 1px solid #00AB50 !important;
    }

    .class_manager > ul > li .chapter:hover,
    .class_manager > ul > li .add.active .add_input:hover,
    .class_manager > ul > li .sub > li:hover,
    .class_manager > ul > li .sub > li:focus {
        border-color: #00AB50;
    }

    .class_manager>ul>li .sub>li>a>span[class^=ico].end {
        background-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>a>span[class^=ico].end::before {
        background-color: #00AB50;
    }

    .class_manager.manage > ul > li .sub > li > span[class^=ico],
    .class_manager > ul > li .add .add_input > div span[class^=ico] {
        background-color: #00AB50;
    }

    .class_manager > ul li .util ul button.selected {
        color: #00AB50;
    }

    .class_manager > ul > li .add .add_type button:hover,
    .class_manager > ul > li .add .add_type button:focus {
        border-color: #00AB50;
    }

    .class_manager .slc_area .btn:hover,
    .class_manager .slc_area .btn:focus {
        background-color: #00AB50;
    }

    #snb nav > ul > li ol li a:before {
        border-color: #00AB50;
    }

    #snb nav > ul > li ol li.done a::before {
        background-color: #00AB50;
    }

    #snb nav > ul > li ol li.now a {
        color: #00AB50;
    }

    #snb nav > ul > li.video a:before {
        background-color: #00AB50;
    }

    .group_lr .btn.clr {
        background-color: #00AB50;
        border-color: #00AB50;
    }

    .quiz .quiz_add_wrap .q_header .q li.on a {
        background-color: #00AB50;
    }

    .quiz .quiz_add_wrap .q_header .q li.current:after {
        background-color: #00AB50;
    }

    .quiz .quiz_add_wrap .q_header .total_score strong {
        color: #00AB50;
    }

    .ick .radio.checked,
    .ick .checkbox.checked {
        background-color: #00AB50;
    }

    .mg_info .ick .radio.checked {
        background-color: #00AB50;
    }

    .mg_info .ick .radio.checked::after {
        background-color: #00AB50 !important;
    }

    .forum .forum_list_new .forum_summary .em_tag {
        background-color: #00AB50;
    }

    .chosen-container:hover, .chosen-container:focus,
    .chosen-container.chosen-with-drop {
        border-color: #00AB50;
    }

    .chosen-container .chosen-results li.result-selected {
        color: #00AB50;
    }

    .ic_ad {
        color: #00AB50;
    }

    .paginate .page_list .selected,
    .paginate .page_list a:hover {
        color: #00AB50;
    }

    .paginate2 .btn_prve:hover,
    .paginate2 .btn_next:hover {
        border: 1px solid #00AB50;
    }

    .paginate2 .btn_prve:hover .icon svg path,
    .paginate2 .btn_next:hover .icon svg path {
        stroke: #00AB50;
    }

    .share .sns_area .btn_type17:hover,
    .share .sns_area .btn_type17.active {
        border-color: #00AB50;
    }

    .share .btn_lecture_like:hover,
    .share .btn_lecture_like.on {
        background-color: #00AB50;
    }

    .yellow {
        color: #00AB50;
    }

    .nav_text li button.btn.tit.on {
        color: #00AB50;
    }
    .nav_text li button.tit.on i svg path{
        stroke:#00AB50;
    }
    body.full .ipt_group .btn.btn_type1.clr {
        background-color: #00AB50;
    }
    body.full #container #content .ick.login_keep .checkbox.checked::after {
        background-color: #00AB50;
    }
    body.re_pack .paginate .page_list .selected,
    body.re_pack .paginate .page_list a:hover {
        color: #00AB50;
    }
    #container .hd_txt>.inner {
        background-color: #00AB50;
    }
    #container .inc_sub .hd_txt .lecture_sub_tool .count_info {
        color: #00AB50;
    }

    #container .lnb #snb nav li:hover a {
        border-color: #00AB50;
    }
    #snb nav>ul>li.notice::after {
        background-color: #00AB50;
    }

    .btn.btn_type14 {
        background-color: #00AB50;
    }
    #container .lnb #snb nav>ul>li.active a {
        border-color: #00AB50;
    }
    #container .lnb #snb nav>ul>li.active .menu {
        color: #00AB50;
    }
    #container .lnb #snb .widget h2 {
        color: #00AB50;
    }
    #content .page_header .group_r .it.it_added input:focus {
        border: 1px solid#00AB50 !important;
    }
    .class_manager>ul>li .chapter:hover,
    .class_manager > ul > li .add.active .add_input:hover,
    .class_manager>ul>li .sub>li:hover,
    .class_manager>ul>li .sub>li:focus {
        border-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>a>span[class^=ico].end {
        background-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>span[class^=ico].end::before {
        background-color: #00AB50;
    }
    .class_manager.manage>ul>li .sub>li>span[class^=ico],
    .class_manager>ul>li .add .add_input>div span[class^=ico] {
        background-color: #00AB50;
    }
    .class_manager>ul li .util ul button.selected {
        color: #00AB50;
    }
    .class_manager>ul>li .add .add_type button:hover,
    .class_manager>ul>li .add .add_type button:focus {
        border-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>a>span[class^=ico].end::before {
        background-color: #00AB50;
    }
    #snb nav>ul>li ol li a:before {
        border-color: #00AB50;
    }
    #snb nav>ul>li ol li.done a::before {
        background-color: #00AB50;
    }
    #snb nav>ul>li ol li.now a {
        color: #00AB50;
    }
    #snb .nav_menu>ul>li.video a .icon svg path{
        fill:#00AB50;
    }
    #snb nav>ul>li.video a:before {
        background-color: #00AB50;
    }
    .quiz .quiz_add_wrap .q_header .q li.on a {
        background-color: #00AB50;
    }
    .quiz .quiz_add_wrap .q_header .q li.current:after {
        background-color: #00AB50;
    }
    .quiz .quiz_add_wrap .q_header .total_score strong {
        color: #00AB50;
    }
    .ick .radio.checked,
    .ick .checkbox.checked {
        background-color: #00AB50;
    }
    .mg_info .ick .radio.checked {
        background-color: #00AB50;
    }
    .mg_info .ick .radio.checked::after {
        background-color: #00AB50 !important;
    }
    .forum .forum_list .forum_summary .em_tag {
        background-color: #00AB50;
    }
    .chosen-container:hover,.chosen-container:focus,
    .chosen-container.chosen-with-drop {
        border-color:#00AB50;
    }
    .chosen-container .chosen-results li.highlighted {
        color:#00AB50;
    }
    .ic_ad {
        color: #00AB50;
    }
    body.re_pack .paginate .page_list .selected,
    body.re_pack .paginate .page_list a:hover {
        color: #00AB50;
    }
    .paginate4 .btn_prve:hover,
    .paginate4 .btn_next:hover {
        border:1px solid #00AB50;
    }
    .paginate4 .btn_prve:hover .icon svg path,
    .paginate4 .btn_next:hover .icon svg path {
        stroke:#00AB50;
    }
    .share .sns_area .btn_type17:hover,
    .share .sns_area .btn_type17.active{
        border-color:#00AB50;
    }
    .share .btn_lecture_like:hover,
    .share .btn_lecture_like.on {
        background-color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .ico_bx {
        background-color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .read {
        background-color:#ccd1d0;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .list_title em {
        color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .info em {
        color:#00AB50;
    }
    .re_pack .lecture_term dl dd .em {
        color:#00AB50;
    }
    .re_pack .class_manager .slc_area .add_top_wrap .ick .checkbox.checked {
        background-color:#00AB50;
    }
    .re_pack #content .page_header .reverse_wrap .ick .checkbox.checked {
        background-color:#00AB50;
    }
    body.re_pack .quiz_info dl dt .em, body.re_pack .task_info dl dt .em {
        color:#00AB50;
    }
    .table_area .btn_point {
        background-color:#00AB50;
    }

    .feedback .feedback_add_wrap .q_header .total_score strong, .re_pack .lecture_term dl dd .em, .feedback .feedback_add_wrap .q_body .q_txt em {
        color: #00AB50;
    }
    .re_pack .feedback .feedback_add_wrap .feedback_sel li .ans em {
        color: #00AB50;
    }

    .modal_wrap .modal_footer .btn_privacy_agree {
        background-color: #00AB50;
    }
</style>
        </header>
    
    <!-- share 보안 이슈 filter 미적용 -->
    <div id="container">
        <!-- 신규 boostcourse LNB -->
        
<!--[D] 관리자 권한이면서 bbs를 클릭하지 않았을 경우 true-->



<!-- nav -->
<jsp:include page="../nav/nav_courses.jsp"></jsp:include>
<!-- nav -->

<!-- <script src="https://www.edwith.org/static/js/src/entries/common/_lnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {

        var entry = require("/entries/common/_lnbmenu.entry.js");
        entry.initialize({
            'courseId': '5094',
            'courseUriPath': 'onlineclass-tutorial',
            'heartbeatApiDomain': 'https://standby-campaign.naver.com'
        });

        
    });
</script> -->
        <div id="content">
            
<!-- #breadcrumb:lecture/show.gsp -->
<section class="page mg_menu">
	
	<!--page_header-->
	<header class="page_header">
		<div class="group_lr mab10">
			<div class="group_r">
				<!-- 역순정렬기능 -->
				<div class="reverse_wrap">
					<label class="ick">
						<span class="checkbox ">
							<input type="checkbox" data-chk-order="">
						</span>
						<span class="ph">역순 정렬</span>
					</label>
				</div>
				<form action="/onlineclass-tutorial/search/lecture" method="get" class="it it_added input">
					<span class="ph">제목을 입력하세요.</span>
					<span class="input_area"><input type="text" name="searchText" data-global-placeholder=".ph"><input type="hidden" name="bbsId" value="32824"></span>
					<span class="added"><button type="submit" class="btn"><span class="sr_only">검색</span></button></span>
				</form>
			</div>
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
						<div class="chapter">
							<div class="le_txt"><strong>강좌소개</strong></div>
							<div class="le_txt"><strong>샘플 비디오 자리</strong></div>
							
							
						</div>
		<ul>
					<!-- [D] 진행중 class : on -->
					<li>
						<!-- <ul class="sub">
									<li>
										<a href="/onlineclass-tutorial/lecture/65388">
											<span class="ico_lecture"></span>
											<div class="le_txt">
												<strong>에드위드 온라인클래스 매뉴얼로 차근차근 개설해보세요!</strong>
											</div>
											<dl class="info">
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.05.28</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>14</dd>
											</dl>
										</a>
									</li>
						</ul> -->
					</li>
				
			
				
					<!-- [D] 진행중 class : on -->
					<li>
						<!-- <div class="chapter">
							<div class="le_txt"><strong>목차명</strong></div>
							
								<div class="time"><span class="blind">강의시간</span>06:04</div>
							
						</div> -->
						<ul class="sub">
									<li>
										<a href="/onlineclass-tutorial/lecture/65372">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>목차명</strong>
												
											</div>
											<dl class="info">
												
												<!-- <dt><span class="sr_only">작성자</span></dt> -->
												<!-- <dt>업데이트 :&nbsp;</dt>
												<dd>2022.05.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>10</dd> -->
												
												
													<dt><span class="sr_only">동영상</span></dt>
													<dd><div class="time"><span class="blind">강의시간</span>02:06</div></dd>
												
											</dl>
                                            
										</a>
									</li>
								
									<!-- <li>
										<a href="/onlineclass-tutorial/lecture/65371">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>동영상 시청 완료 기준을 설정해서 학생들의 출석을 체크하세요!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2022.05.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>5</dd>
												
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65373">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>간편한 콘텐츠 업로드,유튜브 영상도 OK! 클릭한번으로 나의 다른 강좌 복사도 가능!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2022.05.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>4</dd>
												
												
													<dt><span class="sr_only">동영상</span></dt>
													<dd><div class="time"><span class="blind">강의시간</span>03:58</div></dd>
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65394">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>우리 학생들끼리 참여하는 실시간 라이브 수업!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2022.05.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>2</dd>
												
												
											</dl>
                                            
										</a>
									</li> -->
								
							
							
						</ul>
					</li>
				
			
				
					<!-- [D] 진행중 class : on -->
					<!-- <li>
						<div class="chapter">
							<div class="le_txt"><strong>수강생들의 학습현황(진도율, 퀴즈, 과제) 한눈에 파악하기!</strong></div>
							
								<div class="time"><span class="blind">강의시간</span>08:13</div>
							
						</div>
						<ul class="sub">
							
								
									<li>
										<a href="/onlineclass-tutorial/lecture/84231">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>학생들의 댓글 및 댓글 작성 시점(시간,분)을 엑셀로 한번에 다운로드받기!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2022.05.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>6</dd>
												
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65375">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>교육부"원격수업 출결 가이드라인" 최적화된 과제관리 피드백 기능!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.03.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>4</dd>
												
												
													<dt><span class="sr_only">동영상</span></dt>
													<dd><div class="time"><span class="blind">강의시간</span>02:07</div></dd>
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65383">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>주관식, 객관식, 서술형 퀴즈 추가하고 평가하기!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.03.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>8</dd>
												
												
													<dt><span class="sr_only">동영상</span></dt>
													<dd><div class="time"><span class="blind">강의시간</span>04:01</div></dd>
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65374">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>내 강좌를 수료한 수강생에게 수료증을 발급하세요!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.03.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>4</dd>
												
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65384">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>학생들의 진도율, 과제, 퀴즈를 엑셀파일로 다운로드받기!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.03.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>5</dd>
												
												
													<dt><span class="sr_only">동영상</span></dt>
													<dd><div class="time"><span class="blind">강의시간</span>02:05</div></dd>
												
											</dl>
                                            
										</a>
									</li>
								
							
							
						</ul>
					</li> -->
				
			
				
					<!-- [D] 진행중 class : on -->
					<!-- <li>
						<div class="chapter">
							<div class="le_txt"><strong>참고 자료</strong></div>
							
						</div>
						<ul class="sub">
							
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65376">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>화면녹화프로그램으로 PPT에 판서하고 녹음하기!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.03.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>6</dd>
												
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65378">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>강좌 대표이미지는 여기서 찾으세요! 저작권 무료인 이미지 사이트</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.03.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>10</dd>
												
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65379">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>자막 제작하는 꿀팁 공유드립니다! srt 자막 제작 방법</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.03.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>6</dd>
												
												
											</dl>
                                            
										</a>
									</li>
								
							
							
						</ul>
					</li>
				 -->
			
				
					<!-- [D] 진행중 class : on -->
					<!-- <li>
						<div class="chapter">
							<div class="le_txt"><strong>edwith에서 강좌를 처음 개설하시는 분들을 위한 가이드</strong></div>
							
						</div>
						<ul class="sub">
							
								
									<li>
										<a href="/onlineclass-tutorial/lecture/72848">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>에드위드 임시점검 안내</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2023.06.30</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>8</dd>
												
												
											</dl>
                                            
										</a>
									</li>
								
							
							
						</ul>
					</li> -->
				
			
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