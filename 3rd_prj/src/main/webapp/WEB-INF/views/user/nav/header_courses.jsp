<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header" class="default_login mooc">
<!-- #breadcrumb:boostcourse/common/_gnb_course_menu.gsp -->
<h1 class="logo" style="height: 100%; padding: 0px;">
    <a href="../index.do" style="display: block; height: 100%; width: 100%;">
        <img width="50%" height="100%" src="http://localhost/daitdayoung/common/images/logo_1.png" alt="edwith">
    </a>
</h1>

<!-- 신규 boostcourse gnb 시작 -->
<div class="layout_in " data-wrap-gnb-menu="" data-is-boostcourse="true">
        <ul class="gnb ly_type2" id="gnb">
            <!-- [D] 활성화 li class="on" 추가 -->
            <!-- 운영 강좌/클래스 -->
                <!-- 나의 강좌/클래스 -->
            <li class="ic" data-gnb-menu="join">
                <a href="myCourses.do?type=myCourses" data-markup-gnb=".ly_dropdown">
                    <span>나의 강좌</span>
                </a>
                <!-- <div class="ly_dropdown">
                    <div class="ly_top">
                        <h2 class="tit">나의 강좌</h2>
                        <a href="/myPage/home" class="more">전체보기</a>
                    </div>
                    <div class="scroll_wrap" data-scroll-wrap="join">
                        <ul class="my_class" data-list="course" data-gnb-course-list="join"></ul>
                        <div class="more_button" style="padding: 24px 24px 0px; display: none;" data-course-more-div="join">
                            <button type="button" class="add_button" data-course-more-btn="join">
                                더보기 <span class="num" data-course-more-num="join"></span>
                            </button>
                        </div>
                    </div>
                </div> -->
            </li>
            
            
            <!-- <li class="ic" data-gnb-menu="myNews">
                <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown">
                    <span>나의 소식</span>
                </a>
                <span class="count"><em>0</em></span>
                <div class="ly_dropdown">
                    <div class="ly_top">
                        <h2 class="tit">나의 소식</h2>
                    </div>
                    <div class="scroll_wrap" data-scroll-wrap="news">
                        <ul class="my_news" data-list="news"></ul>
                        <div class="more_button" style="padding: 24px 24px 0 24px; display:none" data-news-more-div="">
                            <button type="button" class="add_button" data-news-more-btn="">
                                더보기 <span class="num" data-news-more-num=""></span>
                            </button>
                        </div>
                    </div>
                    <button type="button" class="btn_jumpbar"><span>D-Day</span></button>
                </div>
            </li> -->
            
            <li class="ic todo" data-gnb-menu="myTodo">
                <a href="toDoList.do?type=toDoList" data-markup-gnb=".ly_dropdown">
                    <span>나의 할 일</span>
                </a>
               <!--  <span class="count"><em>0</em></span>
                <div class="ly_dropdown">
                    <div class="ly_top">
                        <h2 class="tit">나의 할 일</h2>
                    </div>
                    <div class="scroll_wrap" data-scroll-wrap="todo">
                        <ul class="noti_list" data-list="todo"></ul>
                        <div class="more_button" style="padding: 24px 24px 0 24px; display:none" data-todo-more-div="">
                            <button type="button" class="add_button" data-todo-more-btn="">
                                더보기 <span class="num" data-todo-more-num=""></span>
                            </button>
                        </div>
                    </div>
                </div> -->
            </li>
        
        <!-- <li class="search">
            <div class="group">
                <div class="input">
                    <span class="input_area"><input type="text" name="searchQuery" id="input_srch" data-claus-search-text=""></span>
                    <span class="added"><button type="button" class="btn" id="btn_srch" data-claus-search-btn=""><span class="sr_only">검색</span></button></span>
                </div>
            </div>
        </li> -->

<li class="nickname ly_right" data-gnb-menu="myLogin">
    <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown" title="나의 메뉴">
        <span class="thumb bgnone">
            <img data-gnb-profile-image="" src="https://cphinf.pstatic.net/mooc/20231109_73/1699518435941mLJn6_PNG/aLBZa5mqaNLKq3kOxZbH.png?type=ff64_64" width="32" height="32" alt="money55">
        </span>
    </a>

    <div class="ly_dropdown">
        <ul>
            <li><a href="/myPage/home" title="나의 강좌">나의 강좌</a></li>
            <li><a href="/myPage/recentlyPlayedList" title="최근 본 동영상">최근 본 동영상</a></li>
            <li><a href="/userInfo/base-info" title="개인 정보">개인 정보</a></li>
            <li><a href="/logout" title="로그아웃">로그아웃</a></li>
        </ul>
    </div>
</li>
    </ul>
</div>

</header>