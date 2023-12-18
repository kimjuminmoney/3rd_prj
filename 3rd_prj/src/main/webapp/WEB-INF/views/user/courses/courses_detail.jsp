<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <!-- #breadcrumb:boostcourse/common/_head.gsp -->
<meta charset="utf-8">

<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
<!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses.css" type="text/css">
<!-- courses_notice_table css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses_notice_table.css" type="text/css">
<!-- video.js 비디오js cdn -->
<link href="https://vjs.zencdn.net/8.6.1/video-js.css" rel="stylesheet" />
<script src="https://vjs.zencdn.net/8.6.1/video.min.js"></script>
<!-- video.js 비디오js cdn -->
        <title>강의실 수강 : edwith </title>
<!-- jQuery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	var player = videojs("#myPlayer", {
	    sources : [
	        { src : "http://localhost/daitdayoung/courses_data/COU_999999/video/테스트비디오1.mp4", type : "video/mp4"}
	    ],
	   /*  poster : "test-poster.png", */
	    controls : true,
	    playsinline : true,
	    muted : true,
	    preload : "metadata",
	    height : "480px",
	    width : "760px",
	});
	
	// 'ended' 이벤트 리스너 추가
    player.on('ended', function() {
    	var coursesStatus = $("#courseStatus").val();
    	if(coursesStatus == 'Y'){
    		return;
    	}
    	var param = {couCode : "${ param.couCode}",
    				epCode : "${ param.epCode}",	
    				crgCode : "${ param.crgCode}",
    				lecCode : "${ param.lecCode}",}	
    	var msg = " 수강완료를 실패하였습니다. \n 잠시후 다시 시도해주세요."+
    				"\n 지속적으로 실패할 경우 해당 화면을 캡쳐하여 문의해 주세요"+
    				"\n 수강 번호 : ${ param.crgCode}"+
    				"\n 강의 번호 : ${ param.lecCode}";
    				
        $.ajax({
        	url:"coursesDetailProcess.do",
			type:"POST",
			data: param,
			dataType:"json",
			error:function(xhr){
				console.log(xhr.status);
				alert(msg);
			},
			success:function(jsonObj){
				var flag = jsonObj.flag;
				if(!flag){
					alert(msg);
				}
				
				if(flag){
					alert("수강 완료하였습니다")
				}
				
			}//success
        })
    });
})
</script>        
</head>
<body class="re_pack win chrome chrome119">

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<div id="wrap">
<jsp:include page="../nav/header_courses.jsp"></jsp:include>
    
<div id="container">

<!-- nav -->
<jsp:include page="../nav/nav_courses.jsp"></jsp:include>
<!-- nav -->

	<div id="content">
	<section class="page mg_menu">
	
	<!--//page_header-->
<header class="page_header">
        <div class="group_lr">
            <div class="group_l">
                <h1 class="page_title"><c:out value="${ uclDomain.lecName }"/></h1>
            </div>
        </div>
    </header>
    <article class="forum_view">
        <div class="ce ce_view">
            <article class="material_view material_text">
                <div class="material_desc editor_reset">
                <!-- <video width="750" height="500" controls>
				    <source src="http://localhost/daitdayoung/courses_data/COU_999999/video/테스트비디오1.mp4" type="video/mp4">
				</video> -->
				<video id="myPlayer" class="video-js vjs-default-skin" webkit-playsinline></video>
                
				</div>
                <div class="material_desc editor_reset">
                	<c:out value="${ uclDomain.lecContent }"/>
				</div>
				<input type="hidden" value="${ uclDomain.courseStatus }" name="courseStatus" id="courseStatus"/>
			</article>
			<hr>
    		<div class="group_lr">
        		<div class="group_r">
            		<a href="courses.do?crgCode=${ param.crgCode}&couCode=${ param.couCode }" class="btn btn_type2 bold N=a:lec.list" data-selector="backToListBtn">메인으로</a>
        		</div>
    		</div>
        </div>
    </article>
</section>

</div>
<!-- footer -->     
<jsp:include page="../nav/footer_courses.jsp"></jsp:include>   
<!-- footer -->        
</div>
</div>
</body>
</html>