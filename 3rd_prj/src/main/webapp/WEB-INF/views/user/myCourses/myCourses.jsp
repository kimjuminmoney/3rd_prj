<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
session.setAttribute("userId", "ui_test");
%>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="Cache-Control" content="max-age=86400, public">
    
        <meta name="robots" content="noindex, nofollow">
    
    
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1,user-scalable=no">
    
        <link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
    
    <link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/whaleclass.css">
    <link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css">
    <script src="https://www.edwith.org/static/js/vendor/raphael/raphael.js?231109_47a067d4"></script>
    <script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>

    
        <title>나의 강좌: edwith</title>
        <jsp:include page="../nav/user.css"></jsp:include>
</head>


<!-- <input type="hidden" id="__PARTNER_CODE" value="NEXT" />
<input type="hidden" id="__PARTNER_COLOR" value="#00AB50" />
<input type="hidden" id="__ADMIN_PARTNER_CODE" value="" />
<input type="hidden" id="__FILEUPLOAD_DOMAIN" value="//upload.edwith.org" />
<input type="hidden" id="__FILEUPLOAD_ENDPOINT" value="//upload.edwith.org/uploadManager/upload" />
<input type="hidden" id="__USER_ROLE" value="ROLE_GUEST" />
<input type="hidden" id="__USER_PRIORITY" value="1" />
<input type="hidden" id="__USER_ID" value="2668417">
<input type="hidden" id="__COURSE_ID" value="" />
<input type="hidden" id="__COURSE_OPEN_DAY" value="" />
<input type="hidden" id="__COURSE_CLOSE_DAY" value="" />
<input type="hidden" id="__COURSE_URI_PATH" value="" />
<input type="hidden" id="__CURRENT_DATE" value="2023.11.30" />
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
<input type="hidden" id="__CONTROLLER_TYPE" value="myPage" />
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

    <input type="hidden" id="__MESSAGE_CODE" value="" /> -->

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<script>
    /* var title = document.title;
    document.title = _.unescape(title);

    var entry = require("/entries/common/_head.entry.js");
    entry.initialize(); */

    // 부코 진입시, 통합 회원 약관 동의하지 않았으면 약관 페이지로 이동하는 즉시 실행 함수
    /* (function connectMemberIntegration() {
        // 자체 로그인 서비스를 이용 하는 경우(snsCode가 있는 경우)를 제외하고는 통합 회원 전환을 진행함
        if ("") {  // null, 빈 문자열 호환됨
            return;
        }

        var integrationUserId = Number(2668417);
        var integrationAgree = Boolean(true);
        var regrSecUserId = Number(0);

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
    }()); */


    
        
      /*   if(!wcs_add) var wcs_add = {};
        
            wcs_add["wa"] = "3d48cd39225150";
        
        wcs_do();

        
        
    

    
    function diff_minutes(dt2, dt1) {
        var diff =(dt2.getTime() - dt1.getTime()) / 1000;
        diff /= 60;
        return Math.abs(Math.round(diff));
    } */

   /*  //오늘 하루만 유지되도록 쿠키 Minute 설정
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
    } */
/* 
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
    }); */

    //dom 로드된 후 아래 코드 호출
    //oSequenceManager.requestSequence();
</script>


  <!--   <input type="hidden" id="GA_VIEW_ID" value="UA-93980439-1" />



    <input type="hidden" id="GA_USER_ID" value="0002668417" />
    <input type="hidden" id="GA_DIMENSION01" value="NEXT" /> 


    <input type="hidden" id="GA_DIMENSION02" value="" /> 
    <input type="hidden" id="GA_DIMENSION03" value="" /> 
    <input type="hidden" id="GA_DIMENSION04" value="" /> 
    <input type="hidden" id="GA_DIMENSION07" value="" /> 
    <input type="hidden" id="GA_DIMENSION08" value="" /> 
    <input type="hidden" id="GA_DIMENSION09" value="" /> 

<input type="hidden" id="GA_DIMENSION05" value="NEXT" /> 
<input type="hidden" id="GA_DIMENSION06" value="PC_WEB" />  -->

<!-- <script>
    
		
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
</script> -->
<script>
/* function toggleTab(tabId, link) {
    // 모든 tab_content를 숨김
    $('.tab_content').hide();

    // 클릭한 tabId에 해당하는 tab_content를 보이게 함
    $('#' + tabId).show();

    // 모든 탭의 aria-selected 속성을 false로 설정
    $('.tab_list li').attr('aria-selected', 'false');

    // 클릭한 링크의 부모 li의 aria-selected 속성을 true로 설정
    $(link).parent().attr('aria-selected', 'true');
  } */
  
/* function toggleTab(tabId) {
    // 모든 tab_content를 숨김
    $('.tab_content').hide();

    // 클릭한 tabId에 해당하는 tab_content를 보이게 함
    $('#' + tabId).show();

    // 모든 탭의 aria-selected 속성을 false로 설정
    $('.tab_list li').attr('aria-selected', 'false');

    // 클릭한 링크의 부모 li의 aria-selected 속성을 true로 설정
    $('#' + tabId).attr('aria-selected', 'true');
  } */
  function toggleTab(dataComplete) {
      // 모든 tab_content를 숨김
      $('.tab_content').hide();

      // 클릭한 data-complete에 해당하는 tab_content를 보이게 함
      $('.tab_content[data-complete="' + dataComplete + '"]').show();

      // 모든 탭의 aria-selected 속성을 false로 설정
      $('.tab_list li').attr('aria-selected', 'false');

      // 클릭한 링크의 부모 li의 aria-selected 속성을 true로 설정
      $('.tab_list li[data-complete="' + dataComplete + '"]').attr('aria-selected', 'true');
    }
</script>
<!-- <script>
    $(document).ready(function() {
      // 페이지 로드 시 초기에 'Y'인 <li> 요소들을 보이게 설정
      $('li[data-complete="Y"]').addClass('completed-y');

      // 'Show Y' 링크 클릭 시 'Y'인 <li> 요소들 보이게 토글
      $('#completed').click(function(e) {
        e.preventDefault();
        $('.completed-y').toggle();
        alert("completed")
      });

      // 'Show N' 링크 클릭 시 'N'인 <li> 요소들 보이게 토글
      $('#ongoing').click(function(e) {
        e.preventDefault();
        $('.completed-n').toggle();
        alert("ongoing")
      });
    $('ul li a').click(function() {
        // 현재 클릭된 <a>의 부모 <li>에 대해 설정
        $(this).parent().attr('aria-selected', 'true');
        // 다른 <li>들에 대해 설정
        $(this).parent().siblings().attr('aria-selected', 'false');
      });
    });
  </script> -->
  <style>
    /* .completed-y, .completed-n {
      display: none;
    } */
    /* .tab_content {
      display: none;
    } */
  </style>


<!-- #breadcrumb:whaleclass/main/index.gsp -->
<!-- <div class="modal_wrap whale_look" id="_modal_wrap" style="display:none; z-index: 10000">
    애니메이션 영역
    <div class="modal_container" data-md-content></div>
    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
</div>
<input type="hidden" name="partnerUrl" value="https://www.edwith.org/">
<input type="hidden" id="__isLogged" value="org.nhnnext.mooc.user.SecUser : 2668417"> -->


    

<body class="win chrome chrome119 re_pack new_color edwith">
    <div class="wrap">
        <!-- container -->
        <div class="container new_layout ">
            <!-- HEADER -->
            

<!-- #breadcrumb:common/_whaleclass_header.gsp -->
<jsp:include page="../nav/header.jsp"></jsp:include>

            <!-- [D] 모바일에서 snb 딤드 노출시 class open 추가해주세요
				딤드 노출시 html, body에 style="overflow:hidden" 추가해주세요 -->
            <span class="snb_dimed" id="snb_dimed"></span>

            <!--SNB-->
            
<!-- #breadcrumb:common/_whaleclass_snb.gsp -->
<jsp:include page="../nav/nav3.jsp"></jsp:include>

            
<div class="content">
    <div class="page">
        <div class="main_top b_none" data-main-top>
            <button type="button" id="test" class="btn_gnb" data-gnb-on-btn><span class="blind">메뉴 펼치기</span></button>
            <!-- my_btn_area  mo ~ 1279px 에 노출 -->
            <div class="my_btn_area">
                <a href="#" class="btn_my" data-my-btn>
                    <img src="" width="32" height="32" alt="" class="my_thumb" style="display: none" data-profile-btn-image>
                </a>
                <div class="badge_box" style="display: none" data-badge-box>
                    <span class="blind">알림</span><em class="badge_new" data-badge-box-count></em>
                </div>
            </div>
            <h3 class="tit_home">나의 강좌</h3>
        </div>
        <div class="tab_area">
            <ul class="tab_list" role="tablist">
	            <li role="tab" aria-selected="true" data-complete="ongoing"><a href="#void" id="ongoing" onclick="toggleTab('ongoing')">참여중인 강좌</a></li>
	    		<li role="tab" aria-selected="false" data-complete="completed"><a href="#void" id="completed" onclick="toggleTab('completed')">수료한 강좌</a></li>
            </ul>
        </div>
		

<div class="course_group course_join" data-course-group>
    <div class="course_lst class_area">
		
		<c:choose>
        	<c:when test="${ not empty coursesList || listSize != 0 }">
            <ul class="tab_content_list" data-course-card-ul>
                    <!-- div each -->
                    <c:forEach var="courses" items="${ coursesList }">
                    <li class="tab_content"  ${ courses.completionStatus == 'N' ? " data-complete='ongoing' style='display: block;'"  : " data-complete='completed' style='display: none;'" }  data-course="5094" data-course-uri="onlineclass-tutorial" data-course-name="누구나 쉽게 준비하는 에드위드 온라인클래스!">
                        <div class="info_area ">
                            <div class="thumb">
                                <!-- 배너랑 강좌 링크 넣기 -->
                                <a href="/onlineclass-tutorial/home">
	                            	<img src="http://localhost/daitdayoung/courses_data/${ courses.couCode }/${ courses.bannerImg }" width="88" height="48" alt="강좌 썸네일">
                                </a>
                            </div>
                            <div class="tit">
                                <!-- 강좌 링크 넣기 -->
                                    <a href="/onlineclass-tutorial/home">
                                
                                    <strong class="title"><c:out value="${ courses.couName }"/></strong>
                                </a>
                                <div class="author">
                                    <span class="name"><c:out value="${ courses.insName }"/></span>
                                </div>
                            </div>
                             <!-- <div class="info_btns">
                                
                                <button type="button" class="btn_lecture_more"style="display: block;">더보기</button>
                                <button type="button" class="btn_lecture_more" data-btn="showMoreCourseOption"><i>더보기</i></button>
                                <ul class="ly_btn_more" style="display: none;" data-course-more-option="">
                                    
                                        <li><a class="btn_area" href="/onlineclass-tutorial?type=stay">수료</a></li>
                                    
                                </ul>
                            </div> -->
                        </div>
                        
                            <div class="desc_area always" style="display: block;" data-info-lec>
                                <div class="desc_wrap">
                                    <div class="info_lec">
                                        <ul>
                                            <li>
                                                <strong>강좌 기간</strong>
                                                <p>
                                                        <c:out value="${ courses.registrationdate }"/> ~ <c:out value="${ courses.coursePeriod }"/>
                                                </p>
                                            </li>
                                            <li>
                                                <strong>진도율</strong>
                                                <div class="progress_area">
                                                    <div class="progress">
                                                        <div class="progress_bar" style="width:  ${ courses.progressRate/courses.lecCnt *100 }%;"></div>
                                                    </div>
                                                    <span class="per">${ courses.progressRate/courses.lecCnt *100 }%</span>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="info_more_box">
                                            <div class="info_more_area">
                                                
                                                    <a href="#" class="btn btn_type3" data-btn="showStandard">수료기준</a>
                                                    <div class="help_pop" style="display: none" data-standard-popup>
                                                        
                                                            강좌 진도율 : 총 <em><c:out value="${ courses.enrollRate }"/></em>% 이상<br/>
                                                            시험 성적 : <em><c:out value="${ courses.examResults }"/></em>점 이상
                                                        
                                                        <a href="#" class="pop_close" data-btn="hideStandard">레이어 닫기</a>
                                                    </div>
                                                
                                                <a href="#" class="btn btn_type3" data-btn=certificate data-uripath=onlineclass-tutorial data-passed=false data-is-always-open=true>수료증</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="done_box">
                                    	<div class="done_area">
                                        	<div class="circle_progress_wrap lecture">
                                            	<div data-selector="c_progress" data-color="yellow"></div>
                                            	<div class="num">
	                                                <span class="val"><c:out value="${ courses.progressRate }"/></span>
	                                                <span class="slash">/</span>
	                                                <span class="total"><c:out value="${ courses.lecCnt }"/></span>
                                                </div>
                                                <span>강의</span>
                                            </div>

                                        <div class="circle_progress_wrap quiz">
                                            <div data-selector="c_progress" data-color="yellow"></div>
                                            <div class="num">
                                            <c:choose>
                                            	<c:when test="${ courses.examStatus eq 'Y'}">
                                                 <span class="val"><c:out value="${ courses.examScore }"/></span>
                                                 <span class="slash">/</span>
                                                 <span class="total">100</span>
                                            	</c:when>
                                            	<c:otherwise>
                                                 <span class="val"></span>
                                                 <span class="slash">미응시</span>
                                                 <span class="total"></span>
                                            	</c:otherwise>
                                            </c:choose>
                                            </div>
                                            <span>시험</span>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </li>
                    </c:forEach>
            </ul>
            </c:when>
            <c:otherwise>
		        <!-- 수강신청 강좌가 없들 때 -->
					<div class="class_none">
						<div class="noti_wrap">
							<h4 class="noti_tit">수강신청한 강좌가 없습니다.</h4>
						</div>
					</div>
			</c:otherwise>
		</c:choose>
    </div>
</div>
            
        
        
            <!-- paginate -->
            <nav class="paginate" role="navigation">
            <div class="inner">
            <a href="#" class="pre" onclick="return false;">이전</a>
            <ul class="page_list">
            <li><a href="/myPage/home?searchType=&amp;searchText=&amp;sortType=REG&amp;offset=0&amp;max=20" sort="regYmdt" order="desc" class="selected">1</a></li>
            </ul>
            <a href="#" class="next" onclick="return false;">다음</a>
            </div>
            </nav>
            
        
    </div>
</div>


<script src="https://www.edwith.org/static/js/src/entries/whaleclass/main/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(function(){
        var entry = require("/entries/whaleclass/main/index.entry.js");
        entry.initialize({
            searchType: "all"
        });
    });
</script>

    


<jsp:include page="../nav/footer.jsp"></jsp:include>

<!-- Build 231109.47a067d4 -->

<!-- lcs file -->
<script src="https://www.edwith.org/static/lcs-js/lcslog.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/footer/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
    });
</script>
        </div>
    </div>
</body>
</html>


