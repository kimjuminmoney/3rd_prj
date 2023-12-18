<%@page import="kr.co.daitdayoung.admin.dao.ManageUsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="../../index_nav/courses_detail_head.jsp"/>
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
 
<body>   
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
	
		var param={couCode: "${ param.couCode }",
				insId: $("#insId").val()}
		var finalApprove = $("#finalApprove").val();
		alert(finalApprove);
		
	var confirmation = confirm('강좌를 승인하시겠습니까?');

		if(confirmation){
			$.ajax({
	        	url:"modapp.do",
				type:"GET",
				data: param,
				dataType:"json",
				error:function(xhr){
					console.log(xhr.status);
				},
				success:function(jsonObj){
					 var modCnt = jsonObj.modCnt;
					 var addCnt = jsonObj.addCnt;
					 if(finalApprove == 'Y'){
						 alert("이미 승인된 강좌입니다.");
					 }else{
					   if(modCnt=='1' && addCnt>='1'){
						   alert("강좌가 승인되었습니다.");
						   window.location.href="manageCourses.do";
					   }else{
						   alert("강좌가 승인되지 않았습니다. 다시 한번 시도해주세요.");
					   }//end else
					 }//end else
				}//success
	        });//ajax
		}else{
			alert("취소되었습니다.");
		}
		
	});//click
})
</script>            
        
        <div class="state_area">
            <!-- 수강신청 버튼
                clr = 파트너컬러(수강신청),
		        clr2 = 강좌 바로가기, 수료완료, 미수료
		        clr3 = 승인 대기 중
		        clr4 = 종료된 강좌 (attribute에 disabled 추가) -->
		    <%-- <input type="hidden" value="${ crDomain.crCount }" name="crCount"/>    
		    <input type="hidden" value="${ crDomain.completionStatus }" name="completionStatus"/>     --%>
            <button class="btn btn_type8 clr" id="btn_request_lecture" data-course-id="GPTSW" data-lecture-status="" data-request-btn="">
                        <span data-btn-label="">승인</span>
            </button>
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
                                <div class="profile">
                                    <%-- <img src="http://localhost/daitdayoung/${ cdDomain.couCode }/${ cdDomain.insProfile }" width="24" height="24" alt=""> --%>
                                    <span class="name">
                                            <c:out value="${ cdDomain.insName }"/>
                                    </span>
                                    <input type="hidden" id="insId" value="${ cdDomain.insId }">
                                    <input type="hidden" id="finalApprove" value="${ cdDomain.finalApprove }">
                                </div>
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
<jsp:include page="../../index_nav/index_in_foot.jsp"></jsp:include>
</body>
</html>