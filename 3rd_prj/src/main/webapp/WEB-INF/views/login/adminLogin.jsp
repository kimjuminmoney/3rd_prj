<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
     <!-- #breadcrumb:common/_head.gsp -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="Cache-Control" content="max-age=86400, public">
    <meta http-equiv="origin-trial" content="Ati2DWxlgboPVi6vklPLcKgvC/IgtfpOtYAvD8L+1jONtKz6NAFzU4c+2yCTCypQPs4MNTbytrfX4JlQBsk73g8AAACGeyJvcmlnaW4iOiJodHRwczovL2Vkd2l0aC5vcmc6NDQzIiwiZmVhdHVyZSI6IkRpc2FibGVEaWZmZXJlbnRPcmlnaW5TdWJmcmFtZURpYWxvZ1N1cHByZXNzaW9uIiwiZXhwaXJ5IjoxNjM5NTI2Mzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZX0=">

    <meta name="robots" content="noindex, nofollow">


    
    
    <meta property="og:url" content="http://www.edwith.org">
    
    <meta property="og:type" content="article">
    
    <meta property="og:title" content="에듀케이션위드 로그인  : edwith">
    
    <meta property="og:description" content="에드위드(edwith)는 네이버(NAVER)와 네이버 커넥트재단(NAVER Connect)이 제공하는 온라인 강좌(MOOC : Massive Online Open Course) 교육 플랫폼입니다. 에듀케이션위드(education with) 에드위드(edwith)로 분야별 명품 강좌를 무료(Free Course)로 수강하세요.">
    
    <meta property="og:site_name" content="edwith : 에듀케이션위드">
    
    <meta property="og:image" content="https://ssl.pstatic.net/static/connectfdn/edwith/hold_images/SNS_LOGO_1024x1024.png">
    
    <meta property="fb:app_id" content="1441124829481137">
    

    
    <meta name="keywords" content="열린 강좌, learn with edwith, 커넥트재단, mooc, massive open online courses, 개방형 온라인 공개 강좌, 온라인 강좌, 열린 교육 운동, 무료 강좌, 네이버 커넥트재단">
    
    <meta name="description" content="에드위드(edwith)는 네이버(NAVER)와 네이버 커넥트재단(NAVER Connect)이 제공하는 온라인 강좌(MOOC : Massive Online Open Course) 교육 플랫폼입니다. 에듀케이션위드(education with) 에드위드(edwith)로 분야별 명품 강좌를 무료(Free Course)로 수강하세요.">
    

    
        <meta itemprop="name" content="에듀케이션위드 로그인  : edwith">
    
        <meta itemprop="description" content="에드위드(edwith)는 네이버(NAVER)와 네이버 커넥트재단(NAVER Connect)이 제공하는 온라인 강좌(MOOC : Massive Online Open Course) 교육 플랫폼입니다. 에듀케이션위드(education with) 에드위드(edwith)로 분야별 명품 강좌를 무료(Free Course)로 수강하세요.">
    
        <meta itemprop="image" content="https://ssl.pstatic.net/static/connectfdn/edwith/hold_images/SNS_LOGO_1024x1024.png">
    


<!-- serverURL : https://www.edwith.org -->
<!-- i18n locale : ko -->
<!-- ko -->
<!-- KR -->
<!-- NEXT -->
    
        <link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
    

    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common1.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/common2.css" type="text/css">

    
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
    
    
    

    
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">

    <script src="https://connect.facebook.net/en_US/all.js"></script>
    <script src="/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
    <script src="/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
    <script src="/static/js/plugins/nclktag.js?231109_47a067d4"></script>
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

	
	
	<title>아이디로 로그인 : edwith</title>
	
</head>


<body class="fs ct_middle mbr win chrome chrome119">




    


    <!-- Google Tag Manager (noscript) -->
    
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P2H76TF"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    
    <!-- End Google Tag Manager (noscript) -->

<input type="hidden" id="__PARTNER_CODE" value="NEXT" />
<input type="hidden" id="__PARTNER_COLOR" value="#00AB50" />
<input type="hidden" id="__ADMIN_PARTNER_CODE" value="" />
<input type="hidden" id="__FILEUPLOAD_DOMAIN" value="//upload.edwith.org" />
<input type="hidden" id="__FILEUPLOAD_ENDPOINT" value="//upload.edwith.org/uploadManager/upload" />
<input type="hidden" id="__USER_ROLE" value="ROLE_GUEST" />
<input type="hidden" id="__USER_PRIORITY" value="1" />
<input type="hidden" id="__USER_ID" value="">
<input type="hidden" id="__COURSE_ID" value="" />
<input type="hidden" id="__COURSE_OPEN_DAY" value="" />
<input type="hidden" id="__COURSE_CLOSE_DAY" value="" />
<input type="hidden" id="__COURSE_URI_PATH" value="" />
<input type="hidden" id="__CURRENT_DATE" value="2023.11.29" />
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
<input type="hidden" id="__COURSE_TERM_TYPE" value="" />
<input type="hidden" id="__RESOURCE_VERSION" value="?231109_47a067d4" />
<input type="hidden" id="__CONTROLLER_TYPE" value="neoid" />
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

<script src="/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
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



    <input type="hidden" id="GA_USER_ID" value="" />
    <input type="hidden" id="GA_DIMENSION01" value="" /> 


    <input type="hidden" id="GA_DIMENSION02" value="" /> 
    <input type="hidden" id="GA_DIMENSION03" value="" /> 
    <input type="hidden" id="GA_DIMENSION04" value="" /> 
    <input type="hidden" id="GA_DIMENSION07" value="" /> 
    <input type="hidden" id="GA_DIMENSION08" value="" /> 
    <input type="hidden" id="GA_DIMENSION09" value="" /> 

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



<div class="modal_wrap" id="_modal_wrap" style="display:none">
	<div class="modal_inner">
	    <!--애니메이션 영역-->
	    <div class="modal_container" data-md-content>

	    </div>
	    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
    </div>
</div>
<div id="u_skip">
    
    
        <a href="/login" ><span>로그인 바로가기</span></a>
    
    
    <a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문 바로가기</span></a>
</div>
<!-- #breadcrumb:layouts/etc.gsp -->
<div id="wrap">
	
		<div id="header" class="type2">
			<div class="layout_in" data-wrap-gnb-menu>
				



    
    
        
        
    
    
    
    
    <h1 class="logo">
        <a class="N=a:gnb.edwith" href="/">
            <img height="" src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v4.png?_=?231109_47a067d4"
                 
                 alt="edwith">
        </a>
    </h1>



<ul class="gnb ly_type2" id="gnb">
    
    
    
    <!-- #breadcrumb:/common/_loginbox.gsp -->


<li>
    
        <a href="javascript:doLogin()" class="login N=a:gnb.login">로그인 / 회원가입</a>
    
</li>
    <script>
        function doLogin(){
            var returnUrl = location.href.substring(location.href.indexOf(location.host)+location.host.length);
            if(location.pathname == "/login"){
                location.href = "/login" + location.search;
            }else {
                if (returnUrl == "/" || returnUrl == "" || "neoid" == "error" || "neoid" == "neoid") {
                    returnUrl = "";
                } else {
                    returnUrl = "?returnUrl=" + returnUrl;
                }
                location.href = "/login" + returnUrl;
            }
        }
    </script>


</ul>


<input type="hidden" id="__isLogged" value="">


    

<script src="/static/js/src/entries/common/_gnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/common/_gnbmenu.entry.js");
        entry.initialize({
            isLogged : $.trim( $("#__isLogged").val() ) === "" ? false : true,
            isClosedPartner : false,
            courseId: '',
            userId: '',
        });
    });
</script>

<style>
.boost_course_main_body.le_info .inc_sub .sub_box .summary span+span::before {
    background-color:#00AB50;
}
.boost_course_main_body.le_info .inc_sub .sub_box .summary .em {
    color:#00AB50;
}
.boost_course_main_body.le_info .lnb #snb .count_info {
    color:#00AB50;
}
.boost_course_main_body.le_info #snb .state_area .info em {
    color:#00AB50;
}
/*추가된 파트너 컬러 적용 style*/
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .ico_bx {
    background-color:#00AB50;
}
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .list_title em {
    color:#00AB50;
}
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .info em {
    color:#00AB50;
}
body#content .page_header .reverse_wrap .ick .checkbox.checked,
#snb .privacy_area .agree_area input[type="checkbox"]:checked + .checkbox_label .check_icon {
    background-color:#00AB50;
}
.class_manager .slc_area .add_top_wrap .ick .checkbox.checked {
    background-color:#00AB50;
}
        #userLogin {
            margin-left: 60px;
        }
        #insLogin {
            margin-left: 50px;
        }

</style>
			</div>
		</div>
	
	<div id="container">
		<div id="content">
			
<!-- #breadcrumb:login/emailLogin.gsp-->
<section class="page login" id="_login">
    <h2 class="tit">로그인</h2>
    <div class="login_method_email">
        <form role="form" id="login_form" action="doAdminLogin.do" method="post">
            <fieldset>
                <legend class="sr_only">로그인</legend>
                
                <input type="hidden" id="returnUrl" name="returnUrl" value="">
                
                <div class="ipt_group">
                    <label class="it stretch _label">
                        <span class="ph _login_email_addr" style="display: none;">아이디</span>
                        <input type="text" id="adminId" name="adminId" class="_input" >
                    </label>
                    <label class="it stretch _label _password">
                        <span class="ph _login_password" style="display: none;">비밀번호</span>
                        <input type="password" id="adminPw" name="adminPw" class="_input" data-global-placeholder="._login_password" >
                    </label><br/>
                    <button type="submit" id="submit" class="btn btn_type1 clr" data-btn-submit>로그인</button>
                </div>
            </fieldset>
		</form>
    </div>
</section>
<script src="/static/js/src/entries//login/userId.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    var entry;
    $(document).ready(function() {
        $('#userId').focus();
        entry = require("/entries/login/userId.entry.js");
        entry.initialize({
            partnerCode: "NEXT"
        });
    });

    function onSubmitRecaptcha() {
        if(entry) entry.doSubmitProcess();
    }

    function onExpiredRecaptcha() {
        if(entry) entry.waitForSetBadgePosition();
    }

    function onErrorRecaptcha() {
        if(entry) entry.doSubmitProcess();
    }
</script>

        </div>
		
			


<!-- Build 231109.47a067d4 -->


<!-- lcs file -->
<script src="/static/lcs-js/lcslog.js?231109_47a067d4"></script>
<script src="/static/js/src/entries/common/_lcs.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_lcs.entry.js");
        entry.initialize({
            environment: "PRODUCTION",
            useSti: false
        });
    });
</script>
   <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->
<jsp:include page="../user/nav/footer.jsp"></jsp:include>


<script src="/static/js/src/entries/layouts/etc.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
$(function(){
    var entry = require("/entries/layouts/etc.entry.js");
    entry.initialize({
		messageCode : $("#__MESSAGE_CODE").val(),
		popupTitle : $("#__MESSAGE_TITLE").val(),
		message : $("#__MESSAGE").val()
	});
})
</script>

</body>
</html>