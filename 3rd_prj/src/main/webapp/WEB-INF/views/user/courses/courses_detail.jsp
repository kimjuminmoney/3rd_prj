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



<div class="lnb">
    <!-- 신규 boostcourse LNB SNB -->
    <div class="inc_sub default">
        <div class="hd_txt">
            <div class="inner">
                <div class="label_box">
                    

                <!-- [D] 강좌 난이도에 따라 .level에 class 추가 필요
                                기본 basic 추가
                                심화 advanced 추가
                                입문은 class 추가 없음 -->
                    
                        <!-- <div class="level basic">
                            <span class="blind">난이도</span>
                            <div class="icon level2">
                                <span class="level_bg"></span>
                                <span class="level_bg"></span>
                                <span class="level_bg"></span>
                            </div>
                            기본
                        </div> -->
                    
                </div>
                <!-- [D] 강좌명이 51~90자인 경우 h2 class에 word_max 추가 -->
                <h2 class="">
                    <a href="/onlineclass-tutorial/home" class="NPI=a:title" id="_courseName">사이드바 강좌명</a>
                </h2>
                    <div class="profile">
                        <!-- [D] 이미지 노출시 class="bgnone" 추가 -->
                        <span class="thumb bgnone"><img src="https://cphinf.pstatic.net/mooc/20200405_5/1586078383558G8DF6_PNG/edwith%28%29.png?type=ff64_64" width="32" height="32" alt="임시 이미지"></span>
                        <span class="name">강사명</span>
                        <!-- [D] 파트너홈이 없는 경우 -->
                        <span class="from">소속?</span>
                    </div>
            <!-- 공유하기 -->
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
            <!-- // 공유하기 -->
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

    
        <!-- 신규 boostcourse SNB -->
        <div id="snb" class="default ">
            
            

<nav class="nav_menu">
    <h2 class="sr_only">하위 메뉴</h2>
    <ul class="NE=a:lmn">
    
    
        
    

    <!-- [D] 선택된 메뉴에 .active 추가, 구분선 추가시 <li class="hr"></li> 추가-->
    
        
        
            <li class="notice ">
                <a href="/onlineclass-tutorial/notices/32827" title="공지 사항" class="NPI=a:notice">
                    <!-- new 아이콘 일단 제거(나중에 스펙 확정되면 추가)
                    <i class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                            <path fill="#108F6B" fill-rule="nonzero" d="M1 0C.448 0 0 .448 0 1v14c0 .552.448 1 1 1h14c.552 0 1-.448 1-1V1c0-.552-.448-1-1-1H1zm3 12V4h2l4 5V4h2v8h-2L6 7v5H4z" clip-rule="evenodd"></path>
                        </svg>
                    </i>
                    -->
                    <span class="menu">공지 사항</span>
                </a>
            </li>
        
    
        
        
            
            
            <li class="active">
                <a href="/onlineclass-tutorial/joinLectures/32824?isDesc=false" title="교수자를 위한 튜토리얼" class="NPI=a:lectures">
                    <span class="menu">교수자를 위한 튜토리얼</span>
                </a>
                <!--[D] .btn_open 클릭시 상위 li 에 .active 추가해주세요.-->
                <button class="btn_open"><span class="blind">강좌 전체목록보기</span></button>
                <div>
                <!--[D] 수강완료한 강좌는 li.done 클래스 추가-->
                <!--[D] 현재 수강중인 강좌는 li.now 클래스 추가-->
                <!-- lecture.contType에 따라 url 분기처리 -->
                
                    
                        
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
    
</div>

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
<section class="page forum _warp_lecture_content" data-hasMobile="true">
    
    
    
    

    <!--page_header-->
    <header class="page_header">
        <div class="group_lr mab10">
            
                <div class="group_r">
                    
                        <div class="group_r">
                            <a href="#" class="alarm_set_btn disabled" style="display:none" data-btn-alarm-set> </a>
                        </div>
                    
                </div>
            
            <div class="group_l">
                <h1 class="page_title "> 퀵하게 학생 등록하는 방법 4가지!</h1>
            </div>
        </div>
    </header>
    <!--//page_header-->

    

    <div class="user_info_view ce ce_view">
        
        <input type="hidden" id="__MATERIALS" data-selector="materials" value='[{&quot;id&quot;:171985,&quot;text&quot;:&quot;&lt;p&gt;&amp;nbsp;&lt;span id=\&quot;SE-55d72904-074f-4b6c-81c1-a5cef423dab8\&quot;&gt;학생들을 수강신청하라고 가이드하는 것이 늘 어려우셨나요? &lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-b27800da-d8b5-4d2b-9ce2-ef97e2336967\&quot;&gt;&lt;span id=\&quot;SE-65d393d5-6a18-4838-8183-fa88b92afb14\&quot;&gt;학생들이 어려서 메일 주소가 없으신가요?&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-69f31e56-6dad-497f-b068-2d9d0c000889\&quot;&gt;&lt;span id=\&quot;SE-1d23dfd1-faf7-48f9-aaee-52f65a297e64\&quot;&gt;edwith가 4가지 방법을 공유드립니다.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-e487b07f-ff02-46e3-819f-9393d1ddbe49\&quot;&gt;&lt;span id=\&quot;SE-eb6b3912-8e34-42db-8509-25582d686022\&quot;&gt;​&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;[방법1] URL을 카카오톡과 같은 SNS로 간편하게 공유하세요. 해당 URL에 접근하시면, edwith회원가입도 가능합니다.&lt;\u002fp&gt;&lt;p id=\&quot;SE-ec0e9f86-3515-467e-80a4-227df291f829\&quot;&gt;&lt;span style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;&lt;span id=\&quot;SE-1dd943d3-e311-451f-b2d2-5781aa9e51f3\&quot;&gt;00:06&lt;\u002fspan&gt;&lt;span id=\&quot;SE-08e4da3f-9a6c-4bb8-8956-5f1c7bebbcc1\&quot;&gt;&amp;nbsp;&lt;\u002fspan&gt;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-c8ae62cb-ddf6-4564-83e4-7ebfe899a15b\&quot;&gt;[방법2] 수강생 메일로 초대장 발송하기(메일발송)&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-c9d57b32-9e6f-4664-a131-9a3ac326aa9f\&quot;&gt;&lt;span id=\&quot;SE-cf5b5783-c01f-4514-b596-9abf2f8111bb\&quot; style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;00:30&lt;\u002fspan&gt;&lt;span id=\&quot;SE-feb161b1-552e-49d5-8f41-19ac77e863c8\&quot;&gt; &lt;\u002fspan&gt;&lt;span id=\&quot;SE-4c90ab2b-af43-4011-8347-cecb253a56ce\&quot;&gt;[방법3] 학생을 엑셀파일로 한번에 등록하기&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-43315b61-fdae-43df-8047-321008f5d73f\&quot;&gt;&lt;span id=\&quot;SE-b1531f2e-3c51-4148-b60e-f210fc2d976e\&quot; style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;01:14 &lt;\u002fspan&gt;&lt;span id=\&quot;SE-589b5de3-dad6-402f-bb00-367cba384f88\&quot;&gt;[방법4] 메일주소를 만들기 어려운 학생들을 위해, ID와 비밀번호 만들어 주기&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-832f9994-be7b-40c5-800f-634c527a2dcc\&quot;&gt;&lt;span id=\&quot;SE-bc65919b-e8ce-4172-a2d2-2669b1c1e5ea\&quot; style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;01:32&lt;\u002fspan&gt;&lt;span id=\&quot;SE-f50ef449-271f-4e24-9563-0adfdc3fff35\&quot;&gt;&amp;nbsp;수강생 튜터로 지정하거나 강제 탈퇴시키기&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&amp;nbsp;&lt;br&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;span style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&quot;,&quot;title&quot;:&quot;&quot;,&quot;isShowMaterial&quot;:false,&quot;isUploading&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;filename&quot;:&quot;&quot;,&quot;isCode&quot;:false,&quot;orgLectureId&quot;:65372,&quot;type&quot;:&quot;Text&quot;,&quot;isLoaded&quot;:true},{&quot;playerHeight&quot;:&quot;439px&quot;,&quot;isShowMaterial&quot;:false,&quot;orgLectureId&quot;:65372,&quot;contentType&quot;:&quot;video&quot;,&quot;type&quot;:&quot;Movie&quot;,&quot;downloadable&quot;:true,&quot;ext&quot;:&quot;mp4&quot;,&quot;id&quot;:171986,&quot;fileSize&quot;:0,&quot;title&quot;:&quot;복잡한 절차 없는 간편한 학생 등록하고 관리하기&quot;,&quot;indexOrTime&quot;:1,&quot;height&quot;:720,&quot;captions&quot;:[],&quot;attachmentId&quot;:144736,&quot;commonYn&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;thumbnailId&quot;:&quot;7708CCD769BA009E5A7F928155487839090E.5&quot;,&quot;resultCode&quot;:&quot;&quot;,&quot;downloadPath&quot;:&quot;/downloadFile/fileDownload?attachmentId=144736&quot;,&quot;videoManageStatus&quot;:&quot;SUCCESS&quot;,&quot;isParsed&quot;:true,&quot;pageCount&quot;:0,&quot;controlTime&quot;:[],&quot;userUploadedImage&quot;:&quot;&quot;,&quot;isUploading&quot;:false,&quot;status&quot;:5,&quot;width&quot;:1280,&quot;image&quot;:&quot;https://cphinf.pstatic.net/mooc/20200405_246/1586069370681iDoUF_JPEG/tGmcDdkkdVciFQOdRczO.jpg&quot;,&quot;viewType&quot;:&quot;left&quot;,&quot;playerWidth&quot;:&quot;720px&quot;,&quot;postId&quot;:28171,&quot;url&quot;:&quot;&quot;,&quot;playTime&quot;:126,&quot;filename&quot;:&quot;04_수강생 초대&amp;정보 변경하기.mp4&quot;,&quot;isCopied&quot;:false,&quot;videoIndexList&quot;:[{&quot;title&quot;:&quot;수강생 메일로 초대장 발송하기(메일발송)&quot;,&quot;runTime&quot;:{&quot;changedFormat&quot;:&quot;00:00:06&quot;,&quot;timeToSeconds&quot;:6},&quot;endTime&quot;:{&quot;changedFormat&quot;:&quot;00:00:29&quot;,&quot;timeToSeconds&quot;:29}},{&quot;title&quot;:&quot;엑셀로 한번에 수강생 등록하기(단, 학생들이 edwith에 가입되어있어야함)&quot;,&quot;runTime&quot;:{&quot;changedFormat&quot;:&quot;00:00:30&quot;,&quot;timeToSeconds&quot;:30},&quot;endTime&quot;:{&quot;changedFormat&quot;:&quot;00:01:13&quot;,&quot;timeToSeconds&quot;:73}},{&quot;title&quot;:&quot;메일주소를 만들기 어려운 학생들을 위해, ID와 비밀번호 만들어 주기&quot;,&quot;runTime&quot;:{&quot;changedFormat&quot;:&quot;00:01:14&quot;,&quot;timeToSeconds&quot;:74},&quot;endTime&quot;:{&quot;changedFormat&quot;:&quot;00:01:31&quot;,&quot;timeToSeconds&quot;:91}},{&quot;title&quot;:&quot;수강생 튜터로 지정하거나 강제 탈퇴시키기&quot;,&quot;runTime&quot;:{&quot;changedFormat&quot;:&quot;00:01:32&quot;,&quot;timeToSeconds&quot;:92},&quot;endTime&quot;:{&quot;changedFormat&quot;:&quot;00:02:00&quot;,&quot;timeToSeconds&quot;:120}}],&quot;isLoaded&quot;:true},{&quot;id&quot;:178355,&quot;title&quot;:&quot;&quot;,&quot;text&quot;:&quot;&lt;p&gt;&lt;span style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;※(4)기능에 대한 많은 선생님들의 요청사항으로,&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;span style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;빠른 시일내로 \&quot;엑셀로 한번에 수강생의 계정(ID/비밀번호)를 생성하는 기능\&quot;을 추가했습니다.&lt;\u002fspan&gt;&lt;\u002fp&gt;&quot;,&quot;isShowMaterial&quot;:false,&quot;lectureId&quot;:&quot;65372&quot;,&quot;isUploading&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;filename&quot;:&quot;&quot;,&quot;isCode&quot;:false,&quot;orgLectureId&quot;:65372,&quot;courseId&quot;:&quot;5094&quot;,&quot;type&quot;:&quot;Text&quot;,&quot;isLoaded&quot;:true},{&quot;isParsed&quot;:false,&quot;pageCount&quot;:0,&quot;isShowMaterial&quot;:true,&quot;isUploading&quot;:false,&quot;width&quot;:1440,&quot;at&quot;:0,&quot;image&quot;:&quot;https://cphinf.pstatic.net/mooc/20200409_149/1586426994234g5sXl_PNG/___ID_.png&quot;,&quot;orgLectureId&quot;:65372,&quot;viewType&quot;:&quot;top&quot;,&quot;type&quot;:&quot;Image&quot;,&quot;url&quot;:&quot;https://cphinf.pstatic.net/mooc/20200409_149/1586426994234g5sXl_PNG/___ID_.png&quot;,&quot;postId&quot;:0,&quot;ext&quot;:&quot;png&quot;,&quot;id&quot;:178338,&quot;fileSize&quot;:261094,&quot;title&quot;:&quot;&quot;,&quot;playTime&quot;:0,&quot;height&quot;:1440,&quot;attachmentId&quot;:152926,&quot;commonYn&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;resultCode&quot;:&quot;&quot;,&quot;downloadPath&quot;:&quot;/downloadFile/fileDownload?attachmentId=152926&quot;,&quot;filename&quot;:&quot;에드위드 온라인클래스_학생에게 ID비밀번호 생성해주기.png&quot;,&quot;isCopied&quot;:false,&quot;isLoaded&quot;:true},{&quot;id&quot;:171987,&quot;text&quot;:&quot;&lt;p&gt;&lt;span style=\&quot;font-size: 18pt; color: rgb(0, 128, 0);\&quot; data-mce-style=\&quot;font-size: 18pt; color: #008000;\&quot;&gt;&lt;strong&gt;[방법1]&amp;nbsp;URL을 학생들에게 공유하기&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;① 만드신 강좌의 URL을 복사해서 카톡, 메일 등으로 학생들에게 보내주세요.&lt;\u002fp&gt;&lt;p&gt;② 학생은 그 URL을 통해 강좌로 진입하고 나서 [수강신청]을 클릭하여 신청합니다.&lt;\u002fp&gt;&lt;p&gt;③ 회원가입이 되어있지 않아도, 강좌 URL을 통해서 회원가입 가능합니다.&lt;\u002fp&gt;&quot;,&quot;title&quot;:&quot;&quot;,&quot;isShowMaterial&quot;:false,&quot;isUploading&quot;:false,&quot;lectureId&quot;:&quot;65354&quot;,&quot;description&quot;:&quot;&quot;,&quot;filename&quot;:&quot;&quot;,&quot;isCode&quot;:false,&quot;orgLectureId&quot;:65372,&quot;courseId&quot;:&quot;4536&quot;,&quot;type&quot;:&quot;Text&quot;,&quot;isLoaded&quot;:true},{&quot;isParsed&quot;:false,&quot;pageCount&quot;:0,&quot;isShowMaterial&quot;:true,&quot;isUploading&quot;:false,&quot;width&quot;:914,&quot;at&quot;:0,&quot;image&quot;:&quot;https://cphinf.pstatic.net/mooc/20200405_154/1586070780521qacOY_PNG/URL__.png&quot;,&quot;orgLectureId&quot;:65372,&quot;viewType&quot;:&quot;top&quot;,&quot;type&quot;:&quot;Image&quot;,&quot;url&quot;:&quot;https://cphinf.pstatic.net/mooc/20200405_154/1586070780521qacOY_PNG/URL__.png&quot;,&quot;postId&quot;:0,&quot;ext&quot;:&quot;png&quot;,&quot;id&quot;:171988,&quot;fileSize&quot;:197902,&quot;title&quot;:&quot;&quot;,&quot;playTime&quot;:0,&quot;height&quot;:848,&quot;attachmentId&quot;:144737,&quot;commonYn&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;resultCode&quot;:&quot;&quot;,&quot;downloadPath&quot;:&quot;/downloadFile/fileDownload?attachmentId=144737&quot;,&quot;filename&quot;:&quot;URL을 학생에게 공유하기.png&quot;,&quot;isCopied&quot;:false,&quot;isLoaded&quot;:true},{&quot;id&quot;:171989,&quot;text&quot;:&quot;&lt;div&gt;&lt;p&gt;&lt;span style=\&quot;font-size: 18pt;\&quot; data-mce-style=\&quot;font-size: 18pt;\&quot;&gt;&lt;strong&gt;&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;span style=\&quot;font-size: 18pt;\&quot; data-mce-style=\&quot;font-size: 18pt;\&quot;&gt;&lt;strong&gt;&lt;span style=\&quot;color: rgb(0, 128, 0);\&quot; data-mce-style=\&quot;color: #008000;\&quot;&gt;[방법2] 수강생 메일로 초대장 발송하기(메일발송)&lt;\u002fspan&gt;&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;강좌개설의 마무리 단계에서 수강생의 가입을 유도시키거나 직접 수강생에게 초대 메일을 보낼 수 있습니다.&lt;br&gt;초대기능을 통해 나의 강좌를 알리고 수강신청을 받아볼까요?&lt;\u002fp&gt;&lt;p&gt;&amp;nbsp;&lt;\u002fp&gt;&lt;p&gt;수강생&lt;\u002fp&gt;&lt;p&gt;1. 강좌관리에서 좌측 메뉴의 \&quot;수강생 초대\&quot;를 클릭하세요!&lt;\u002fp&gt;&lt;p&gt;2. 한번에 1~10명까지 초대메일을 보낼 수 있습니다.&lt;\u002fp&gt;&lt;p&gt;3. 수강생이 각자의 메일함에서 \&quot;초대에 응하기\&quot; 버튼을 누르면, 내 강좌에 소개페이지에 접근하여 수강신청할 수 있습니다.&lt;\u002fp&gt;&lt;p&gt;&amp;nbsp;&lt;\u002fp&gt;&lt;\u002fdiv&gt;&lt;div&gt;&amp;nbsp;&lt;\u002fdiv&gt;&quot;,&quot;title&quot;:&quot;&quot;,&quot;isShowMaterial&quot;:false,&quot;isUploading&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;filename&quot;:&quot;&quot;,&quot;isCode&quot;:false,&quot;orgLectureId&quot;:65372,&quot;type&quot;:&quot;Text&quot;,&quot;isLoaded&quot;:true,&quot;plainText&quot;:&quot;&lt;div&gt;&lt;p&gt;강좌개설의 마무리 단계에서 수강생의 가입을 유도시키거나 직접 수강생에게 초대 메일을 보낼 수 있습니다.&lt;br&gt;초대기능을 통해 나의 강좌를 알리고 수강신청을 받아볼까요?&lt;\u002fp&gt;&lt;p&gt;&lt;br data-mce-bogus=\&quot;1\&quot;&gt;&lt;\u002fp&gt;&lt;p&gt;수강생&lt;\u002fp&gt;&lt;p&gt;1. 강좌관리에서 좌측 메뉴의 \&quot;수강생 초대\&quot;를 클릭하세요!&lt;\u002fp&gt;&lt;p&gt;2. 한번에 1~10명까지 초대메일을 보낼 수 있습니다.&lt;\u002fp&gt;&lt;p&gt;3. 수강생이 각자의 메일함에서 \&quot;초대에 응하기\&quot; 버튼을 누르면, 내 강좌에 소개페이지에 접근하여 수강신청할 수 있습니다.&lt;\u002fp&gt;&lt;p&gt;&lt;br data-mce-bogus=\&quot;1\&quot;&gt;&lt;\u002fp&gt;&lt;\u002fdiv&gt;&lt;div&gt;&lt;div&gt;&lt;div&gt;&lt;div&gt;&lt;\u002fdiv&gt;&lt;\u002fdiv&gt;&lt;\u002fdiv&gt;&lt;\u002fdiv&gt;&quot;},{&quot;videoHeight&quot;:0,&quot;isShowMaterial&quot;:true,&quot;orgLectureId&quot;:65372,&quot;contentType&quot;:&quot;image&quot;,&quot;courseId&quot;:&quot;4536&quot;,&quot;type&quot;:&quot;Url&quot;,&quot;ext&quot;:&quot;&quot;,&quot;imageOrg&quot;:&quot;&quot;,&quot;id&quot;:171990,&quot;title&quot;:&quot;edwith 온라인클래스 활용TIp 메일로 수강생에게 초대장 보내기&quot;,&quot;indexOrTime&quot;:-1,&quot;height&quot;:&quot;&quot;,&quot;captions&quot;:[],&quot;lectureId&quot;:&quot;61937&quot;,&quot;commonYn&quot;:false,&quot;description&quot;:&quot;더 자세한 내용을 보고 싶으시다면, edwith 공식블로그에서 확인하세요!&quot;,&quot;sourceName&quot;:&quot;BLOG&quot;,&quot;thumbnailId&quot;:&quot;&quot;,&quot;video&quot;:&quot;&quot;,&quot;controlTime&quot;:[],&quot;userUploadedImage&quot;:&quot;&quot;,&quot;isUploading&quot;:false,&quot;width&quot;:&quot;&quot;,&quot;image&quot;:&quot;https://cphinf.pstatic.net/mooc/20200317_250/15844286869506kw6D_PNG/r3wC87akScacD1qKYq4X.png?type=ffn199_148&quot;,&quot;videoWidth&quot;:0,&quot;videoSourceId&quot;:0,&quot;viewType&quot;:&quot;left&quot;,&quot;url&quot;:&quot;https://blog.naver.com/edwith/221050732874&quot;,&quot;videoType&quot;:&quot;&quot;,&quot;duration&quot;:&quot;&quot;,&quot;playTime&quot;:0,&quot;filename&quot;:&quot;&quot;,&quot;isLoaded&quot;:true},{&quot;id&quot;:171991,&quot;text&quot;:&quot;&lt;p&gt;&lt;span style=\&quot;font-size: 18pt; color: #008000;\&quot; data-mce-style=\&quot;font-size: 18pt; color: #008000;\&quot;&gt;&lt;strong&gt;[방법3] 학생을 엑셀파일로 한번에 등록하기&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;학생들에게 URL을 공유하여 자율적으로 수강신청하기를 기다릴 수도 있지만,&lt;\u002fp&gt;&lt;p&gt;수강생들을 한번에 엑셀파일로 등록하고 싶지 않으신가요?&lt;\u002fp&gt;&lt;p id=\&quot;SE-3ee0b086-4e89-4348-867f-a295300e688b\&quot;&gt;&lt;span id=\&quot;SE-214a6b06-fa8e-4795-96a9-726655a049f3\&quot;&gt;엑셀파일로 수강생들을 한번에 등록하는 방법을 공유드립니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&amp;nbsp;&lt;\u002fp&gt;&lt;p&gt;1. 학생들에게 edwith에 가입하라고 안내한 뒤, edwith에 가입한 메일 주소를 취합하세요!&lt;\u002fp&gt;&lt;p&gt;2. 강좌관리에서 좌측 메뉴의 \&quot;구성원 관리\&quot;를 클릭하세요.&lt;\u002fp&gt;&lt;p&gt;3. \&quot;메일로 수강생 추가하기\&quot;와 \&quot;메일이 없는 수강생 추가하기\&quot; 중 [메일로 수강생 추가하기]를 클릭하면,&amp;nbsp;수강생의 이메일을 직접 엑셀 파일로 일괄 등록시킬 수 있는 팝업이 뜹니다!&lt;\u002fp&gt;&lt;p&gt;4. 수강생들의 edwith에 가입한 메일계정들을 기입한 엑셀파일을 업로드해주세요!&lt;\u002fp&gt;&lt;p id=\&quot;SE-54dc77a8-9c98-4d6e-af6f-77d62c36c402\&quot;&gt;&lt;span id=\&quot;SE-379e2087-baa1-4a0f-9932-d0ee3860f673\&quot;&gt;등록하고 나면 학생들은 자동으로 선생님의 강좌의 수강신청 처리가 완료되어 바로 강좌안에서 학습이 가능합니다.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&amp;nbsp;&lt;\u002fp&gt;&lt;p&gt;&lt;span id=\&quot;SE-f6e4887f-4360-458b-a191-3b498e312a93\&quot;&gt;선생님에 의해 등록된 학생들은 로그인후에 &lt;\u002fspan&gt;&lt;span id=\&quot;SE-780311e5-42b1-4263-8d1e-986b54858cad\&quot;&gt;&lt;strong&gt;선생님이 만든 모든 강좌들에 대해&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-bc1b8927-3d95-45f3-b0a1-2b73d58e734d\&quot;&gt; 별도의 수강신청 승인 없이 바로 참여가 가능해서 참 편리하답니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&quot;,&quot;title&quot;:&quot;&quot;,&quot;isShowMaterial&quot;:false,&quot;isUploading&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;filename&quot;:&quot;&quot;,&quot;isCode&quot;:false,&quot;orgLectureId&quot;:65372,&quot;type&quot;:&quot;Text&quot;,&quot;isLoaded&quot;:true,&quot;plainText&quot;:&quot;&lt;p id=\&quot;SE-7a0f57a6-953e-4c11-ade9-96c1fa2e1f9a\&quot;&gt;&lt;span id=\&quot;SE-cfb065f2-6490-4d29-a633-311c5366070d\&quot;&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;학생들에게 URL을 공유하여 자율적으로 수강신청하기를 기다릴 수도 있지만,&lt;\u002fp&gt;&lt;p&gt;수강생들을 한번에 엑셀파일로 등록하고 싶지 않으신가요?&lt;\u002fp&gt;&lt;p id=\&quot;SE-3ee0b086-4e89-4348-867f-a295300e688b\&quot;&gt;&lt;span id=\&quot;SE-214a6b06-fa8e-4795-96a9-726655a049f3\&quot;&gt;엑셀파일로 수강생들을 한번에 등록하는 방법을 공유드립니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;br data-mce-bogus=\&quot;1\&quot;&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;span style=\&quot;font-size: 14pt; color: rgb(51, 153, 102);\&quot; data-mce-style=\&quot;font-size: 14pt; color: #339966;\&quot;&gt;&lt;strong&gt;수강생을 엑셀파일로 한번에 등록하기&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;1. 학생들에게 edwith에 가입하라고 안내한 뒤, edwith에 가입한 메일 주소를 취합하세요!&lt;\u002fp&gt;&lt;p&gt;2. 강좌관리에서 좌측 메뉴의 \&quot;구성원 관리\&quot;를 클릭하세요.&lt;\u002fp&gt;&lt;p&gt;3. \&quot;메일로 수강생 추가하기\&quot;와 \&quot;메일이 없는 수강생 추가하기\&quot; 중 [메일로 수강생 추가하기]를 클릭하면,&amp;nbsp;수강생의 이메일을 직접 엑셀 파일로 일괄 등록시킬 수 있는 팝업이 뜹니다!&lt;\u002fp&gt;&lt;p&gt;4. 수강생들의 edwith에 가입한 메일계정들을 기입한 엑셀파일을 업로드해주세요!&lt;\u002fp&gt;&lt;p id=\&quot;SE-54dc77a8-9c98-4d6e-af6f-77d62c36c402\&quot;&gt;&lt;span id=\&quot;SE-379e2087-baa1-4a0f-9932-d0ee3860f673\&quot;&gt;등록하고 나면 학생들은 자동으로 선생님의 강좌의 수강신청 처리가 완료되어 바로 강좌안에서 학습이 가능합니다.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;br data-mce-bogus=\&quot;1\&quot;&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;span id=\&quot;SE-f6e4887f-4360-458b-a191-3b498e312a93\&quot;&gt;선생님에 의해 등록된 학생들은 로그인후에 &lt;\u002fspan&gt;&lt;span id=\&quot;SE-780311e5-42b1-4263-8d1e-986b54858cad\&quot;&gt;&lt;strong&gt;선생님이 만든 모든 강좌들에 대해&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-bc1b8927-3d95-45f3-b0a1-2b73d58e734d\&quot;&gt; 별도의 수강신청 승인 없이 바로 참여가 가능해서 참 편리하답니다!&lt;\u002fspan&gt;&lt;br&gt;&lt;\u002fp&gt;&quot;},{&quot;videoHeight&quot;:0,&quot;isShowMaterial&quot;:true,&quot;orgLectureId&quot;:65372,&quot;contentType&quot;:&quot;image&quot;,&quot;courseId&quot;:&quot;4536&quot;,&quot;type&quot;:&quot;Url&quot;,&quot;ext&quot;:&quot;&quot;,&quot;imageOrg&quot;:&quot;&quot;,&quot;id&quot;:171992,&quot;title&quot;:&quot;edwith 온라인클래스 활용Tip 학생을 엑셀파일로 한번에 등록하기&quot;,&quot;indexOrTime&quot;:-1,&quot;height&quot;:&quot;&quot;,&quot;captions&quot;:[],&quot;lectureId&quot;:&quot;61938&quot;,&quot;commonYn&quot;:false,&quot;description&quot;:&quot;더 자세한 내용은 edwith공식블로그에서 확인하세요!&quot;,&quot;sourceName&quot;:&quot;BLOG&quot;,&quot;thumbnailId&quot;:&quot;&quot;,&quot;video&quot;:&quot;&quot;,&quot;controlTime&quot;:[],&quot;userUploadedImage&quot;:&quot;&quot;,&quot;isUploading&quot;:false,&quot;width&quot;:&quot;&quot;,&quot;image&quot;:&quot;https://cphinf.pstatic.net/mooc/20200317_109/1584429349150jijpc_JPEG/8fkJ68jDo2BZrpb7cdCX.jpg?type=ffn199_148&quot;,&quot;videoWidth&quot;:0,&quot;videoSourceId&quot;:0,&quot;viewType&quot;:&quot;left&quot;,&quot;url&quot;:&quot;https://blog.naver.com/edwith/221050733359&quot;,&quot;videoType&quot;:&quot;&quot;,&quot;duration&quot;:&quot;&quot;,&quot;playTime&quot;:0,&quot;filename&quot;:&quot;&quot;,&quot;isLoaded&quot;:true},{&quot;id&quot;:171993,&quot;text&quot;:&quot;&lt;p&gt;&lt;span style=\&quot;font-size: 18pt; color: rgb(0, 128, 0);\&quot; data-mce-style=\&quot;font-size: 18pt; color: #008000;\&quot;&gt;&lt;strong&gt;[방법4]&amp;nbsp;메일주소를 만들기 어려운 학생들을 위해, ID와 비밀번호 만들어 주기&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-7a0f57a6-953e-4c11-ade9-96c1fa2e1f9a\&quot;&gt;&lt;span id=\&quot;SE-cfb065f2-6490-4d29-a633-311c5366070d\&quot;&gt;우리 학생들을 edwith에 초대하기에 앞서&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-834ca0f7-050a-403a-83bc-0f1479656e13\&quot;&gt;이메일주소가 없는 학생들은 계정을 만들때 로그인에 어려움을 겪을 수 있을텐데요&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-3ee0b086-4e89-4348-867f-a295300e688b\&quot;&gt;&lt;span id=\&quot;SE-214a6b06-fa8e-4795-96a9-726655a049f3\&quot;&gt;강좌에 어려운 절차 없이 학생들을 초대하기 위해서&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-f74a01af-2010-4628-bb2a-7958e72a3707\&quot;&gt;교수자가 직접 학생들의 계정을 만들어 줄 수 있습니다.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-ef89c63a-15ab-40a2-8e96-aad6e123dce5\&quot;&gt;&lt;span id=\&quot;SE-e68cae08-ea12-458e-a444-f72f0a742aaf\&quot;&gt;학습자들은 별도의 가입 절차 없이 선생님이 공지한 ID와 패스워드만 알고 있으면,&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-7c41c1b5-1817-4ece-8226-055de323042a\&quot;&gt;강좌를 수강할 수 있으니 참 간편합니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;br&gt;&lt;\u002fp&gt;&lt;p&gt;1. 강좌관리에서 좌측 메뉴의 \&quot;구성원 관리\&quot;를 클릭하세요!&lt;\u002fp&gt;&lt;p&gt;2. \&quot;메일로 수강생 추가하기\&quot;와 \&quot;메일이 없는 수강생 추가하기\&quot; 중 \&quot;메일이 없는 수강생 추가하기\&quot;를 눌러주세요!&lt;\u002fp&gt;&lt;p&gt;3. 우리반 학생들이 쉽게 로그인을 할 수 있도록 직접 ID와 패스워드를 생성해주세요!&lt;\u002fp&gt;&lt;p&gt;&amp;nbsp;&lt;br&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-726add07-b661-4ad5-a2c9-d60fc1fd23b2\&quot;&gt;&lt;span id=\&quot;SE-0d687a52-5bec-4bd2-912c-bb436528434a\&quot;&gt;이메일이 없는 학생일 경우 [메일이 없는 수강생 추가하기]의 등록하기 버튼을 클릭하면 학생들의 ID와 임의 비밀번호를 지정하여 계정을 만들어줄 수 있어요.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-70717a31-05c4-4188-8bad-d75524a11be4\&quot;&gt;&lt;span id=\&quot;SE-3eae85a1-31f3-4b44-a8e2-5b03d853d7af\&quot;&gt;&lt;strong&gt;기억하기 쉬운 비밀번호 또는 랜덤으로 제공하는 비밀번호&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-224bc9bb-5c61-4789-85e4-c52a18de02ea\&quot;&gt;를 잘 기억해 두셨다가 학생들에게 알려주어야 겠죠? 한명씩 ID를 작성하고 추가해서 계속 등록을 해보세요.&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-f7742b21-6782-4b40-a59d-1a22ce96429b\&quot;&gt;이후 학생들에게 ID와 비밀번호를 전달하고 로그인 안내를 해주세요.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-9237c957-f9e1-43fd-b5de-1ee4ed862a33\&quot;&gt;&lt;span id=\&quot;SE-8a19e62b-8266-4aa1-8876-253b9c0d53be\&quot;&gt;​&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-1764fa3c-aa0c-4a43-9d2d-b5ab36f346f8\&quot;&gt;&lt;span id=\&quot;SE-f6e4887f-4360-458b-a191-3b498e312a93\&quot;&gt;선생님에 의해 등록된 학생들은 로그인후에 &lt;\u002fspan&gt;&lt;span id=\&quot;SE-780311e5-42b1-4263-8d1e-986b54858cad\&quot;&gt;&lt;strong&gt;선생님이 만든 모든 강좌들에 대해&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-bc1b8927-3d95-45f3-b0a1-2b73d58e734d\&quot;&gt; 별도의 수강신청 승인 없이 바로 참여가 가능해서 참 편리하답니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;span style=\&quot;color: rgb(0, 0, 255);\&quot; data-mce-style=\&quot;color: #0000ff;\&quot;&gt;※많은 선생님들의 요청사항으로,\&quot;엑셀로 한번에 수강생의 계정(ID/비밀번호)를 생성하는 기능\&quot;을 추가했습니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&quot;,&quot;title&quot;:&quot;&quot;,&quot;isShowMaterial&quot;:false,&quot;isUploading&quot;:false,&quot;description&quot;:&quot;&quot;,&quot;filename&quot;:&quot;&quot;,&quot;isCode&quot;:false,&quot;orgLectureId&quot;:65372,&quot;type&quot;:&quot;Text&quot;,&quot;isLoaded&quot;:true,&quot;plainText&quot;:&quot;&lt;p id=\&quot;SE-7a0f57a6-953e-4c11-ade9-96c1fa2e1f9a\&quot;&gt;&lt;span id=\&quot;SE-cfb065f2-6490-4d29-a633-311c5366070d\&quot;&gt;우리 학생들을 edwith에 초대하기에 앞서&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-834ca0f7-050a-403a-83bc-0f1479656e13\&quot;&gt;이메일주소가 없는 학생들은 계정을 만들때 로그인에 어려움을 겪을 수 있을텐데요&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-3ee0b086-4e89-4348-867f-a295300e688b\&quot;&gt;&lt;span id=\&quot;SE-214a6b06-fa8e-4795-96a9-726655a049f3\&quot;&gt;강좌에 어려운 절차 없이 학생들을 초대하기 위해서&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-f74a01af-2010-4628-bb2a-7958e72a3707\&quot;&gt;교수자가 직접 학생들의 계정을 만들어 줄 수 있습니다.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-ef89c63a-15ab-40a2-8e96-aad6e123dce5\&quot;&gt;&lt;span id=\&quot;SE-e68cae08-ea12-458e-a444-f72f0a742aaf\&quot;&gt;학습자들은 별도의 가입 절차 없이 선생님이 공지한 ID와 패스워드만 알고 있으면,&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-7c41c1b5-1817-4ece-8226-055de323042a\&quot;&gt;강좌를 수강할 수 있으니 참 간편합니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p&gt;&lt;br&gt;&lt;\u002fp&gt;&lt;p&gt;1. 강좌관리에서 좌측 메뉴의 \&quot;구성원 관리\&quot;를 클릭하세요!&lt;\u002fp&gt;&lt;p&gt;2. \&quot;메일로 수강생 추가하기\&quot;와 \&quot;메일이 없는 수강생 추가하기\&quot; 중 \&quot;메일이 없는 수강생 추가하기\&quot;를 눌러주세요!&lt;\u002fp&gt;&lt;p&gt;3. 우리반 학생들이 쉽게 로그인을 할 수 있도록 직접 ID와 패스워드를 생성해주세요!&lt;\u002fp&gt;&lt;p&gt;&lt;br data-mce-bogus=\&quot;1\&quot;&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-726add07-b661-4ad5-a2c9-d60fc1fd23b2\&quot;&gt;&lt;span id=\&quot;SE-0d687a52-5bec-4bd2-912c-bb436528434a\&quot;&gt;이메일이 없는 학생일 경우 [메일이 없는 수강생 추가하기]의 등록하기 버튼을 클릭하면 학생들의 ID와 임의 비밀번호를 지정하여 계정을 만들어줄 수 있어요.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-70717a31-05c4-4188-8bad-d75524a11be4\&quot;&gt;&lt;span id=\&quot;SE-3eae85a1-31f3-4b44-a8e2-5b03d853d7af\&quot;&gt;&lt;strong&gt;기억하기 쉬운 비밀번호 또는 랜덤으로 제공하는 비밀번호&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-224bc9bb-5c61-4789-85e4-c52a18de02ea\&quot;&gt;를 잘 기억해 두셨다가 학생들에게 알려주어야 겠죠? 한명씩 ID를 작성하고 추가해서 계속 등록을 해보세요.&amp;nbsp;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-f7742b21-6782-4b40-a59d-1a22ce96429b\&quot;&gt;이후 학생들에게 ID와 비밀번호를 전달하고 로그인 안내를 해주세요.&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-9237c957-f9e1-43fd-b5de-1ee4ed862a33\&quot;&gt;&lt;span id=\&quot;SE-8a19e62b-8266-4aa1-8876-253b9c0d53be\&quot;&gt;​&lt;\u002fspan&gt;&lt;\u002fp&gt;&lt;p id=\&quot;SE-1764fa3c-aa0c-4a43-9d2d-b5ab36f346f8\&quot;&gt;&lt;span id=\&quot;SE-f6e4887f-4360-458b-a191-3b498e312a93\&quot;&gt;선생님에 의해 등록된 학생들은 로그인후에 &lt;\u002fspan&gt;&lt;span id=\&quot;SE-780311e5-42b1-4263-8d1e-986b54858cad\&quot;&gt;&lt;strong&gt;선생님이 만든 모든 강좌들에 대해&lt;\u002fstrong&gt;&lt;\u002fspan&gt;&lt;span id=\&quot;SE-bc1b8927-3d95-45f3-b0a1-2b73d58e734d\&quot;&gt; 별도의 수강신청 승인 없이 바로 참여가 가능해서 참 편리하답니다!&lt;\u002fspan&gt;&lt;\u002fp&gt;&quot;},{&quot;videoHeight&quot;:0,&quot;isShowMaterial&quot;:true,&quot;orgLectureId&quot;:65372,&quot;contentType&quot;:&quot;image&quot;,&quot;courseId&quot;:&quot;4536&quot;,&quot;type&quot;:&quot;Url&quot;,&quot;ext&quot;:&quot;&quot;,&quot;imageOrg&quot;:&quot;&quot;,&quot;id&quot;:171994,&quot;title&quot;:&quot;edwith 온라인클래스 활용Tip 수강생이 이메일이 없을때는 어떻게 하죠?&quot;,&quot;indexOrTime&quot;:-1,&quot;height&quot;:&quot;&quot;,&quot;captions&quot;:[],&quot;lectureId&quot;:&quot;61938&quot;,&quot;commonYn&quot;:false,&quot;description&quot;:&quot;더 자세한 내용은 edwith공식블로그에서 확인하세요!&quot;,&quot;sourceName&quot;:&quot;BLOG&quot;,&quot;thumbnailId&quot;:&quot;&quot;,&quot;video&quot;:&quot;&quot;,&quot;controlTime&quot;:[],&quot;userUploadedImage&quot;:&quot;&quot;,&quot;isUploading&quot;:false,&quot;width&quot;:&quot;&quot;,&quot;image&quot;:&quot;https://cphinf.pstatic.net/mooc/20200317_109/1584429349150jijpc_JPEG/8fkJ68jDo2BZrpb7cdCX.jpg?type=ffn199_148&quot;,&quot;videoWidth&quot;:0,&quot;videoSourceId&quot;:0,&quot;viewType&quot;:&quot;left&quot;,&quot;url&quot;:&quot;https://blog.naver.com/edwith/221050733359&quot;,&quot;videoType&quot;:&quot;&quot;,&quot;duration&quot;:&quot;&quot;,&quot;playTime&quot;:0,&quot;filename&quot;:&quot;&quot;,&quot;isLoaded&quot;:true}]'>
<input type="hidden" id="__COURSENAME" data-selector="courseName" value="onlineclass-tutorial">
<script src="https://www.edwith.org/static/js/vendor/prismplayer-pc/dist/index.js?231109_47a067d4"></script>
<link rel="stylesheet" type="text/css" href="https://www.edwith.org/static/js/vendor/prismplayer-pc/dist/main.css?231109_47a067d4">
<script src="https://www.edwith.org/static/js/src/entries/common/_material.entry.browserfied.min.js?231109_47a067d4"></script>


<style type="text/css">
    .u_cbox .u_cbox_content_layer {
        position: absolute;
        left: 0;
        bottom: auto;
        width: 100%;
        text-align: center;
        z-index: 10;
    }

    .pzp.pzp-pc {
        width: 100% !important;
        height: 100% !important;
    }

    .pzp-pc-seeking-preview__time {
        left: 0;
    }

    .pzp-pc--fullscreen .pzp-pc-viewmode-button {
        display: none !important;
    }
</style>

<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_material.entry.js");
        entry.initialize({
            welTarget: $(".ce_view"),
            data: {
                courseName: $("#__COURSENAME").val(),
                materials: $.parseJSON($("#__MATERIALS").val()),
                isEditable: false,
                userId: '2668417',
                courseId: '5094',
                lectureId: '65372',
                videoType: 'LECTURE',    // 강의 상세페이지와 정보 페이지는 이 곳을 같이 사용하고 있네요.
                videoTypeId: '65372',
                isOpenAll: true,
                liveInfo: {
                    isLiveOpened: false,
                    recentLiveStartTime: "",
                    recentLiveEndTime: "",
                    reservationStartTime: "",
                    reservationEndTime: "",
                    streamType: "NOVA",
                    isShowLiveMaterial: true
                }
            }
        });
    });
</script>
<script src="https://www.edwith.org/static/js/plugins/ntsYoutubeConnecter.1.0.min.js"></script>

    </div>

    

    <div class="share NE=a:lec">
        

        <div class="group_lr">
            <div class="group_l">
                
                
    <div class="sns_area _content_sns_area">
        <button type="button" class="btn btn_type17 bold" data-sns-share>공유하기</button>
        <!-- [D] 활성화 시 class="on"추가, URL 복사만 출력할 경우 class="type2 추가" -->
        <div class="sns_layer " data-sns-layer>
            <div class="inner">
                <a href="#" class="ico_url" data-type="urlCopy" data-clipboard-text="http://www.edwith.org/onlineclass-tutorial/lecture/65372">URL복사</a>
                
                    <a href="#" class="ico_band" data-type="band">밴드</a>
                    <a href="#" class="ico_facebook" data-type="facebook">페이스북</a>
                    <a href="#" class="ico_twitter" data-type="twitter">트위터</a>
                
            </div>
            
        </div>
    </div>
    <div id="_band_share_content" style="display:none">퀵하게 학생 등록하는 방법 4가지!
&nbsp;학생들을 수강신청하라고 가이드하는 것이 늘 어려우셨나요? 학생들이 어려서 메일 주소가 없으신가요? edwith가 4가지 방법을 공유드립니다. ​ [방법1] URL을 카카오톡과 같...
- edwith</div>
    <div id="_twitter_share_content" style="display:none">퀵하게 학생 등록하는 방법 4가지!
&nbsp;학생들을 수강신청하라고 가이드하는 것이 늘 어려우셨나요? 학생들이 어려서 메일 주소가 없으신가요? edwith가 4가지 방법을 공유드립니다. ​ [방법1] URL을 카카오톡과 같...
- edwith</div>

    <script src="https://www.edwith.org/static/js/src/entries/common/_sns.share.service.entry.browserfied.min.js?231109_47a067d4"></script>
    <script>
        $(document).ready(function(){
            var entry = require("/entries/common/_sns.share.service.entry.js");
            var snsShareContentHtData = {
                facebook : ['http://www.edwith.org/onlineclass-tutorial/lecture/65372', '1441124829481137', 'http://www.edwith.org/popupClose'],
                twitter : ['http://www.edwith.org/onlineclass-tutorial/lecture/65372', $("#_twitter_share_content").text(),  '',  ''],
                googlePlus : ['http://www.edwith.org/onlineclass-tutorial/lecture/65372'],
                band : ['http://www.edwith.org/onlineclass-tutorial/lecture/65372', $("#_band_share_content").text()],
                url: 'http://www.edwith.org/onlineclass-tutorial/lecture/65372'
            };
            entry.initialize($('._content_sns_area'), snsShareContentHtData);
        });
    </script>

                <!-- // 공유하기 -->
                
                    <button class="btn_lecture_like " data-btn-like data-count-num="10">
                        좋아요

                        
                            10
                        
                    </button>
                
                <!-- // 좋아요 -->
            </div>
        </div>

        
        
            <!-- comment -->
            <div class="cmt_group" id="comment">
                <nav class="nav_tab3">
                    <ul>
                        
                            <li class="active" data-btn-comment><a href="#" id="_wrap_comment_count">댓글  </a></li>
                        
                        
                            <li  data-btn-forum>
                                <a href="#" id="_wrap_forum_count">연관 토론  </a>
                            </li>
                        
                    </ul>
                </nav>

                
                    <div class="new_comment_wrap">
                        <section class="comment" id="_wrap_comment">
                            <h3 class="sr_only">comment</h3>
                            <!--댓글 등록 폼-->
                            <div class="se_wrap" data-editor></div>
                            <!--//댓글 등록 폼-->
                            <div class="live_tab_wrap">
                                <div class="group_l">
                                    <ul class="tab_list">
                                        <li class="tab selected" data-sort-tab="regYmdt"><a href="#">최신순</a></li>
                                        <li class="tab" data-sort-tab="id"><a href="#">등록순</a></li>
                                        <li class="tab" data-sort-tab="voteCount"><a href="#">추천순</a></li>
                                    </ul>
                                </div>
                                <div class="group_r">
                                    <div class="btn_mine_box">
                                        <span class="text">나의 글만 보기</span>
                                        <button type="button" class="btn_mine" title="나의 글만 보기" data-my-comments>
                                            <span class="ico_mine">OFF</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="comment_list">
                                <ul id="_wrap_comment_list"></ul>
                            </div>
                            <!--댓글 paginate : start -->
                            <div class="group_lr mat40">
                                <nav class="paginate" role="navigation" id="_wrap_page_navi" style="display:none;">
                                    <h4 class="sr_only">페이지 이동</h4>

                                    <div class="inner">
                                        <a href="#" class="pre_end disabled" data-pg-first><span class="sr_only">First</span></a>
                                        <a href="#" class="pre" data-pg-prev>Prev</a>
                                        <ul class="page_list" data-pg-number>
                                        </ul>
                                        <a href="#" class="next" data-pg-next>Next</a>
                                        <a href="#" class="next_end" data-pg-last><span class="sr_only">Last</span></a>
                                    </div>
                                </nav>
                            </div>
                            <!--댓글 paginate : end -->
                        </section>
                    </div>
                
                <!--//comment-->

                
                    <div id="_wrap_forum" style="display: none">
                        <ul class="forum_list comment_forum _warp_forum_list">
                        </ul>

                        <nav class="paginate" role="navigation" id="_wrap_forum_page_navi" style="display:none;">
                            <h4 class="sr_only">페이지 이동</h4>

                            <div class="inner">
                                <a href="#" class="pre_end disabled" data-pg-first><span class="sr_only">First</span></a>
                                <a href="#" class="pre" data-pg-prev>이전</a>
                                <ul class="page_list" data-pg-number>
                                </ul>
                                <a href="#" class="next" data-pg-next>다음</a>
                                <a href="#" class="next_end" data-pg-last><span class="sr_only">Last</span></a>
                            </div>
                        </nav>
                    </div>
                
            </div>
            <div id="comment_loader"></div>
        
    </div>

    <div class="new_boost_btm">
        <div class="group_lr">
            
                <div class="group_r">
                    
                    
                        <button type="button" class="btn btn_type15 clr" data-selector="tglLearningCompletion" data-role="completed">
                            수강완료
                        </button>
                    
                    <div class="bubb type3" data-wrap="tooltip" style="display:none;top:-68px;right:40px;" data-tooltip-end>
                        <strong>수강이 완료되었습니다.</strong>
                        <a href="#" class="ico_clse" data-btn-tooltip-close>
                            닫기
                        </a>
                    </div>

                    <div class="bubb type3" data-wrap="tooltip" style="display:none;top:-88px;right:40px;"
                         data-tooltip-next>
                        <strong>수강이 완료되었습니다.</strong>
                        <p>이제 <a href="#">다음 강의</a>를 확인하세요.</p>
                        <a href="#" class="ico_clse" data-btn-tooltip-close>
                            닫기
                        </a>
                    </div>

                    <div class="bubb type3" data-wrap="tooltip" style="display:none;top:-68px;right:40px;" data-tooltip-alert>
                        <p data-tooltip-alert-msg></p>
                        <a href="#" class="ico_clse" data-btn-tooltip-close>
                            닫기
                        </a>
                    </div>
                </div>
            
            <!--페이지네비게이션 : 이전글/다음글-->
            
<!-- #breadcrumb:lecture/_pageNavigation.gsp -->

<!--목록URL-->

    



<!--이전 URL/Title -->

    
    
    
        
    


<!--다음 URL/Title -->

    
    
    
        
    


<!--페이지네비게이션 : 이전글/다음글/목록보기-->
<div class="group_l">
    <div class="paginate4">
        <!--[D] 비활성화 될 시 .disable 클래스 추가해 주세요.-->
        <div class="pagin l">
            
                <a href="/onlineclass-tutorial/lecture/65388/?isDesc=false" class="btn_prve" data-btn-prev>
            
                <i class="icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path stroke="#25292F" stroke-width="1.5" d="M16 4l-8 8 8 8"></path>
                    </svg>
                </i>
                <span class="blind">에드위드 온라인클래스 매뉴얼로 차근차근 개설해보세요!</span>
            </a>
        </div>
        <div class="pagin r">
            
                <a href="/onlineclass-tutorial/lecture/65371/?isDesc=false" class="btn_next" data-btn-next>
            
                <i class="icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path stroke="#2A2C2F" stroke-width="1.5" d="M8 20l8-8-8-8"></path>
                    </svg>
                </i>
                <span class="blind">동영상 시청 완료 기준을 설정해서 학생들의 출석을 체크하세요!</span>
            </a>
        </div>
    </div>
</div>
<!--//페이지네비게이션 -->
            <!--//페이지네비게이션 -->
        </div>
    </div>

    <input type="hidden" id="_serverEnv" value="www">
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