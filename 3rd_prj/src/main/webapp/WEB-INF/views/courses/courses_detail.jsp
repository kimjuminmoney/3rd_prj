<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<jsp:include page="../index_nav/courses_detail_head.jsp"/>
</head>
    
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
                        <strong>타입</strong>
                        <span class="desc">
                            MOOC 강좌
                        </span>
                    </li>
                    <li><strong>기간 </strong>
                        <span class="desc">
                            
                                상시 수강
                            
                        </span>
                    </li>
                    
                        <li><strong>학습시간 </strong>
                            <span class="desc">
                                
                                    자유롭게 학습
                                
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
        
            
        
        <div class="state_area">
            <!-- 수강신청 버튼
                clr = 파트너컬러(수강신청),
		        clr2 = 강좌 바로가기, 수료완료, 미수료
		        clr3 = 승인 대기 중
		        clr4 = 종료된 강좌 (attribute에 disabled 추가) -->
            
            
            
            <button class="btn btn_type8 clr" id="_btn_request_lecture" data-course-id="GPTSW" data-lecture-status="" data-request-btn="">
                
                
                    
                        <span data-btn-label="">수강신청</span>
                    
                
            </button>
            <!-- // 수강신청 버튼 -->
            <!-- 수강신청 안내 메시지 -->
            
            <!-- // 수강신청 안내 메시지 -->
            <div class="btn_box">
            </div>

        </div>
        <div class="lecture_sub_info">
            <div class="count_info">
                <span class="count_like"><em>좋아요</em> 0</span>
                <span class="count_observe"><em>수강생</em> 14</span>
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
                            <h2><a href="#">청소년을 위한 Chat GPT</a></h2>
                            
                            
                            
                                <div class="profile">
                                    
                                        <span class="thumb bgnone"><img src="https://cphinf.pstatic.net/mooc/20220307_149/1646636219016hqEI7_JPEG/%B1%D7%B8%B21.jpg?type=ff48_48" width="24" height="24" alt=""></span>
                                    
                                    <span class="name">
                                        
                                            원광대학교SW중심대학사업단
                                        
                                    </span>
                                    
                                        <span class="from">edwith</span>
                                    
                                </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </header>

        
        <div class="con thmb">
            <img src="https://cphinf.pstatic.net/mooc/20231114_102/1699945915368nwsHz_JPEG/7VFAEoXblqlpvO6AigHH.jpg?type=w760" alt="">
        </div>
        

        <div class="user_info_view ce ce_view _intro" style="display: block;">
            
            <input type="hidden" id="__MATERIALS" data-selector="materials" value="[{&quot;id&quot;:3364772,&quot;text&quot;:&quot;<p><br></p>&quot;,&quot;isShowMaterial&quot;:false,&quot;lectureId&quot;:0,&quot;isUploading&quot;:false,&quot;orgLectureId&quot;:0,&quot;isCode&quot;:false,&quot;courseId&quot;:67376,&quot;type&quot;:&quot;Text&quot;,&quot;isLoaded&quot;:true}]">
<input type="hidden" id="__COURSENAME" data-selector="courseName" value="GPTSW">
<script src="/static/js/vendor/prismplayer-pc/dist/index.js?231130_26709717"></script>
<link rel="stylesheet" type="text/css" href="/static/js/vendor/prismplayer-pc/dist/main.css?231130_26709717">
<script src="/static/js/src/entries/common/_material.entry.browserfied.min.js?231130_26709717"></script>


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

<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_material.entry.js");
        entry.initialize({
            welTarget: $(".ce_view"),
            data: {
                courseName: $("#__COURSENAME").val(),
                materials: $.parseJSON($("#__MATERIALS").val()),
                isEditable: false,
                userId: '0',
                courseId: '67376',
                lectureId: '',
                videoType: 'LECTURE',    // 강의 상세페이지와 정보 페이지는 이 곳을 같이 사용하고 있네요.
                videoTypeId: '',
                isOpenAll: false,
                liveInfo: {
                    isLiveOpened: false,
                    recentLiveStartTime: "",
                    recentLiveEndTime: "",
                    reservationStartTime: "",
                    reservationEndTime: "",
                    streamType: "NOVA",
                    isShowLiveMaterial: false
                }
            }
        });
    });
</script>
<script src="https://www.edwith.org/static/js/plugins/ntsYoutubeConnecter.1.0.min.js"></script>

	<article class="material_view material_text"><!-- #breadcrumb:item/template/material.text.html -->
	<div class="material_desc editor_reset" data-selector="contents">
	<p>
	<br>
	</p></div></article>
</div>


<!-- 동영상 --> 
       
<div data-selector="playerContainer" class="material_item" style="width: 100%;">
    <div data-selector="movieArea" style="position:relative;left:0;top:0;width:762px;height:479px;">
    <div aria-label="비디오 플레이어" tabindex="0" class="pzp pzp-pc pzp-pc--beforeplay pzp-pc--controls pzp-pc--vod pzp-pc--size-m"><!----> 
    	<canvas width="854" height="480" class="pzp-space-creator pzp-pc__space-creator"></canvas> 

	<div class="pzp-pc__loading-indicator pzp-loading-indicator pzp-loading-indicator--medium">
	<div class="pzp-loading-indicator__icon">
		<span class="pzp-loading-indicator__icon-left pzp-icon pzp-icon__left"></span> 
		<span class="pzp-loading-indicator__icon-right pzp-icon pzp-icon__right"></span>
	</div>
	</div> 
	
	<div><!----> <!----> <!----> <!----> <!----></div> 
	<div><!----> <!----> <!----> <!----> <!----> <!----></div>
	</div>
	</div>
</div>



<!-- 교수자 소개 -->

<div class="con">
    <div class="title_area">
        <h3>교수자 소개</h3>
    </div>
    <div class="info_area">
        <ul class="prof_lst">
            
            <li>
         <div class="prof_thumb bgnone">
         <img src="https://cphinf.pstatic.net/mooc/20220307_149/1646636219016hqEI7_JPEG/%B1%D7%B8%B21.jpg?type=ff72_72_r" width="72" height="72" alt=""></div>
            </a>
                        
                    
           <div class="prof_info">
               
                   
                   
                   <b>원광대학교SW중심대학사업단</b>
                   
                   </a>
                   
               
               <p class="prof_txt">원광대학교&nbsp;소&nbsp;인&nbsp;미&nbsp;교수<br>선문대학교&nbsp;김&nbsp;영&nbsp;애&nbsp;교수<br>대전오류초등학교&nbsp;반창모&nbsp;선생님</p>
           </div>
           </li>
            
        </ul>
    </div>
</div>

<!-- // 교수자 소개 -->

<!-- 운영진 소개 -->
<div id="operatorView" class="con" style="display:none">
    <div class="title_area">
        <h3>운영진 소개</h3>
    </div>
    <div class="info_area">
        <ul class="prof_lst _operator_list">
        </ul>
    </div>
</div>
<!-- // 운영진 소개 -->

<!-- 강의계획 -->

<div class="con">
    <div class="title_area"><h3>강의계획</h3></div>
    <div class="info_area">
        
        
            <strong>강의</strong>
            <ol class="plan_lst v2">
                
                <li>
                    <span class="tit">청소년을 위한 ChatGPT</span>
                    
                    <ol>
                        <li>청소년을 위한 ChatGPT</li>
                    </ol>
                    
                </li>
                
                <li>
                    <span class="tit">청소년을 위한 ChatGPT</span>
                    
                    <ol>
                        <li>제1회 누구나 알기쉬운 생성형 AI와의 만남(1)</li>
                    </ol>
                    
                    <ol>
                        <li>제2회 누구나 알기쉬운 생성형 AI와의 만남(2)</li>
                    </ol>
                    
                    <ol>
                        <li>제3회 이야기를 나눠볼까? AI와 함께하는 글쓰기(1)</li>
                    </ol>
                    
                    <ol>
                        <li>제4회 이야기를 나눠볼까? AI와 함께하는 글쓰기(2)</li>
                    </ol>
                    
                    <ol>
                        <li>제5회 예술적 영감을 빌려줘! AI를 활용한 이미지 만들기(1)</li>
                    </ol>
                    
                    <ol>
                        <li>제6회 예술적 영감을 빌려줘! AI를 활용한 이미지 만들기(7)</li>
                    </ol>
                    
                    <ol>
                        <li>제7회 멜로디를 만들어줘! AI로 음악 작곡하기</li>
                    </ol>
                    
                    <ol>
                        <li>제8회 일상을 영상으로 남겨줘! AI로 영상 편집하기(1)</li>
                    </ol>
                    
                    <ol>
                        <li>제9회 일상을 영상으로 남겨줘! AI로 영상 편집하기(2)</li>
                    </ol>
                    
                    <ol>
                        <li>제10회 코딩을 도와줘! AI로 인터렉티브한 코딩 프로그램 만들기(1)</li>
                    </ol>
                    
                    <ol>
                        <li>제11회 코딩을 도와줘! AI로 인터렉티브한 코딩 프로그램 만들기(2)</li>
                    </ol>
                    
                    <ol>
                        <li>제12회 AI를 활용한 나만의 오픈 포트폴리오 만들기</li>
                    </ol>
                    
                    <ol>
                        <li>제13회 AI세상, 스토리로 만나보는 윤리 문제</li>
                    </ol>
                    
                </li>
                
            </ol>
        
        
    </div>
</div>
            
 <!-- // 강의계획 -->


<!-- 태그 -->

<div class="con tag tag_lst">
</div>

<!-- // 태그 -->
        
</section>


</div>
<!-- //강좌소개 -->
<script src="https://www.edwith.org/static/js/src/entries/course/index.entry.browserfied.min.js?231130_26709717"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_sns.share.service.entry.browserfied.min.js?231130_26709717"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/course/index.entry.js");
        entry.initialize({
            title : '청소년을 위한 Chat GPT',
            
            postId : '328460',
            
            useQuestion : false,
            courseQuestions : '',
            courseUri: 'GPTSW',
            userId: '0',
            courseId: '67376',  // 동영상 통계 지표에 필요한 course id
            videoType: 'INTRODUCTION',
            videoTypeId: '0',
            heartbeatApiDomain: 'https://standby-campaign.naver.com',
            requestSuccessMessage: '수강신청이 완료되었습니다. (수강완료시 수료증 발급 가능)',
            useAgreement: false
        });

        var courseUrl = 'https://www.edwith.org/GPTSW';
        var entry = require("/entries/common/_sns.share.service.entry.js");
        var htData = {
            facebook : [courseUrl, '1441124829481137', 'http://www.edwith.org/popupClose'],
            twitter : [courseUrl, $("#_twitter_share_content").text(),  '',  ''],
            googlePlus : [courseUrl],
            band : [courseUrl, $("#_band_share_content").text()],
            url: courseUrl
        };
        entry.initialize($('[data-sns-area]'), htData);
    });

    
    $('#_btn_request_lecture').removeClass('app');
    $('#_btn_request_bclecture').removeClass('app');
    
</script>

</div>
    
        

<footer id="footer">
<jsp:include page="../index_nav/index_in_foot.jsp"></jsp:include>
</footer>