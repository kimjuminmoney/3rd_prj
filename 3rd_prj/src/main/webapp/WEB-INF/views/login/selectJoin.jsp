<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- jQuery CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
    
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">

<style>

 div {
    text-align: center; /* 가운데 정렬 */
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
<script type="text/javascript">

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
    
<li>
        <a href="javascript:doLogin()" class="login N=a:gnb.login">로그인 / 회원가입</a>
</li>

</ul>

<input type="hidden" id="__isLogged" value="">
			</div><br/><br/><br/><br/><br/><br/><br/><br/>
			<section class="page error">
    <p class="error_txt">회원가입</p>
    
        <br/>
    
    <div>
		   <button type="button" id="userJoinBtn" class="btn btn_type1 clr" data-btn-submit style="background-color: #03C75A; color: white;">
    			학생 회원가입
			</button>
		   <button type="button" id="insJoinBtn" class="btn btn_type1 clr" data-btn-submit style="background-color: #03C75A; color: white;">
    			강사 회원가입
			</button>
        </div>
</section>
<!-- //error -->
<script type="text/javascript">

$(function(){
     
     $("#userJoinBtn").click(function(){
     	window.location.href="userJoin.do";
     });//click
     
     $("#insJoinBtn").click(function(){
     	window.location.href="insJoin.do";
     });//click
	
});//ready

    
</script>
		</div>
	            </div>

</body>	

 <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->
<jsp:include page="../user/nav/footer.jsp"></jsp:include>
<!-- Build 231109.47a067d4 -->


</html>