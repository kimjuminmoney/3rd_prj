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
    <link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/help_inquiry.css?20210317">
	<link href="https://nid.naver.com/favicon_1024.png" rel="apple-touch-icon-precomposed" sizes="1024x1024" /> 
	<link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/non_sign.css?20130320">
	<link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/non_sign.css?20130320">
	<script type="text/javascript" src="https://nid.naver.com/inc/user/js/idPwInquiryAjax.js?20140106"></script>
	<script type="text/javascript" src="https://nid.naver.com/js/clickcr.js"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/commonUtil.js?20170214"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/authUi.js?20230703"></script>
	<script type="text/javascript" src="/inc/common/js/lcs_nclicks.js?r=20220411"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/user/js/browser.js?20220411"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/lua.js?r=20220411"></script>
    
    

    
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
<script type="text/JavaScript">
var gnb_option = { 
	gnb_service : "nid", 
	gnb_template : "gnb_utf8", 
	gnb_logout : encodeURIComponent("https://nid.naver.com/user2/help/idInquiry"),
	gnb_brightness : 2, 
	gnb_item_hide_option : 0  
}

lcs_do();

function gnbClose(){
    $('#wrap').click(function(e){
        if( !$('#gnb').has(e.target).length ){
            gnbAllLayerClose();
        }
    });
} 
//120919 win8 이슈 대응 : capslock 자동설정해제
document.msCapsLockWarningOff = true;
function setContainerHeight(height) {}
function showMenu(obj, obj2){
	document.getElementById(obj).className = "on";
	document.getElementById(obj2).className = "";
}

var menuList = "idinquiry pwinquiry ";
function hideMenu(obj){
	var otherMenu = menuList.split(" ");
	for (var i = 0; i < otherMenu.length - 1; i++) {
		document.getElementById(otherMenu[i]).className = "";
	}
	
	document.getElementById(obj).className = "on";
}
function goPage(obj, obj2){
	var url = "https://nid.naver.com/user2/help/" + obj + "?menu=" + obj2;
	location.href = url;
}

function clearDocs(){}
</script>
<style type="text/css">

 div {
    text-align: center; /* 가운데 정렬 */
}

.tit2 {
    text-align: center; /* 텍스트 가운데 정렬 */
    width: 100%; /* 너비를 100%로 설정 */
     font-size: 40px; /* 글자 크기 설정 */
    font-weight: 800; /* 더욱 굵은 글자 */
    color: black; /* 글자 색상을 검은색으로 설정 */
}


input[type="radio"] {
    margin: 10px; /* 라디오 버튼 간격 조정 */
    transform: scale(1.5); /* 라디오 버튼 크기 조정 */
}

label, input {
    font-size: 17px; /* 텍스트 크기 조정 */
}
.logo2 {
    text-align: center; /* 로고를 가운데 정렬 */
}

.logo2 img {
    width: 150px; /* 이미지 너비를 100픽셀로 설정 */
    height: auto; /* 이미지 높이를 자동으로 설정하여 비율 유지 */
}

.btn_area {
    text-align: center; /* 가운데 정렬 */
}

#content {
    width: 50%; /* 혹은 원하는 너비 */
    margin: 0 auto; /* 상하 마진 0, 좌우 마진 자동 */
    text-align: center; /* 텍스트 가운데 정렬 */
    /* 추가적인 스타일링 */
}

.btn_confirm2 {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50; /* 버튼 배경색 */
    color: white; /* 버튼 텍스트 색상 */
    text-decoration: none; /* 링크 밑줄 제거 */
    font-size: 16px; /* 글씨 크기 */
    border: none;
    border-radius: 5px; /* 버튼 모서리 둥글게 */
    cursor: pointer; /* 마우스 오버 시 커서 변경 */
}



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

/* GNB Common */
body,p,h1,h2,h3,h4,h5,h6,menu,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}
body,input,textarea,select,button,table{font-family:'돋움',Dotum,AppleGothic,sans-serif;font-size:12px}
img,fieldset{border:0}
menu,ul,ol{list-style:none}
em,address{font-style:normal}
a{text-decoration:none}
a:hover,a:active,a:focus{text-decoration:underline}
button{cursor:pointer}
button.disabled{cursor:default}
.blind{display:block;overflow:hidden;*position:absolute;top:0;left:0;width:0;height:0;border:0;background:none;font-size:0;line-height:0}
#gnb{float:right;right:3px} 
</style> 
<meta name="decorator" content="USER_INQUIRY">
<script type="text/javascript" src="https://nid.naver.com/inc/user/js/passwdAjax.js?20180530"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/common/js/rsaAll.js"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/user/js/soundCaptcha.js?20220411"></script>
<script type="text/javascript">
//<![CDATA[
//nClicks 전역변수
 var nsc = "my.pwinqury";
 var ccsrv = "cc.naver.com";
 //]]>

function convertDiv(obj, obj2, stat){
	e1 = document.getElementById("div_" + obj);
	e2 = document.getElementById("div_" + obj2);
	if(stat == "none"){
		document.getElementById("lb_" + obj).style.display="none";
		if(document.getElementById(obj2).value == ""){
			document.getElementById("lb_" + obj2).style.display="";
		}

		if(e1.className.indexOf(" focus") == -1) {
			e1.className = e1.className + " focus";
			e2.className = e2.className.replace(" focus", "");
		}
	}else{
		e1.className = e1.className.replace(" focus", "");
		if(document.getElementById(obj).value == ""){
			document.getElementById("lb_" + obj).style.display="";
		}

		e2.className = e2.className.replace(" focus", "");
		if(document.getElementById(obj2).value == ""){
			document.getElementById("lb_" + obj2).style.display="";
		}
	}
}


	createRsaKey();
	
	lua_do('PWInquiry_PC_N' , arguments.callee.name,INFO_CHECK_POINT_SUBMIT, document.fm.token_help.value, true,'');
	
	document.fm.action = "/user2/help/pwInquiry?m=actionInputPasswd";
	document.fm.submit();
}


function toggle(){
}

function clearDocs(){
}


function getLenChar(texts) {
	texts = texts + "";
	return String.fromCharCode(texts.length);
}


function reset() {
	document.fm.new_pw.value = "";
	document.fm.new_conf_pw.value = "";
}

function reCaptcha() {
	reCaptchaCount++;
	lua_do('PWInquiry_PC_N' , arguments.callee.name,INFO_CHECK_POINT_RETRY, document.fm.token_help.value, true,'');
	document.getElementById("chptchaimg").src = document.getElementById("chptchaimg").src + "1";
}

function hiddenText(objName){
	document.getElementById(objName).className = "blind";
}

function showText(objName, compName){
	if(document.getElementById(compName).value == ""){
		document.getElementById(objName).className = "lbl_in";
	}
}

function changeFocus(objName, ckValue){
	if(ckValue == "on"){
		if(objName == "bdr_autoValue"){
			document.getElementById(objName).className = "input_box input_box_v2 focus";
		}else{
			document.getElementById(objName).className = "input_box focus";
		} 
	}else{
		if(objName == "bdr_autoValue"){
			document.getElementById(objName).className = "input_box input_box_v2";
		}else{
			document.getElementById(objName).className = "input_box";
		} 	
	}
}

function checkNumber(){
	var captcha = document.getElementById('captcha_image_legend').style.display;
	
	if(captcha == "none"){
		check_num('autoValue', '1');
	}
}

</script>
	
	
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


			</div>
		</div>
	
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<section class="page findPw" id="_login">
				  <h2 class="tit2">비밀번호 찾기</h2><br/><br/>
   					<div class="login_method_email">
				 <form role="form" id="findPw_form" action="dofindPw.do" method="post">
				 <fieldset>
				  <legend class="sr_only">비밀번호 찾기</legend>
                <input type="hidden" id="returnUrl" name="returnUrl" value="">
                
                <div class="ipt_group">
                    <label class="it stretch _label">
                        <span class="ph _login_email_addr" style="display: none;">아이디</span>
                        <input type="text" id="id" name="id" class="_input" placeholder="아이디를 입력해주세요" >
                    </label>
                    <label class="it stretch _label">
                        <span class="ph _login_email_addr" style="display: none;">이름</span>
                        <input type="text" id="name" name="name" class="_input" placeholder="이름을 입력해주세요" >
                    </label>
                    <label class="it stretch _label _password">
                        <span class="ph _login_password" style="display: none;">생년월일</span>
                        <input type="text" id="birth" name="birth" class="_input" data-global-placeholder="._login_password" placeholder="생일을 입력해주세요 예시 :1990-01-01" >
                    </label><br/>
                     <label for="inputPassword" id="type">회원유형</label>
                     <input type="radio" value="user" id="type" name="type" />학생
                     <input type="radio" value="ins" id="type" name="type" />강사<br/>
                    <button type="submit" id="submit" class="btn btn_type1 clr" data-btn-submit>비밀번호 찾기</button>
                    <div class="btm">
                        <a href="/neoid/pwdResetSendmail">비밀번호 찾기</a>
                        
                        <a href="/neoid/emailJoin">회원가입</a>
                        
                    </div>
                </div>
            </fieldset>
		</form>
		</div>
    </div>
<script type="text/javascript">
	document.getElementById('divShowBlock').style.display="none";	
</script>		


<script type="text/javascript" src="https://nid.naver.com/inc/mobile/js/m.jquery.js?20140912" ></script>
<script type="text/javascript"> 
var ua = window.navigator.userAgent.toLowerCase();
var result = (/android+\s+((\d)\.(\d))(?:\.(\d))?/igm).exec(ua);
var uad = navigator.userAgentData;
var isMobile = (uad && uad.mobile) || (ua.indexOf('Mobi') !== -1) || (/windows ce/.test( ua ) && /polar/.test( ua )) || ( /mozilla/.test( ua ) && /natebrowser/.test( ua ) ) || ( /opera/.test( ua ) && (/windows ce/.test( ua ) || /skt/.test( ua )) ) || ( /iphone/.test( ua ) || /ipod/.test( ua ) ) || ( /android/.test( ua ) && !( /.*shw-m180(s|k|l|w).*/.test( ua ) ) && !( result != null && result.length > 0 && result[1] >=3.0 ) ) || ( /dolfin/.test( ua )) || ( /windows ce/.test( ua ) && /iemobile/.test( ua ) ) || ( /mozilla/.test( ua ) &&  /(wv[0-9]+)/.test( ua ) && /lgtelecom/.test( ua ) ) || ( (/mozilla/.test( ua ) && /((010|011|016|017|018|019)\d{3,4}\d{4}$)/.test( ua )) ) || ( /windows phone os/.test( ua ) && /iemobile/.test( ua ) );
if(isMobile){
	document.getElementById('divMobileYn').style.display = "block";
}else{
	document.getElementById('divMobileYn').style.display = "none";
}

getGNB();
document.getElementById('pwinquiry').className = "on";

var cur_container_height = Number(document.getElementById("container").clientHeight); // container 높이
var min_container_height = 647;
var header_height = 86;
var footer_height = isMobile ? 160: 30;

window.onload   = changeContentSize; // Window 창 로드시
window.onresize = changeContentSize; // Window 창 크기를 조정할때마다

function changeContentSize() {
	var container_height = min_container_height;
	var window_height = Number(document.documentElement.clientHeight) - header_height - footer_height; // Window 창 높이
	if (window_height > cur_container_height) {
		if (window_height > min_container_height) {
			container_height = window_height;
		}
	} else {
		if (cur_container_height > min_container_height) {
			container_height = cur_container_height;
		}
	}
	
    if (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) { // ie11 추가
        document.getElementById("container").style.height = container_height + "px";
    }else if (window.navigator.userAgent.indexOf("MSIE") == -1 || (document.all && window.XMLHttpRequest)) { // ie6 제외
        document.getElementById("container").style.height = container_height + "px";
    } else {
        document.getElementById("container").style.height ="100%";
    }
}

function setContainerHeight(height) {
	if (height >= 0) {
		cur_container_height = height;
	} else {
		cur_container_height = Number(document.getElementById("container").clientHeight);
	}
	changeContentSize();
}
</script>
</body>	

 <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->
<jsp:include page="../user/nav/footer.jsp"></jsp:include>
<!-- Build 231109.47a067d4 -->
    
    


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

</html>