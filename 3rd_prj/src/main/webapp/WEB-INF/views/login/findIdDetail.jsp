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
    <link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/help_inquiry.css?20210317">
	<link href="https://nid.naver.com/favicon_1024.png" rel="apple-touch-icon-precomposed" sizes="1024x1024" /> 
	<link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/non_sign.css?20130320">
	<link rel="stylesheet" type="text/css" href="https://nid.naver.com/inc/user/css/non_sign.css?20130320">
	<script type="text/javascript" src="https://nid.naver.com/inc/user/js/idPwInquiryAjax.js?20140106"></script>
	<script type="text/javascript" src="https://nid.naver.com/js/clickcr.js"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/commonUtil.js?20170214"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/authUi.js?20230703"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/user/js/browser.js?20220411"></script>
	<script type="text/javascript" src="https://nid.naver.com/inc/common/js/lua.js?r=20220411"></script>
    
    

    
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">

    <script src="https://connect.facebook.net/en_US/all.js"></script>
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
div a {
    margin-left: 20px; /* 원하는 간격 크기로 조절하세요. */
}
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

<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>


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


    

			</div><br/><br/><br/><br/><br/><br/><br/><br/>
			<section class="page error">
    <p class="error_txt">아이디 찾기</p>
    
        <p class="error_desc">
        <c:choose>
        <c:when test="${ flag }">
        회원님의 아이디는 ${ id }입니다.
        </c:when>
        <c:otherwise>
        회원정보가 없습니다.<br/><br/>
        </c:otherwise>
        </c:choose></p>
        <div>
		   <button type="submit" id="submit" class="btn btn_type1 clr" data-btn-submit style="background-color: #03C75A; color: white;">
    			<a href="http://localhost/3rd_prj2_test/login/login.do" style="color: inherit; text-decoration: none;">로그인하러가기</a>
			</button>
		   <button type="submit" id="submit" class="btn btn_type1 clr" data-btn-submit style="background-color: #03C75A; color: white;">
    			<a href="http://localhost/3rd_prj2_test/login/findPw.do" style="color: inherit; text-decoration: none;">비밀번호 찾기</a>
			</button>
        </div>
    
   
</section>
		</div>
	            </div>

</body>	

 <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->
<jsp:include page="../user/nav/footer.jsp"></jsp:include>
<!-- Build 231109.47a067d4 -->


<!-- lcs file -->


</html>