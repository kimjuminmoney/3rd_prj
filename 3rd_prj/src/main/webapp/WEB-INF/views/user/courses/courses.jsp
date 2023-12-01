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
<script>
    var nsc = 'edwith.all';
    var ccsrv = 'cc.naver.com';
    var nclk_evt = 3;
    nclk_do();
</script>

    <!-- Google Tag Manager -->
    
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
        var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
        j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-P2H76TF');</script>
    
    <!-- // Google Tag Manager -->

    
        <title>강의실 : edwith </title>
    
</head>
<body class="re_pack win chrome chrome119">




    


    <!-- Google Tag Manager (noscript) -->
    
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P2H76TF"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    
    <!-- End Google Tag Manager (noscript) -->

<input type="hidden" id="__PARTNER_CODE" value="NEXT" />
<input type="hidden" id="__PARTNER_COLOR" value="#00AB50" />
<input type="hidden" id="__ADMIN_PARTNER_CODE" value="" />
<input type="hidden" id="__FILEUPLOAD_DOMAIN" value="//upload.edwith.org" />
<input type="hidden" id="__FILEUPLOAD_ENDPOINT" value="//upload.edwith.org/uploadManager/upload" />
<input type="hidden" id="__USER_ROLE" value="ROLE_STUDENT" />
<input type="hidden" id="__USER_PRIORITY" value="2" />
<input type="hidden" id="__USER_ID" value="2668417">
<input type="hidden" id="__COURSE_ID" value="5094" />
<input type="hidden" id="__COURSE_OPEN_DAY" value="" />
<input type="hidden" id="__COURSE_CLOSE_DAY" value="" />
<input type="hidden" id="__COURSE_URI_PATH" value="onlineclass-tutorial" />
<input type="hidden" id="__CURRENT_DATE" value="2023.11.28" />
<input type="hidden" id="__MESSAGE_TITLE" value="알림" />

    <input type="hidden" id="__LOCALE_LANGUAGE" value="ko" />

<input type="hidden" id="__IS_SHARE_PARTNER_CODE" value="false" />
<input type="hidden" id="__IS_PRIVATE_PARTNER" value="false" />
<input type="hidden" id="__IS_BOOST_COURSE_PARTNER" value="false" />
<input type="hidden" id="__IS_WHALE_CLASS" value="false" />
<input type="hidden" id="__IS_BIZ_CLASS" value="false" />
<input type="hidden" id="__IS_MOBILE" value="false" />
<input type="hidden" id="__USE_LMS_PARTNER" value="true" />
<input type="hidden" id="__I18N_RESOURCES_PATH" value="/i18n/" />
<input type="hidden" id="__COURSE_TERM_TYPE" value="basic" />
<input type="hidden" id="__RESOURCE_VERSION" value="?231109_47a067d4" />
<input type="hidden" id="__CONTROLLER_TYPE" value="lecture" />
<input type="hidden" id="__GITLAB_URL" value="https://gitlab.edwith.org" />
<input type="hidden" id="__EDWITH_PC_URL" value="https://www.edwith.org" />
<input type="hidden" id="__EDWITH_MOBILE_URL" value="https://m.edwith.org" />
<input type="hidden" id="__EDWITH_API_URL" value="https://api.edwith.org" />
<input type="hidden" id="__CBOX_STATIC_DOMAIN" value="https://ssl.pstatic.net/static.cbox" />
<input type="hidden" id="__CBOX_API_DOMAIN" value="https://apis.naver.com/commentBox/cbox8" />
<input type="hidden" id="__CBOX_TICKET" value="mooc" />
<input type="hidden" id="__STANDBY_CAMPAIGN_DOMAIN" value="https://standby-campaign.naver.com" />
<input type="hidden" id="__VTT_API_URL" value="https://vtt.naver.com" />
<input type="hidden" id="__LOG_CONSUMER_DOMAIN" value="https://log-consumer.edwith.org" />
<input type="hidden" id="__LOG_CONSUMER_ENV" value="" />

    <input type="hidden" id="__MESSAGE_CODE" value="" />

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<script>
    var title = document.title;
    document.title = _.unescape(title);

    var entry = require("/entries/common/_head.entry.js");
    entry.initialize();

    // 부코 진입시, 통합 회원 약관 동의하지 않았으면 약관 페이지로 이동하는 즉시 실행 함수
    (function connectMemberIntegration() {
        // 자체 로그인 서비스를 이용 하는 경우(snsCode가 있는 경우)를 제외하고는 통합 회원 전환을 진행함
        if ("") {  // null, 빈 문자열 호환됨
            return;
        }

        var integrationUserId = Number(2668417);
        var integrationAgree = Boolean(true);
        var regrSecUserId = Number(0);

        // 미로그인자 또는 약관에 이미 동의한 사람, 교수자가 직접 등록한 계정은 제외
        if ((integrationUserId === 0) || integrationAgree || (regrSecUserId > 0)) {
            return;
        }

        // 약관 페이지 및 오류 페이지 무한 리다이렉트 방지
        if ((location.pathname.indexOf("/users/connect-integration") > -1)
            || (location.pathname.indexOf("/notAuthorized") > -1)
            || (location.pathname.indexOf("/notExist") > -1)
            || (location.pathname.indexOf("/internalServerError") > -1)
            || (location.pathname.indexOf("/readOnlyError") > -1)
            || (location.pathname.indexOf("/badRequest") > -1)
            || (location.pathname.indexOf("/methodNotAllowed") > -1)
            || (location.pathname.indexOf("/neoid/doChainingLogin") > -1)) {
            return;
        }

        location.href = ("/users/connect-integration?returnUrl=" + encodeURI(location.href));
    }());


    
        
        if(!wcs_add) var wcs_add = {};
        
            wcs_add["wa"] = "3d48cd39225150";
        
        wcs_do();

        
        
    

    
    function diff_minutes(dt2, dt1) {
        var diff =(dt2.getTime() - dt1.getTime()) / 1000;
        diff /= 60;
        return Math.abs(Math.round(diff));
    }

    //오늘 하루만 유지되도록 쿠키 Minute 설정
    function getStandbyCookieTime() {
        var dt1 = new Date();

        var dt2 = new Date(dt1);
        dt2.setDate(dt1.getDate() + 1);
        dt2.setHours(0,0,0,0);

        var diffMinute =  diff_minutes(dt2, dt1);
        if(diffMinute <= 0) {
            return 24 * 60
        } else {
            return diffMinute;
        }
    }

    var htInfo = {
        serviceId : "edwith_NEXT",
        seqApi : "https://standby-campaign.naver.com/",
        heartBeatApi : "https://standby-campaign.naver.com/",
        homeUrl : "https://edwith.org",
        cookieTime : getStandbyCookieTime()
    };

    var oSequenceManager = new SequenceManager({
        serviceId : htInfo.serviceId,
        apiHost: htInfo.seqApi,
        cookieTime: htInfo.cookieTime, //minute 단위
        successCallback : function(response){
            //시퀀스 호출이 성공 하였을 경우 heartbeat 요청 시작~
            oHeartbeat.start();
        },
        failCallback : function(response) {
        },
        errorCallback : function(error) {
            //호출 시 오류가 발생 하였을 경우 3초 후 시퀀스 호출
            setTimeout(oSequenceManager.requestSequence , 3000);
        }
    });

    var oHeartbeat = new Heartbeat(oSequenceManager,{
        serviceId: htInfo.serviceId,
        apiHost: htInfo.heartBeatApi,
        soldoutCallback: function(response) {
        },
        errorCallback : function(response) {
            //에러가 발생했을 경우 순번 삭제 후 아무것도 하지 않음
        },
        successRun : true //대기열 진입 시에도 계속 heartbeat 호출할 필요가 있을 경우 true(상품 품절 체크 등의 이슈)
    });

    //dom 로드된 후 아래 코드 호출
    //oSequenceManager.requestSequence();
</script>


    <input type="hidden" id="GA_VIEW_ID" value="UA-93980439-1" />



    <input type="hidden" id="GA_USER_ID" value="0002668417" />
    <input type="hidden" id="GA_DIMENSION01" value="NEXT" /> 


    <input type="hidden" id="GA_DIMENSION02" value="NEXT" /> 
    <input type="hidden" id="GA_DIMENSION03" value="onlineclass-tutorial" /> 
    <input type="hidden" id="GA_DIMENSION04" value="STUDENT" /> 
    <input type="hidden" id="GA_DIMENSION07" value="ALWAYS_OPEN" /> 
    <input type="hidden" id="GA_DIMENSION08" value="C_LEC" /> 
    <input type="hidden" id="GA_DIMENSION09" value="65372" /> 

<input type="hidden" id="GA_DIMENSION05" value="NEXT" /> 
<input type="hidden" id="GA_DIMENSION06" value="PC_WEB" /> 

<script>
    
		
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    

    (function() {
        function gaGetInfo() {
            var gaInfo = {
                viewId: document.getElementById('GA_VIEW_ID').value,
                userId: document.getElementById('GA_USER_ID').value,
                dimension01: document.getElementById('GA_DIMENSION01').value,
                dimension02: document.getElementById('GA_DIMENSION02').value,
                dimension03: document.getElementById('GA_DIMENSION03').value,
                dimension04: document.getElementById('GA_DIMENSION04').value,
                dimension05: document.getElementById('GA_DIMENSION05').value,
                dimension06: document.getElementById('GA_DIMENSION06').value,
                dimension07: document.getElementById('GA_DIMENSION07').value,
                dimension08: document.getElementById('GA_DIMENSION08').value,
                dimension09: document.getElementById('GA_DIMENSION09').value
            };

            return gaInfo;
        }


        function gaHitPageView() {
            var gaInfo = gaGetInfo();
            var ga = window.ga;

            ga('create', gaInfo.viewId, 'auto');
            ga('set', 'userId', gaInfo.userId);
            ga('set', 'dimension1', gaInfo.dimension01);
            ga('set', 'dimension2', gaInfo.dimension02);
            ga('set', 'dimension3', gaInfo.dimension03);
            ga('set', 'dimension4', gaInfo.dimension04);
            ga('set', 'dimension5', gaInfo.dimension05);
            ga('set', 'dimension6', gaInfo.dimension06);
            ga('set', 'dimension7', gaInfo.dimension07);
            ga('set', 'dimension8', gaInfo.dimension08);
            ga('set', 'dimension9', gaInfo.dimension09);

            ga('send', 'pageview');
        }

        function gaSimpleHitPageView(page) {
            ga('set', 'page', page);
            ga('send', 'pageview');
        }

        window.gaHitPageView = gaSimpleHitPageView;

        
        /*ga('send', {
            hitType: 'event',
            eventCategory: 'video',
            eventAction: 'play',
            eventLabel: 'media play'
        });*/

        gaHitPageView();
    })();
</script>



<div class="modal_wrap ce_preview" id="_modal_wrap" style="display:none">
	<div class="modal_inner">
	    <!-- 애니메이션 영역 [??] -->
	    <div class="modal_container" data-md-content></div>
	    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
    </div>
</div>
<div id="u_skip">
    
        <a href="#gnb" onclick="document.getElementById('gnb').tabIndex=-1;document.getElementById('gnb').focus();return false;"><span>개인 메뉴 바로가기</span></a>
    
    
    
    <a href="#snb" onclick="document.getElementById('snb').tabIndex=-1;document.getElementById('snb').focus();return false;"><span>하위 메뉴 바로가기</span></a>
    
    <a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문 바로가기</span></a>
</div>
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



<!-- <div class="lnb">
    신규 boostcourse LNB SNB
    <div class="inc_sub default">
        <div class="hd_txt">
            <div class="inner">
                <div class="label_box">
                    

                [D] 강좌 난이도에 따라 .level에 class 추가 필요
                                기본 basic 추가
                                심화 advanced 추가
                                입문은 class 추가 없음
                    
                        <div class="level basic">
                            <span class="blind">난이도</span>
                            <div class="icon level2">
                                <span class="level_bg"></span>
                                <span class="level_bg"></span>
                                <span class="level_bg"></span>
                            </div>
                            기본
                        </div>
                    
                </div>
                [D] 강좌명이 51~90자인 경우 h2 class에 word_max 추가
                <h2 class="">
                    <a href="/onlineclass-tutorial/home" class="NPI=a:title" id="_courseName">사이드바 강좌명</a>
                </h2>
                    <div class="profile">
                        [D] 이미지 노출시 class="bgnone" 추가
                        <span class="thumb bgnone"><img src="https://cphinf.pstatic.net/mooc/20200405_5/1586078383558G8DF6_PNG/edwith%28%29.png?type=ff64_64" width="32" height="32" alt="임시 이미지"></span>
                        <span class="name">강사명</span>
                        [D] 파트너홈이 없는 경우
                        <span class="from">소속?</span>
                    </div>
            공유하기
            <div class="sns_area _sns_area">
			    <button type="button" class="btn sns_share" data-sns-share><span class="sr_only">공유하기</span></button>
			    <div class="sns_layer " data-sns-layer>
			        <div class="inner">
			            <a href="#" class="ico_url" data-type="urlCopy" data-clipboard-text="www.edwith.org/onlineclass-tutorial">URL복사</a>
			            <a href="#" class="ico_band" data-type="band">밴드</a>
			            <a href="#" class="ico_facebook" data-type="facebook">페이스북</a>
			            <a href="#" class="ico_twitter" data-type="twitter">트위터</a>
        			</div>
    			</div>
			</div>
    
			<div id="_band_share_content" style="display:none">밴드 공유 컨텐츠 네임</div>
			<div id="_twitter_share_content" style="display:none">트위터 공유 컨텐츠 네임</div>
			<div style="width:1px;height:1px;font-size:0;line-height:0;color:transparent"><span id="urlCopy">URL들어갈자리</span></div>
			<script src="https://www.edwith.org/static/js/src/entries/common/_sns.share.service.entry.browserfied.min.js?231109_47a067d4"></script>
			<script>
			$(document).ready(function(){
			    var courseUrl = 'https://www.edwith.org/onlineclass-tutorial';
			    var entry = require("/entries/common/_sns.share.service.entry.js");
			    var htData = {
			            facebook : [courseUrl, '1441124829481137', 'http://www.edwith.org/popupClose'],
			            twitter : [courseUrl, $("#_twitter_share_content").text(),  '',  ''],
			            googlePlus : [courseUrl],
			            band : [courseUrl, $("#_band_share_content").text()],
			            url: courseUrl
			        };
			    entry.initialize($('._sns_area'), htData);
			});
			</script>
            // 공유하기
            </div>
            <div class="lecture_sub_tool">
                
                    <div class="count_info">
                        <span class="count_like"><em>조회수</em> 87</span>
                        <span class="count_observe"><em>수료자수</em> 9219</span>
                    </div>
                    <div class="manage_box">
                        

                        
                    </div>
                
            </div>
        </div>
        <button class="open_menu"><span class="blind">전체 메뉴 열기</span></button>
    </div>

    
        신규 boostcourse SNB
        <div id="snb" class="default ">
            
            

<nav class="nav_menu">
    <h2 class="sr_only">하위 메뉴</h2>
    <ul class="NE=a:lmn">
    
    
        
    

    [D] 선택된 메뉴에 .active 추가, 구분선 추가시 <li class="hr"></li> 추가
    
        
        
            <li class="notice ">
                <a href="/onlineclass-tutorial/notices/32827" title="공지 사항" class="NPI=a:notice">
                    new 아이콘 일단 제거(나중에 스펙 확정되면 추가)
                    <i class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                            <path fill="#108F6B" fill-rule="nonzero" d="M1 0C.448 0 0 .448 0 1v14c0 .552.448 1 1 1h14c.552 0 1-.448 1-1V1c0-.552-.448-1-1-1H1zm3 12V4h2l4 5V4h2v8h-2L6 7v5H4z" clip-rule="evenodd"></path>
                        </svg>
                    </i>
                   
                    <span class="menu">공지 사항</span>
                </a>
            </li>
        
    
        
        
            
            
            <li class="active">
                <a href="/onlineclass-tutorial/joinLectures/32824?isDesc=false" title="교수자를 위한 튜토리얼" class="NPI=a:lectures">
                    <span class="menu">교수자를 위한 튜토리얼</span>
                </a>
                [D] .btn_open 클릭시 상위 li 에 .active 추가해주세요.
                <button class="btn_open"><span class="blind">강좌 전체목록보기</span></button>
                <div>
                [D] 수강완료한 강좌는 li.done 클래스 추가
                [D] 현재 수강중인 강좌는 li.now 클래스 추가
                lecture.contType에 따라 url 분기처리
                
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">에드위드 온라인클래스 매뉴얼(교수자ver, 학생ver)</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65388?isDesc=false">에드위드 온라인클래스 매뉴얼로 차근차근 개설해보세요!</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">퀵하게 학생들을 등록하고 간편하게 강의 업로드하기!</span>
                                
                                    
                                    
                                    
                                    <li class="now"><a href="/onlineclass-tutorial/lecture/65372?isDesc=false">퀵하게 학생 등록하는 방법 4가지!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65371?isDesc=false">동영상 시청 완료 기준을 설정해서 학생들의 출석을 체크하세요!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65373?isDesc=false">간편한 콘텐츠 업로드,유튜브 영상도 OK! 클릭한번으로 나의 다른 강좌 복사도 가능!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65394?isDesc=false">우리 학생들끼리 참여하는 실시간 라이브 수업!</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">수강생들의 학습현황(진도율, 퀴즈, 과제) 한눈에 파악하기!</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/84231?isDesc=false">학생들의 댓글 및 댓글 작성 시점(시간,분)을 엑셀로 한번에 다운로드받기!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65375?isDesc=false">교육부"원격수업 출결 가이드라인" 최적화된 과제관리 피드백 기능!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65383?isDesc=false">주관식, 객관식, 서술형 퀴즈 추가하고 평가하기!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65374?isDesc=false">내 강좌를 수료한 수강생에게 수료증을 발급하세요!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65384?isDesc=false">학생들의 진도율, 과제, 퀴즈를 엑셀파일로 다운로드받기!</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">참고 자료</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65376?isDesc=false">화면녹화프로그램으로 PPT에 판서하고 녹음하기!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65378?isDesc=false">강좌 대표이미지는 여기서 찾으세요! 저작권 무료인 이미지 사이트</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65379?isDesc=false">자막 제작하는 꿀팁 공유드립니다! srt 자막 제작 방법</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">edwith에서 강좌를 처음 개설하시는 분들을 위한 가이드</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/72848?isDesc=false">에드위드 임시점검 안내</a></li>
                                
                            </ol>
                        
                    
                    </div>
                
            </li>
        
    
        
        
            <li class="ext ">
                <a href="https://www.edwith.org/onlineclass" target="_blank">
                    
                    <span class="menu">온라인클래스 신청하기</span>
                </a>
            </li>
        
    
        
        
            <li class="hr"></li>
        
    
        
        
            <li class="">
                <a href="/onlineclass-tutorial/forums/32823" title="▶자주 접수되는 문의◀" class="NPI=a:discuss">
                    <span class="menu">▶자주 접수되는 문의◀</span>
                </a>
            </li>
        
    
        
        
            <li class="">
                <a href="/onlineclass-tutorial/forums/32822" title="고민 및 정보공유 게시판" class="NPI=a:discuss">
                    <span class="menu">고민 및 정보공유 게시판</span>
                </a>
            </li>
        
    
        
        
            <li class="">
                <a href="/onlineclass-tutorial/forums/33689" title="에드위드 사용후기" class="NPI=a:discuss">
                    <span class="menu">에드위드 사용후기</span>
                </a>
            </li>
        
    
        
        
            <li class="ext ">
                <a href="https://www.edwith.org/voc" target="_blank">
                    
                    <span class="menu">1:1서비스문의</span>
                </a>
            </li>
        
    
        
        
            <li class="hr"></li>
        
    
    </ul>
    
        <ul class="ad" id="menuUl">
            
            
            
                
                    <li><a href="/onlineclass-tutorial/grade"><span>성적조회</span></a></li>
                
            
        </ul>
    
    
    
    
</nav>

<script src="https://www.edwith.org/static/js/src/entries/common/_snbmenu.entry.browserfied.min.js?231109_47a067d4"></script>

<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_snbmenu.entry.js");
        // entry.initialize();

        entry.initialize({
            data : {
                course: "onlineclass-tutorial"
            },
            title : '누구나 쉽게 준비하는 에드위드 온라인클래스!',
            useQuestion : false,
            courseUri: 'onlineclass-tutorial',
            isShareGuest : false,
            isBizclassGuest : false,
            searchable: true,
            requestSuccessMessage: ''
        });
    });
</script>



            

            
        </div>
    
</div> -->
<jsp:include page="../nav/nav_courses.jsp"></jsp:include>
<script src="https://www.edwith.org/static/js/src/entries/common/_lnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {

        var entry = require("/entries/common/_lnbmenu.entry.js");
        entry.initialize({
            'courseId': '5094',
            'courseUriPath': 'onlineclass-tutorial',
            'heartbeatApiDomain': 'https://standby-campaign.naver.com'
        });

        
    });
</script>
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
					교수자를 위한 튜토리얼
					
						<a href="/help/navigator?helpName=JOIN_COURSE" target="_blank" title="도움말" class="ico_help2">도움말</a>
					
				</h1>
			</div>
		</div>
	</header>
	<!--//page_header-->

	<div class="class_manager
        type2
        ">
		
		<!--chapter_list-->
		<ul>
			
				
					<!-- [D] 진행중 class : on -->
					<li>
						<div class="chapter">
							<div class="le_txt"><strong>에드위드 온라인클래스 매뉴얼(교수자ver, 학생ver)</strong></div>
							
						</div>
						<ul class="sub">
							
								
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
								
							
							
						</ul>
					</li>
				
			
				
					<!-- [D] 진행중 class : on -->
					<li>
						<div class="chapter">
							<div class="le_txt"><strong>퀵하게 학생들을 등록하고 간편하게 강의 업로드하기!</strong></div>
							
								<div class="time"><span class="blind">강의시간</span>06:04</div>
							
						</div>
						<ul class="sub">
							
								
									<li>
										<a href="/onlineclass-tutorial/lecture/65372">
										
											<span class="ico_lecture"></span>
										
											<div class="le_txt">
												<strong>퀵하게 학생 등록하는 방법 4가지!</strong>
												
											</div>
											<dl class="info">
												
												<dt><span class="sr_only">작성자</span></dt>
												<dt>업데이트 :&nbsp;</dt>
												<dd>2022.05.10</dd>
												
													<dt class="like"><span class="ico_like"></span><em class="blind">좋아요</em></dt>
													<dd>10</dd>
												
												
													<dt><span class="sr_only">동영상</span></dt>
													<dd><div class="time"><span class="blind">강의시간</span>02:06</div></dd>
												
											</dl>
                                            
										</a>
									</li>
								
									<li>
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
									</li>
								
							
							
						</ul>
					</li>
				
			
				
					<!-- [D] 진행중 class : on -->
					<li>
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
					</li>
				
			
				
					<!-- [D] 진행중 class : on -->
					<li>
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
				
			
				
					<!-- [D] 진행중 class : on -->
					<li>
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