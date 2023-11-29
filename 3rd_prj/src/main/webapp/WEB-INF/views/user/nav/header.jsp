<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" class="default_ly2 ">
    <div class="header_wrap">
            <h1 class="bi_school">
                <a href="/myPage/openClass?isHomeLogo=true">
                    <img src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v4.png" style="max-height:24px;" alt="edwith">
                </a>
        	</h1>
        <div class="layout_in " data-wrap-gnb-menu="" data-is-boostcourse="true">
            <!--[D] 드롭다운 레이어 .ly_type2로 구분 -->
            <ul class="gnb ly_type2" id="gnb">
                    <!-- 운영 강좌/클래스 -->
                    <!--[D] 나의 클래스.-->
                    <li class="ic lecture ly_right" data-gnb-menu="join">
                        <a href="javascript:void(0);" class="btn_mo" data-markup-gnb=".ly_dropdown">
                            <span>나의 강좌</span>
                        </a>
                        <div class="ly_dropdown">
                            <div class="ly_top">
                                <h2 class="tit">나의 강좌</h2>
                                <a href="/myPage/home?searchType=all" class="more">전체보기</a>
                            </div>
                            <div class="scroll_wrap" data-scroll-wrap="join">
                                <ul class="my_class" data-list="course" data-gnb-course-list="join">
                                    <!-- <li class="nodata">강좌가 없습니다.</li> -->
                                </ul>
                                <div class="more_button" style="padding: 24px 24px 0 24px; display: none;" data-course-more-div="join">
                                    <button type="button" class="add_button" data-course-more-btn="join">
                                        더보기 <span class="num" data-course-more-num="join"></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </li>
                    <!--[D] 나의 소식.-->
                    <li class="ic noti" data-gnb-menu="myNews">
                        <a href="javascript:void(0);" class="btn_mo" data-markup-gnb=".ly_dropdown">
                            <span>나의 소식</span>
                        </a>
                        <span class="count" data-badge-count-area="news" style="display: none"><em>0</em></span>
                        <div class="ly_dropdown">
                            <div class="ly_top">
                                <h2 class="tit">나의 소식</h2>
                            </div>
                            <div class="scroll_wrap" data-scroll-wrap="news">
                                <ul class="my_news" data-list="news"></ul>
                                <div class="more_button" style="padding: 24px 24px 0 24px; display: none;" data-news-more-div="">
                                    <button type="button" class="add_button" data-news-more-btn="">
                                        더보기 <span class="num" data-news-more-num=""></span>
                                    </button>
                                </div>
                            </div>
                            <button type="button" class="btn_jumpbar"><span>D-Day</span></button>
                        </div>
                    </li>
                    <!--[D] li 마지막 나의할일 .ic에 .todo 클래스 추가해주세요.-->
                    <li class="ic todo" data-gnb-menu="myTodo">
                        <a href="javascript:void(0);" class="btn_mo" data-markup-gnb=".ly_dropdown">
                            <span>나의 할 일</span>
                        </a>
                        <span class="count" data-badge-count-area="todo" style="display: none"><em>0</em></span>
                        <div class="ly_dropdown">
                            <div class="ly_top">
                                <h2 class="tit">나의 할 일</h2>
                            </div>
                            <div class="scroll_wrap" data-scroll-wrap="todo">
                                <ul class="noti_list" data-list="todo">
                                    <!-- <li class="nodata">강좌가 없습니다.</li> -->
                                </ul>
                                <div class="more_button" style="display: none; padding: 24px 24px 0 24px;" data-todo-more-div="">
                                    <button type="button" class="add_button" data-todo-more-btn="">
                                        더보기 <span class="num" data-todo-more-num=""></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </li>
                <li class="search">
                    <div class="group">
                        <div class="input">
                            <span class="input_area"><input type="text" data-claus-search-text=""></span>
                            <span class="added"><button type="submit" class="btn" data-claus-search-btn=""><span class="sr_only">검색</span></button></span>
                        </div>
                    </div>
                    <a href="/search/index" class="btn_mo"><span class="blind">검색</span></a>
                </li>
                <!-- #breadcrumb:boostcourse/common/_loginbox.gsp -->
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
            <button type="button" class="btn_snb"><span class="blind">메뉴 닫기</span></button>
        </div>
    </div>
</header>