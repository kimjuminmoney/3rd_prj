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
    
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">
	
	<title>아이디로 로그인 : edwith</title>
	
</head>

<body class="fs ct_middle mbr win chrome chrome119">

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
</style>

<script type="text/javascript">
	function validateForm() {
	    // 라디오 버튼이 하나라도 선택되었는지 확인
	    var userRadio = document.getElementById("userRadio");
	    var insRadio = document.getElementById("insRadio");
 	    var id = $("#idFrm").val();
	    var pw = $("#pwFrm").val();
	    
	    var flag = false;
	    
	    if (id == ''){
	    	alert("아이디를 입력해주세요");
	    }else if (pw == ''){
	    	alert("비밀번호를 입력해주세요")
	    }else if (!userRadio.checked && !insRadio.checked) {
	        alert("유형을 선택해주세요");
	    }else{
	    	flag=true;
	    }
	
	    // 다른 유효성 검사 로직을 추가할 수 있습니다.
	
	    // 모든 유효성 검사를 통과하면 폼 제출을 허용
	    return flag;
	}
	
	 // 폼 서브밋 이벤트 핸들러
    function submitForm() {

        // 폼 유효성 검사
        if (validateForm()==false) {
        	alert("아이디 혹은 비밀번호를 확인해주세요.")
            return false;
        }

        // 기본 폼 서브밋

        return true;
    }
</script>

<!-- #breadcrumb:layouts/etc.gsp -->
<div id="wrap">
	
	<div id="container">
		<div id="content">
			
    <h2 class="tit">로그인</h2>
        <form role="form" id="login_form" action="doLogin.do" method="post" onsubmit="return submitForm()">
                
                <div class="ipt_group">
                    <label class="it stretch _label">
                        <span class="ph _login_email_addr" style="display: none;">아이디</span>
                        <input type="text" id="idFrm" name="id" class="_input" >
                    </label>
                    <label class="it stretch _label _password">
                        <span class="ph _login_password" style="display: none;">비밀번호</span>
                        <input type="password" id="pwFrm" name="pw" class="_input" data-global-placeholder="._login_password" >
                    </label><br/>
                     <label for="inputPassword" id="type">회원유형</label>
                     <input type="radio" value="user" id="userRadio" name="type" />학생
                     <input type="radio" value="ins" id="insRadio" name="type" />강사<br/>
                    <button type="submit" id="loginBtn" class="btn btn_type1 clr" data-btn-submit>로그인</button>
                    <div class="btm">
                    <div>
                        <a href="findId.do">아이디 찾기</a>
                        <a href="findPw.do">비밀번호 찾기</a>
                    </div>
                        <a href="selectJoin.do">회원가입</a>
                        
                    </div>
                </div>
		</form>
		
		

        </div>
        
 <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->
<jsp:include page="../user/nav/footer.jsp"></jsp:include>
<!-- Build 231109.47a067d4 -->



    </div>
</div>

</body>
</html>