<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">

<head>
    
        
    
    
            <!-- #breadcrumb:common/_head_new.gsp -->
    
    <!-- Google Tag Manager -->
    
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});
        var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
        j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-P2H76TF');</script>
   

<!-- serverURL : https://www.edwith.org -->
<!-- i18n locale : ko -->
<!-- ko -->
<!-- KR -->
<!-- NEXT -->
    <link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/new_common.css" type="text/css">

    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">

    <script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231130_26709717"></script>
    <script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231130_26709717"></script>

    <script>
        var g_ssc = "edwith.home";
        var ccsrv = "cc.naver.com";
        window.nsc = g_ssc;
    </script>

    <script src="https://www.edwith.org/static/js/plugins/nclk_v0.4.5.js?231130_26709717"></script>
    
    
        <title>다잇다영 메인페이지</title>
    
    
    <meta name="layout" content="index"/>

</head>

<style>
#new_header .head_logo {
	padding-top: 25px;
	width: 173px;
	height: 66px;
	margin: 0 auto;
}

</style>

<body class=" main tmp_main win chrome chrome119">

    <!-- Google Tag Manager (noscript) -->
    
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P2H76TF"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    
    <!-- End Google Tag Manager (noscript) -->


<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<script>
    var title = document.title;
    //document.title = _.unescape(title);

   // var entry = require("/entries/common/_head.entry.js");
   // entry.initialize();

    // 부코 진입시, 통합 회원 약관 동의하지 않았으면 약관 페이지로 이동하는 즉시 실행 함수
    (function connectMemberIntegration() {
        // 자체 로그인 서비스를 이용 하는 경우(snsCode가 있는 경우)를 제외하고는 통합 회원 전환을 진행함
        if ("") {  // null, 빈 문자열 호환됨
            return;
        }

        var integrationUserId = Number();
        var integrationAgree = Boolean();
        var regrSecUserId = Number();

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

</script>





<div id="u_skip">
    
    
        <a href="/login" ><span>로그인 바로가기</span></a>
    
    
    <a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문 바로가기</span></a>
</div>

<!-- #breadcrumb:layouts/index.gsp -->

    <div id="new_wrap">
        

<header id="new_header" data-wrap-gnb-menu>
    <section class="header_top">
    <!-- 나의 메뉴 -->
    
<!-- 로그인 전 -->
<span class="top_info">다잇다영을 보다 편리하고 안전하게 이용하세요.</span>
<a href="javascript:doLogin()" class="top_login N=a:gnb.login">로그인/회원가입</a>
<script>
    function doLogin(){
        var returnUrl = location.href.substring(location.href.indexOf(location.host)+location.host.length);
        if(location.pathname == "/login"){
            location.href = "/login" + location.search;
        }else {
            if (returnUrl == "/" || returnUrl == "" || "main" == "error" || "main" == "neoid") {
                returnUrl = "";
            } else {
                returnUrl = "?returnUrl=" + returnUrl;
            }
            location.href = "/login" + returnUrl;
        }
    }
</script>


    
    </section>


    <section class="header_cont" data-wrap-gnb-main-menu>
        <div class="base_layout">
            <h1 class="head_logo"><img  src="http://localhost/daitdayoung/common/images/logo_1.png" width="173" height="66" >
                <a class="N=a:gnb.edwith" href="index.do" data-nclk="gnb.edwith" data-nclk="gnb.edwith"﻿></a>
            </h1>
            <ul class="navi">
                <!-- [D] 활성시 li 요소에 on 클래스 추가 -->
                <c:forEach var="indexMC" items="${ MCList }">
                <li><a href="courses.do?mcCode=${indexMC.mcCode }"><c:out value="${indexMC.mcName }"/></a></li>
                </c:forEach>
            </ul>
            

            <!-- 전체강좌 리스트 -->
            <div class="sub_category"  data-gnb-sub-category="total" style="display: none">
                <div class="base_layout" data-wrap-all-course></div>
            </div>

        </div>

    </section>
</header>
</div>
</body>
</html>