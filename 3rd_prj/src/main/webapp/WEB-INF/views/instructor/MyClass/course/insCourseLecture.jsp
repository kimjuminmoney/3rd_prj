<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- jQuery CDN 끝 -->
 <style type="text/css">
   
 </style>
 <script type="text/javascript">
 $(function(){
	 $("#update_btn").click(function(){
		 var frm = $("#clVO")[0];
		 frm.action="updateLecture.do"
		 frm.method="post"
		 frm.submit();
		 
		 
	 })//click
	 
	 $("#video_del").click(function(){
		 var data = { oldFile : $("#oldFile").val(),
				 lecCode:$("#lecCode").val()	}
		 
		 $.ajax({
			 url:"deleteFile.do",
			 data: data,
			 dataType:"json",
			 type:"post",
			 error:function(xhr){
				 alert(xhr.status)
			 },
			 success:function( jsonObj ){

				if(jsonObj.cnt != 0 ){
					 
				$("#oldFile").html("파일이 없습니다.");
				$("#video_del").val("");
				location.reload();
				 }//if
			 }//success
		 
		 })//ajax
		 
	 })//click
 });//ready
 
 </script>
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

    
        <title>파이썬 자료구조 > 강의목록 : edwith</title>
    
</head>
<body class="re_pack win chrome chrome119">
    <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P2H76TF"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    
<script src="/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<script>
    var title = document.title;
    document.title = _.unescape(title);
    var entry = require("/entries/common/_head.entry.js");
    entry.initialize();

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


<script type="text/javascript">
function chgLecCode(){
	 if( $("#lecCode")[0].selectedIndex != 0 ){
		var lecCode={ lecCode:$("#lecCode").val() };

		$.ajax({
		 url:"searchOneLecture.do",
		 data: lecCode,
		 dataType:"json",
		 type:"post",
		 error:function(xhr){
			 alert(xhr.status)
		 },
		 success:function( jsonObj ){
							 
			$("#lecContent").val(jsonObj.lecContent);	
			 if( jsonObj.videoName != null){
			$("#oldFile").val(jsonObj.videoName);

			 }
		 }//success
	 })//ajax
			 
		 }//end if
	
}
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
    
        <div id="header">
        	<jsp:include page="common/insCourseHeader.jsp"/>
        </div>
    
    <!-- share 보안 이슈 filter 미적용 -->
    <div id="container">
        <!-- 신규 boostcourse LNB -->
        
<!--[D] 관리자 권한이면서 bbs를 클릭하지 않았을 경우 true-->

<div class="lnb">
<jsp:include page="common/insCourseLnb.jsp"/>
</div>

<script src="https://www.edwith.org/static/js/src/entries/common/_lnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/common/_lnbmenu.entry.js");
        entry.initialize({
            'courseId': '2024',
            'courseUriPath': 'python-data',
            'heartbeatApiDomain': 'https://standby-campaign.naver.com'
        });
    });
</script>
        <div id="content">
            
<!-- #breadcrumb:chapter/list.gsp -->
<section class="page mg_menu">
	
	<!--page_header-->
	<header class="page_header">
		<div class="group_lr mab10">
			<div class="group_r">
			</div>
			<div class="group_l">
				<h1 class="page_title">
					강의 등록
				</h1>
			</div>
		</div>
	</header>
	<!--//page_header-->

	<div class="class_manager type2">
		<!--chapter_list-->
		<ul>
					<!-- [D] 진행중 class : on -->
					<li>
						<div id="content">
        					
	        				<div>
	        				<form id="clVO" name="clVO" action="#void" enctype="multipart/form-data">
	        					<label style="font-size:30px;"><strong>강의 선택</strong></label>
	        					<select id="lecCode"  name="lecCode" onchange="chgLecCode()" style="width:100%; height:40%; font-size:15px;">
		        					<option>---목록---</option>
		        					<c:forEach var="cld" items="${ cldList }" varStatus="i">
		        					<option value="${ cld.lecCode }"><c:out value="${ cld.lecName }"/></option>
		        					</c:forEach>
	        					</select>
	        					<div id="explain">
	        					<label style="font-size:30px;"><strong>설명</strong></label><textarea id="lecContent" name="lecContent" style="width:100%; height:40%; font-size:15px;"><c:out value="${ cld.lecContent }"/></textarea>
	        					</div>
	        					<label style="font-size:30px;"><strong>동영상 관리</strong></label>
	        					<input type="hidden" name="videoName" id="videoName" value=""/>
		        				<div>
	        					<label style="font-size:20px;"><strong>강의 등록</strong></label>
		        				<input type="file" name="newFile" id="newFile" class="input_txt" style="width:60%; height:48px; font-size:16px; margin-left:5%;" >
		        				</div>
		        				
		        				<div>
	        					<label style="font-size:20px;"><strong>강의 삭제</strong></label>
		        				<input type="button" id="video_del" name="video_del" id="video_del" class="input_txt" style="width:100px; font-size:16px; margin-left:5%;" value="삭제"><input type="text" name="oldFile" id="oldFile" class="input_txt" style="width:30%; height:48px; font-size:16px; margin-left:5%"/>
		        				</div>
		        				
		        				</form>
		        				<div style="weight:100%; height:5%;"></div>
		        				
		        				<input type="button" class="btn btn-success btn-lg" value="저장하기" id="update_btn" >
	        				</div>
						</div>
					</li>
			
		</ul>
		
		<!--project_list-->
		<ul id="project_group_area" class="mat30"></ul>
	</div>
	<p class="none" style="display:none" data-nodata-message>준비중입니다.</p>
</section>
<script src="https://www.edwith.org/static/js/src/entries/chapter/list.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/chapter/list.entry.js");
        entry.initialize({
            courseId : 2024,
            course : "python-data",
            bbsId : "13744",
            chapterListSize : 6
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
        course : "python-data",
        isCourseUseVote: true,
        isOpenCourseAgreement: false
    });
});
</script>
</body>
</html>