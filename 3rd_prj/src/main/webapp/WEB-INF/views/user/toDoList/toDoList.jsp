<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <meta charset="utf-8">
    
<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/whaleclass.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css">
<script src="https://www.edwith.org/static/js/vendor/raphael/raphael.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
        <title>나의 할 일: 김주민</title>
<style>
   .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a,
   .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .list_title em,
   .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .info em,
   .re_pack .class_area .class_card > li .todo_list strong,
   .re_pack .tab_area .tab_list li[aria-selected="true"] a,
   .re_pack .class_area .class_card > li .lk_guide .ly_guide em,
   .re_pack .content .paginate a.selected,
   .re_pack .class_area .finish_guide a.btn_certificate,
   .re_pack .myhome .recent_vod_area .recent_vod_list .vod_info .runtime .time_view,
   .re_pack.edwith .course_join .course_lst .desc_area .complete_info .info_standard dl dd em,
   .re_pack .class_area .class_none .noti_wrap .btn_apply {
       color:#00AB50;
   }
   .re_pack .class_area .finish_guide a.btn_certificate,
   .re_pack .class_area .finish_guide a.btn_certificate,
   .re_pack .class_area .class_none .noti_wrap .btn_apply {
       border-color:#00AB50;
   }
   .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a i svg path:first-child,
   .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a i svg rect:first-child{
       fill:#00AB50;
   }
   .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a:after,
   .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .ico_bx,
   .re_pack .main_top .btn_area .btn_type,
   .re_pack .class_area .class_card > li .bar_full .value,
   .re_pack .tab_area .tab_list li[aria-selected="true"]:after,
   .re_pack .class_area .class_card > li .class_info .btn_live:before,
   .re_pack .class_area .class_none .noti_wrap .btn_apply,
   .re_pack.edwith .course_lst .info_btns .btn_whaleclass .icon_video,
   .re_pack .myhome .recent_vod_area .recent_vod_list .lnk_thumb .runtime_view .runtime_bar,
   .re_pack.edwith .btn.btn_type6,
   .re_pack .class_area .class_none .noti_wrap .btn_apply,
   .course_lst .ly_prof_area .ly_prof .tab .ick .radio.checked{
       background-color:#00AB50;
   }
   .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .read {
       background-color:#ccd1d0;
   }

   

   .new_layout .main_top,
   .new_layout .tab_area .tab_list,
   .new_layout .class_area .class_card > li {
       border-color:#EBF4FD;
   }
   .timetable_area .top_area .summ_area .term_btn_box .daily.now,
   .timetable_area .top_area .summ_area .term_btn_box .weekly.now,
   .new_color .btn_area .btn_modal {
       background-color:#00AB50;
   }
   /*파트너 컬러 .new_color 클래스 body에 추가 후 style 추가.*/
   .new_color .input_area input[type="radio"]:checked + label::before {
       background-color:#00AB50;
   }
   .new_color .profile_wrap .profile_area .img_upload i svg circle:first-child{
       fill:#00AB50;
   }
   .new_color .profile_wrap .profile_area .img_upload i svg circle:last-child{
       stroke:#00AB50;
   }
   .new_color .title_text em,
   .modal_wrap .list_area .price_list li .item .price .clr,
   #header.whale_main .whale_lnk .big_menu.selected .link {
       color:#00AB50;
   }
   .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap ul li .ico_bx {
       background-color: #00AB50;
   }
   .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap ul li .list_title em {
       color:#00AB50;
   }
   .re_pack #header.whale_main .whale_lnk .big_menu.selected{
       border-color: #00AB50;
   }
</style>
<style type="text/css">
.tab_content_list {
    list-style: none;
    padding: 0;
}

.info_area {
    display: flex;
    margin: 0px;
}

.tit {
    flex: 1;
    padding-top: 15px;
}

.tit a {
    display: block;
    text-align: center;
}

.title {
    font-weight: bold;
}

.exam-status,
.remaining-period {
    flex: 1;
    padding-top: 15px;
    text-align: center;
}
</style>
</head>
<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>

<!-- #breadcrumb:whaleclass/main/index.gsp -->
<div class="modal_wrap whale_look" id="_modal_wrap" style="display:none; z-index: 10000">
<!--애니메이션 영역-->
<div class="modal_container" data-md-content></div>
<div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
</div>

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
            <div class="my_btn_area">
                <a href="#" class="btn_my" data-my-btn>
                    <img src="" width="32" height="32" alt="" class="my_thumb" style="display: none" data-profile-btn-image>
                </a>
                <div class="badge_box" style="display: none" data-badge-box>
                    <span class="blind">알림</span><em class="badge_new" data-badge-box-count></em>
                </div>
            </div>
            <h3 class="tit_home">나의 할일</h3>
            <!-- <div class="btn_area" data-course-list>
                    <button type="button" class="btn_type" data-course-join-btn><span class="btn_txt">강좌 참여하기</span></button>
            </div> -->
        </div>
<div class="course_group course_join" data-course-group>
    <div class="course_lst class_area">
            <c:choose>
        	<c:when test="${ not empty toDoList }">
            <ul class="tab_content_list" data-course-card-ul>
    <!-- div each -->
    <c:forEach var="todo" items="${toDoList}">
    <c:if test="${ todo.completionStatus != 'Y'}">
        <li>
            <div class="info_area" style="margin-bottom: 0px;">

                <!-- tit -->
                <div class="tit">
                    <a href="courses.do?crgCode=${ todo.crgCode }&couCode=${todo.couCode}">
                        <strong class="title"><c:out value="${todo.couName}" /></strong>
                    </a>
                </div>

                <!-- examStatus -->
                <div class="exam-status">
                    <c:choose>
                        <c:when test="${todo.examStatus eq 'Y'}">
                            <strong class="title">시 험 응 시</strong>
                        </c:when>
                        <c:when test="${todo.examStatus eq 'N'}">
                            <strong class="title">남은 시험 응시일: <c:out value="${todo.remainingperiod}" />일</strong>
                        </c:when>
                    </c:choose>
                </div>

                <!-- remainingperiod -->
                <div class="remaining-period">
                    <strong class="title">남은 강의 기간: <c:out value="${todo.remainingperiod}" />일</strong>
                </div>
                
            </div>
        </li>
    </c:if>    
    </c:forEach>
</ul>
            </c:when>
            <c:otherwise>
		        <!-- 수강신청 강좌가 없들 때 -->
					<div class="class_none">
						<div class="noti_wrap">
							<h4 class="noti_tit">수강신청 강좌가 없습니다.</h4>
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

<jsp:include page="../nav/footer.jsp"></jsp:include>
        </div>
    </div>
</body>
</html>


