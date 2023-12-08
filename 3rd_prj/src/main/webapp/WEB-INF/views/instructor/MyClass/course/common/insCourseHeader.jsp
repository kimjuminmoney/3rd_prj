<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" class="default_login mooc">
    <h1 class="logo"
        >
        <a href="/">
            <img width="" height="16px" src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v5.svg"
                 
                 alt="edwith">
        </a>
    </h1>

<!-- 신규 boostcourse gnb 시작 -->
<div class="layout_in " data-wrap-gnb-menu data-is-boostcourse="true">
        <ul class="gnb ly_type2" id="gnb">

            <!-- [D] 활성화 li class="on" 추가 -->
            <!-- 운영 강좌/클래스 -->
            
                <!-- 나의 강좌/클래스 -->
                <li class="ic" data-gnb-menu="join">
                    <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown">
                        <span>나의 강좌</span>
                    </a>
                    <div class="ly_dropdown">
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
                    </div>
                </li>
            
            
            <li class="ic" data-gnb-menu="myNews">
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
                        <div class="more_button" style="padding: 24px 24px 0 24px; display:none" data-news-more-div>
                            <button type="button" class="add_button" data-news-more-btn>
                                더보기 <span class="num" data-news-more-num></span>
                            </button>
                        </div>
                    </div>
                    <button type="button" class="btn_jumpbar"><span>D-Day</span></button>
                </div>
            </li>
            
            <li class="ic todo" data-gnb-menu="myTodo">
                <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown">
                    <span>나의 할 일</span>
                </a>
                <span class="count"><em>0</em></span>
                <div class="ly_dropdown">
                    <div class="ly_top">
                        <h2 class="tit">나의 할 일</h2>
                    </div>
                    <div class="scroll_wrap" data-scroll-wrap="todo">
                        <ul class="noti_list" data-list="todo"></ul>
                        <div class="more_button" style="padding: 24px 24px 0 24px; display:none" data-todo-more-div>
                            <button type="button" class="add_button" data-todo-more-btn>
                                더보기 <span class="num" data-todo-more-num></span>
                            </button>
                        </div>
                    </div>
                </div>
            </li>
        
        <li class="search">
            <div class="group">
                <div class="input">
                    <span class="input_area"><input type="text" name="searchQuery" id="input_srch" data-claus-search-text></span>
                    <span class="added"><button type="button" class="btn" id="btn_srch" data-claus-search-btn><span class="sr_only">검색</span></button></span>
                </div>
            </div>
        </li>
        <!-- #breadcrumb:boostcourse/common/_loginbox.gsp -->

<li class="nickname ly_right" data-gnb-menu="myLogin">
    <a href="javascript:void(0);" data-markup-gnb=".ly_dropdown" title="나의 메뉴">
        
        <span class="thumb bgnone">
            <img data-gnb-profile-image src="https://cphinf.pstatic.net/mooc/20231126_26/1701004418423seLBT_PNG/QgYxw6c6U0ijFzv8YAFL.png?type=ff64_64" width="32" height="32" alt="킹자성">
        </span>
        
    </a>

    <div class="ly_dropdown">
        <ul>
            
            
            <li><a href="/myPage/home" title="나의 강좌" >나의 강좌</a></li>
            <li><a href="/myPage/recentlyPlayedList" title="최근 본 동영상" >최근 본 동영상</a></li>
            
            <li><a href="/userInfo/base-info" title="개인 정보" >개인 정보</a></li>
            
            <li><a href="/logout" title="로그아웃">로그아웃</a></li>
        </ul>
    </div>
</li>



    </ul>
</div>
<!-- 신규 boostcourse gnb 끝 -->

<input type="hidden" id="__isLogged" value="org.nhnnext.mooc.user.SecUser : 2674262">


    

<script src="/static/js/src/entries/common/_gnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/common/_gnbmenu.entry.js");
        entry.initialize({
            isLogged : $.trim( $("#__isLogged").val() ) === "" ? false : true,
            isClosedPartner : false,
            courseId: '2024',
            userId: '2674262'
        });
    });
</script>

<!--[D] 파트너 컬러 적용되는 부분입니다. -->
<style>
    #container .hd_txt > .inner {
        background-color: #00AB50;
    }

    #container .inc_sub .hd_txt .lecture_sub_tool .count_info {
        color: #00AB50;
    }

    #header .gnb > li > .count em {
        color: #00AB50;
    }

    #container .lnb #snb nav li:hover a {
        border-color: #00AB50;
    }

    #snb nav > ul > li.notice::after {
        background-color: #00AB50;
    }

    #snb nav > ul > li .icon svg path {
        fill: #00AB50;
    }

    #snb.manage nav > ul > li ul li:hover a, #snb.manage nav > ul > li ul li.active a {
        color: #00AB50;
    }

    #container .lnb #snb nav > ul > li.active a {
        border-color: #00AB50;
    }

    #container .lnb #snb nav > ul > li.active .menu {
        color: #00AB50;
    }

    #container .lnb #snb .widget h2 {
        color: #00AB50;
    }

    #content .page_header .group_r .it.it_added input:focus {
        border: 1px solid #00AB50 !important;
    }

    .class_manager > ul > li .chapter:hover,
    .class_manager > ul > li .add.active .add_input:hover,
    .class_manager > ul > li .sub > li:hover,
    .class_manager > ul > li .sub > li:focus {
        border-color: #00AB50;
    }

    .class_manager>ul>li .sub>li>a>span[class^=ico].end {
        background-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>a>span[class^=ico].end::before {
        background-color: #00AB50;
    }

    .class_manager.manage > ul > li .sub > li > span[class^=ico],
    .class_manager > ul > li .add .add_input > div span[class^=ico] {
        background-color: #00AB50;
    }

    .class_manager > ul li .util ul button.selected {
        color: #00AB50;
    }

    .class_manager > ul > li .add .add_type button:hover,
    .class_manager > ul > li .add .add_type button:focus {
        border-color: #00AB50;
    }

    .class_manager .slc_area .btn:hover,
    .class_manager .slc_area .btn:focus {
        background-color: #00AB50;
    }

    #snb nav > ul > li ol li a:before {
        border-color: #00AB50;
    }

    #snb nav > ul > li ol li.done a::before {
        background-color: #00AB50;
    }

    #snb nav > ul > li ol li.now a {
        color: #00AB50;
    }

    #snb nav > ul > li.video a:before {
        background-color: #00AB50;
    }

    .group_lr .btn.clr {
        background-color: #00AB50;
        border-color: #00AB50;
    }

    .quiz .quiz_add_wrap .q_header .q li.on a {
        background-color: #00AB50;
    }

    .quiz .quiz_add_wrap .q_header .q li.current:after {
        background-color: #00AB50;
    }

    .quiz .quiz_add_wrap .q_header .total_score strong {
        color: #00AB50;
    }

    .ick .radio.checked,
    .ick .checkbox.checked {
        background-color: #00AB50;
    }

    .mg_info .ick .radio.checked {
        background-color: #00AB50;
    }

    .mg_info .ick .radio.checked::after {
        background-color: #00AB50 !important;
    }

    .forum .forum_list_new .forum_summary .em_tag {
        background-color: #00AB50;
    }

    .chosen-container:hover, .chosen-container:focus,
    .chosen-container.chosen-with-drop {
        border-color: #00AB50;
    }

    .chosen-container .chosen-results li.result-selected {
        color: #00AB50;
    }

    .ic_ad {
        color: #00AB50;
    }

    .paginate .page_list .selected,
    .paginate .page_list a:hover {
        color: #00AB50;
    }

    .paginate2 .btn_prve:hover,
    .paginate2 .btn_next:hover {
        border: 1px solid #00AB50;
    }

    .paginate2 .btn_prve:hover .icon svg path,
    .paginate2 .btn_next:hover .icon svg path {
        stroke: #00AB50;
    }

    .share .sns_area .btn_type17:hover,
    .share .sns_area .btn_type17.active {
        border-color: #00AB50;
    }

    .share .btn_lecture_like:hover,
    .share .btn_lecture_like.on {
        background-color: #00AB50;
    }

    .yellow {
        color: #00AB50;
    }

    .nav_text li button.btn.tit.on {
        color: #00AB50;
    }
    .nav_text li button.tit.on i svg path{
        stroke:#00AB50;
    }
    body.full .ipt_group .btn.btn_type1.clr {
        background-color: #00AB50;
    }
    body.full #container #content .ick.login_keep .checkbox.checked::after {
        background-color: #00AB50;
    }
    body.re_pack .paginate .page_list .selected,
    body.re_pack .paginate .page_list a:hover {
        color: #00AB50;
    }
    #container .hd_txt>.inner {
        background-color: #00AB50;
    }
    #container .inc_sub .hd_txt .lecture_sub_tool .count_info {
        color: #00AB50;
    }

    #container .lnb #snb nav li:hover a {
        border-color: #00AB50;
    }
    #snb nav>ul>li.notice::after {
        background-color: #00AB50;
    }

    .btn.btn_type14 {
        background-color: #00AB50;
    }
    #container .lnb #snb nav>ul>li.active a {
        border-color: #00AB50;
    }
    #container .lnb #snb nav>ul>li.active .menu {
        color: #00AB50;
    }
    #container .lnb #snb .widget h2 {
        color: #00AB50;
    }
    #content .page_header .group_r .it.it_added input:focus {
        border: 1px solid#00AB50 !important;
    }
    .class_manager>ul>li .chapter:hover,
    .class_manager > ul > li .add.active .add_input:hover,
    .class_manager>ul>li .sub>li:hover,
    .class_manager>ul>li .sub>li:focus {
        border-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>a>span[class^=ico].end {
        background-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>span[class^=ico].end::before {
        background-color: #00AB50;
    }
    .class_manager.manage>ul>li .sub>li>span[class^=ico],
    .class_manager>ul>li .add .add_input>div span[class^=ico] {
        background-color: #00AB50;
    }
    .class_manager>ul li .util ul button.selected {
        color: #00AB50;
    }
    .class_manager>ul>li .add .add_type button:hover,
    .class_manager>ul>li .add .add_type button:focus {
        border-color: #00AB50;
    }
    .class_manager>ul>li .sub>li>a>span[class^=ico].end::before {
        background-color: #00AB50;
    }
    #snb nav>ul>li ol li a:before {
        border-color: #00AB50;
    }
    #snb nav>ul>li ol li.done a::before {
        background-color: #00AB50;
    }
    #snb nav>ul>li ol li.now a {
        color: #00AB50;
    }
    #snb .nav_menu>ul>li.video a .icon svg path{
        fill:#00AB50;
    }
    #snb nav>ul>li.video a:before {
        background-color: #00AB50;
    }
    .quiz .quiz_add_wrap .q_header .q li.on a {
        background-color: #00AB50;
    }
    .quiz .quiz_add_wrap .q_header .q li.current:after {
        background-color: #00AB50;
    }
    .quiz .quiz_add_wrap .q_header .total_score strong {
        color: #00AB50;
    }
    .ick .radio.checked,
    .ick .checkbox.checked {
        background-color: #00AB50;
    }
    .mg_info .ick .radio.checked {
        background-color: #00AB50;
    }
    .mg_info .ick .radio.checked::after {
        background-color: #00AB50 !important;
    }
    .forum .forum_list .forum_summary .em_tag {
        background-color: #00AB50;
    }
    .chosen-container:hover,.chosen-container:focus,
    .chosen-container.chosen-with-drop {
        border-color:#00AB50;
    }
    .chosen-container .chosen-results li.highlighted {
        color:#00AB50;
    }
    .ic_ad {
        color: #00AB50;
    }
    body.re_pack .paginate .page_list .selected,
    body.re_pack .paginate .page_list a:hover {
        color: #00AB50;
    }
    .paginate4 .btn_prve:hover,
    .paginate4 .btn_next:hover {
        border:1px solid #00AB50;
    }
    .paginate4 .btn_prve:hover .icon svg path,
    .paginate4 .btn_next:hover .icon svg path {
        stroke:#00AB50;
    }
    .share .sns_area .btn_type17:hover,
    .share .sns_area .btn_type17.active{
        border-color:#00AB50;
    }
    .share .btn_lecture_like:hover,
    .share .btn_lecture_like.on {
        background-color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .ico_bx {
        background-color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .read {
        background-color:#ccd1d0;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .list_title em {
        color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + .scroll_wrap> ul li .info em {
        color:#00AB50;
    }
    .re_pack .lecture_term dl dd .em {
        color:#00AB50;
    }
    .re_pack .class_manager .slc_area .add_top_wrap .ick .checkbox.checked {
        background-color:#00AB50;
    }
    .re_pack #content .page_header .reverse_wrap .ick .checkbox.checked {
        background-color:#00AB50;
    }
    body.re_pack .quiz_info dl dt .em, body.re_pack .task_info dl dt .em {
        color:#00AB50;
    }
    .table_area .btn_point {
        background-color:#00AB50;
    }
    .feedback .feedback_add_wrap .q_header .total_score strong, .re_pack .lecture_term dl dd .em, .feedback .feedback_add_wrap .q_body .q_txt em {
        color: #00AB50;
    }
    .re_pack .feedback .feedback_add_wrap .feedback_sel li .ans em {
        color: #00AB50;
    }
    .modal_wrap .modal_footer .btn_privacy_agree {
        background-color: #00AB50;
    }
</style>
        </header>