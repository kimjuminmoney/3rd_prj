<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
session.setAttribute("uiId", "ui_test");
%>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <meta charset="utf-8">
    
<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/whaleclass.css">
<script src="https://www.edwith.org/static/js/vendor/raphael/raphael.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
<!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/myCourses.css" type="text/css">
        <title>나의 강좌: edwith</title>
</head>
<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<script>
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
<body class="win chrome chrome119 re_pack new_color edwith">
<div class="wrap">
<!-- container -->
<div class="container new_layout ">
<!-- HEADER -->
<jsp:include page="../nav/header.jsp"></jsp:include>
	<span class="snb_dimed" id="snb_dimed"></span>
<jsp:include page="../nav/nav_myCourses.jsp"></jsp:include>

            
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
                    <c:forEach var="courses" items="${ coursesList }" >
                    <li class="tab_content"  ${ courses.completionStatus == 'N' ? " data-complete='ongoing' style='display: block;'"  : " data-complete='completed' style='display: none;'" }  data-course="5094" data-course-uri="onlineclass-tutorial" data-course-name="누구나 쉽게 준비하는 에드위드 온라인클래스!">
                        <div class="info_area ">
                            <div class="thumb">
                                <!-- 배너랑 강좌 링크 넣기 -->
                                <a href="courses.do?couCode=${ courses.couCode }">
	                            	<img src="http://localhost/daitdayoung/courses_data/${ courses.couCode }/${ courses.bannerImg }" width="88" height="48" alt="강좌 썸네일">
                                </a>
                            </div>
                            <div class="tit">
                                <!-- 강좌 링크 넣기 -->
                                    <a href="courses.do?couCode=${ courses.couCode }">
                                    <strong class="title"><c:out value="${ courses.couName }"/></strong>
                                </a>
                                <div class="author">
                                    <span class="name"><c:out value="${ courses.insName }"/></span>
                                </div>
                            </div>
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


