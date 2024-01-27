<%@page import="kr.co.daitdayoung.admin.dao.ManageUsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="../index_nav/courses_detail_head.jsp"/>
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
<!-- video.js 비디오js cdn -->
<link href="https://vjs.zencdn.net/8.6.1/video-js.css" rel="stylesheet" />
<script src="https://vjs.zencdn.net/8.6.1/video.min.js"></script>
<!-- video.js 비디오js cdn -->
<!-- jQuery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

</head>


<script type="text/javascript">

</script> 
 
<body class="re_pack boost_course_main_body le_info win chrome chrome119">   
<header id="header" class="edwith">
            <div class="layout_in" data-wrap-gnb-menu="">
    <h1 class="logo">
        <a class="N=a:gnb.edwith" href="index.do">
            <img height="80px" width="120px" src="http://localhost/daitdayoung/common/images/logo_1.png">
        </a>
    </h1>
<ul class="lnk">
        <li><a href="courses.do?mcCode=MC_000001">의무교육</a></li>
        <li><a href="courses.do?mcCode=MC_000002">자기개발교육</a></li>
        <li class="ose"><a href="courses.do?mcCode=MC_000003">산업안전교육</a></li>
</ul>
<ul class="gnb ly_type2" id="gnb">
    <!-- #breadcrumb:/common/_loginbox.gsp -->
    <c:choose>
    <c:when test="${ not empty uiId }">
    <!-- 로그인 후 -->
    <li class="ly_right" data-gnb-menu="join" title="나의 강좌">
            <a href="user/myCourses.do?type=myCourses" data-markup-gnb=".ly_dropdown" class="ico_gnb_lec_b">
            <span class="sr_only">나의 강좌</span>
            </a>
        </li>
        <li class="ly_right" data-gnb-menu="myTodo" title="강좌 문의하기">
            <a href="user/coursesInquiry.do?type=coursesInquiry" data-markup-gnb=".ly_dropdown" class="ico_gnb_todo_b">
            <span class="sr_only">강좌 문의하기</span>
            </a>
        </li>
        <li class="ly_right" data-gnb-menu="myNews" title="나의 할일">
            <a href="user/toDoList.do?type=toDoList" data-markup-gnb=".ly_dropdown" class="ico_gnb_news_b">
            <span class="sr_only">나의 할일</span>
            </a>
        </li>
        <li>
        <a href="logout.do" class="login N=a:gnb.login">로그아웃</a>
	</li>
    <!-- 로그인 후 -->
    </c:when>
	<c:when test="${ not empty insId }">
    <!-- 강사 로그인시 -->
	<li>
	    <a href="javascript:doLogin()" class="login N=a:gnb.login">학생 로그인후 수강신청이 가능합니다.</a>
	</li>
    <!-- 강사 로그인시 -->
	</c:when>
	<c:otherwise>
    <!-- 로그인 전 -->
	<li>
	    <a href="login/login.do" class="login N=a:gnb.login">로그인 / 회원가입</a>
	</li>
    <!-- 로그인 전 -->
	</c:otherwise>
    </c:choose>
</ul>
</div>
</header>
<div id="container">
        
<!-- #breadcrumb:course/index.gsp -->
<!-- 강좌소개 -->
<div class="lnb ">
    <div id="snb" class="intro_admin">
        <div class="top_box">
            <h2>강좌 개요</h2>
            
        </div>
        <div class="widget">
            <div class="item info">
                <ul class="date_area">
                    <li>
                        <strong>대분류</strong>
                        <span class="desc">
                            <c:out value="${ cdDomain.mcName }"/>
                        </span>
                    </li>
                    <li>
                        <strong>소분류</strong>
                        <span class="desc">
                            <c:out value="${ cdDomain.scName }"/>
                        </span>
                    </li>
                    <li><strong>기간 </strong>
                        <span class="desc">
                                상시 수강
                        </span>
                    </li>
                    
                        <li><strong>학습시간 </strong>
                            <span class="desc">
                                    수강신청일 + <c:out value="${ cdDomain.couPeriod }"/>일
                            </span>
                        </li>
                    
                    <li><strong>수강 승인 방식 </strong>
                        <span class="desc">
                                자동 승인
                        </span>
                    </li>
                    
                        <li><strong>수료증 </strong>
                            <span class="desc">
                                    온라인 발급
                            </span>
                        </li>
                </ul>
            </div>
        </div>
        
<script type="text/javascript">
$(function(){
	$("#btn_request_lecture").click(function(){
		   // ${uiId} 값이 있는지 확인
        var uiIdValue = "${uiId}";

        if(uiIdValue.trim() === ""){
            // ${uiId} 값이 없을 경우
            if(confirm("로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까?")){
                // 로그인 페이지로 이동
                window.location.href = "login/login.do";
            }
            return;
        }
		var registration = $("#registration").val();
		//재수강			
		if(registration == 'Y'){
		var param = {couCode: "${param.couCode}",
					insId: "${ cdDomain.insId }",
					crCount: "${ crDomain.crCount }",
					completionStatus:"${ crDomain.completionStatus }"}
		}
		
		//첫 수강
		if(registration == 'N'){
		var param = {couCode: "${param.couCode}",
					insId: "${ cdDomain.insId }"}
		}
		
		$.ajax({
        	url:"courses_registration.do",
			type:"POST",
			data: param,
			dataType:"json",
			error:function(xhr){
				console.log(xhr.status);
			},
			success:function(jsonObj){
				var flag = jsonObj.flag
				if(flag){
					alert("수강신청을 완료하였습니다.")
				}
				if(!flag){
					alert("수강신청을 실패하였습니다.")
				}
			}//success
        })
	})
})
</script>            
        
        <div class="state_area">
            <!-- 수강신청 버튼
                clr = 파트너컬러(수강신청),
		        clr2 = 강좌 바로가기, 수료완료, 미수료
		        clr3 = 승인 대기 중
		        clr4 = 종료된 강좌 (attribute에 disabled 추가) -->
		    <c:choose>
		    	<c:when test="${ not empty crDomain}">
		    	<c:choose>
		    		<c:when test="${ crDomain.completionStatus == 'Y'}">
		            <button class="btn btn_type8 clr" >
		            <span data-btn-label="">수료</span>
		            </button>
		    		</c:when>
		    		<c:when test="${ crDomain.completionStatus == 'N'}">
		            <button class="btn btn_type8 clr">
		            <span data-btn-label="">수강중</span>
		            </button>
		    		</c:when>
		    		<c:when test="${ crDomain.completionStatus == 'F'}">
				    <input type="hidden" value="${ crDomain.crCount }" name="crCount"/>    
				    <input type="hidden" value="Y" id="registration"/>    
				    <input type="hidden" value="${ crDomain.completionStatus }" name="completionStatus"/>    
		            <button class="btn btn_type8 clr" id="btn_request_lecture" data-course-id="GPTSW" data-lecture-status="" data-request-btn="">
		            <span data-btn-label="">재수강 신청</span>
		            </button>
		    		</c:when>
		    	</c:choose>
		    	</c:when>
		    	<c:otherwise>
			    <input type="hidden" value="N" id="registration"/>    
	            <button class="btn btn_type8 clr" id="btn_request_lecture" data-course-id="GPTSW" data-lecture-status="" data-request-btn="">
	            <span data-btn-label="">수강 신청</span>
	            </button>
		    	</c:otherwise>
		    </c:choose>    
            <!-- // 수강신청 버튼 -->
            <!-- 수강신청 안내 메시지 -->
            
            <!-- // 수강신청 안내 메시지 -->
            <div class="btn_box">
            </div>

        </div>
        <div class="lecture_sub_info">
            <div class="count_info">
                <span class="count_like"><em>조회수</em><c:out value="${ cdDomain.hits }"/></span>
                <span class="count_observe"><em>수료생</em><c:out value="${ CompletionCnt }"/></span>
            </div>
        </div>
    </div>
</div>
<div id="content">
    <section class="page">
        <header class="page_header">
            <div class="group_lr mab10">
                <div class="inc_sub intro_default">
                    <div class="hd_txt">
                        <div class="inner">
                            <div class="sub_box">
                            </div>
                            <h2><a href="#"><c:out value="${ cdDomain.couName }"/></a></h2>
                               <%--  <div class="profile">
                                    <img src="http://localhost/daitdayoung/${ cdDomain.couCode }/${ cdDomain.insProfile }" width="24" height="24" alt="">
                                    <span class="name">
                                            <c:out value="${ cdDomain.insName }"/>
                                    </span>
                                </div> --%>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        
        <div class="con thmb">
            <img src="http://localhost/daitdayoung/courses_data/${ cdDomain.couCode }/${ cdDomain.bannerImg }" alt="">
        </div>
        

        <div class="user_info_view ce ce_view _intro" style="display: block;">
            
<!-- <script src="/static/js/vendor/prismplayer-pc/dist/index.js?231130_26709717"></script>
<script src="/static/js/src/entries/common/_material.entry.browserfied.min.js?231130_26709717"></script>
<script src="https://www.edwith.org/static/js/plugins/ntsYoutubeConnecter.1.0.min.js"></script> -->

	<article class="material_view material_text"><!-- #breadcrumb:item/template/material.text.html -->
	<div class="material_desc editor_reset" data-selector="contents">
	<p><c:out value="${ cdDomain.content }"/></p>
	</div>
	</article>
</div>


<!-- 동영상 --> 
<script>
$(function(){
	var player = videojs("#myPlayer", {
	    sources : [
	        { src : "http://localhost/daitdayoung/courses_data/${ cdDomain.couCode }/${ cdDomain.sampleVideo }", 
	        	type : "video/mp4"}
	    ],
	   /*  poster : "test-poster.png", */
	    controls : true,
	    playsinline : true,
	    muted : true,
	    preload : "metadata",
	    height : "480px",
	    width : "760px",
	});      
});
</script>

<div data-selector="playerContainer" class="material_item" style="width: 100%;">
<video id="myPlayer" class="video-js vjs-default-skin" webkit-playsinline></video>
</div>



<!-- 교수자 소개 -->

<div class="con">
    <div class="title_area">
        <h3>교수 소개</h3>
    </div>
    <div class="info_area">
        <ul class="prof_lst">
            <li>
         <div class="prof_thumb bgnone">
         <img src="http://localhost/daitdayoung/courses_data/${ cdDomain.couCode }/${ cdDomain.insProfile }" width="72" height="72" alt=""></div>
                    
           <div class="prof_info">
          	<label class="form-label 교수명"><c:out value="${ cdDomain.insName }"/></label>
            <label class="form-label 자기소개"></label>
            <p class="prof_txt"><c:out value="${ cdDomain.insIntrodce }"/></p>
           </div>
           </li>
            
        </ul>
    </div>
</div>

<!-- // 교수자 소개 -->


<!-- 강의계획 -->

<div class="con">
    <div class="title_area"><h3>강의계획</h3></div>
    <div class="info_area">
            <strong>강의</strong>
            <ol class="plan_lst v2">
                <li>
                	<c:forEach var="cl" items="${ clList }">
                    <ol>
                        <li><c:out value="${ cl.lecName }"/></li>
                    </ol>
                	</c:forEach>
                </li>
            </ol>
    </div>
</div>
<div class="con tag tag_lst">
</div>
</section>
</div>
</div>
<jsp:include page="../index_nav/index_in_foot.jsp"></jsp:include>
</body>
</html>