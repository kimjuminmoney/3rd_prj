<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="snb" %>
<!-- 김주민 script  참고 -->
<script type="text/javascript">
$(document).ready(function(){
    // 초기화 시 창의 너비를 확인하여 특정 조건에 따라 SNB 스타일을 변경합니다.
    var Wwidth = $(window).width();
    if(Wwidth < 1288) {
        // 창의 너비가 1288 미만인 경우
        $('.snb_wrap').removeClass('min_1240');
            var Wleft = $(window).scrollLeft();
            if (Wleft >= 0) {
                $('.snb_wrap').css('left', -Wleft + 'px');
            }
        // 스크롤 이벤트 리스너를 등록하여 좌측으로 스크롤 시 SNB를 이동시킵니다.
        $(window).bind('scroll',function(){
            var Wleft = $(window).scrollLeft();
            if (Wleft >= 0) {
                $('.snb_wrap').css('left', -Wleft + 'px');
            }
        });
    } else {
        // 창의 너비가 1288 이상인 경우
        $('.snb_wrap').addClass('min_1240');
        $('[data-pc-only-menu]').show();
    }

    // 창의 크기가 변경될 때마다 SNB의 스타일을 조정합니다.
    $(window).bind('resize',function(){
        var Wwidth = $(window).width();
        if(Wwidth < 1288) {
            // 창의 너비가 1288 미만인 경우
            $('.snb_wrap').removeClass('min_1240');
            $(window).bind('scroll',function(){
                var Wleft = $(window).scrollLeft();
                if (Wleft >= 0) {
                    $('.snb_wrap').css('left', -Wleft + 'px');
                }
            });
        } else {
            // 창의 너비가 1288 이상인 경우
            $('.snb_wrap').addClass('min_1240');
        }
    });
});
</script>
<div id="snb_wrap" class="snb_wrap ">
    <div class="snb">
        <div class="snb_scroll">
            <div class="inner ">
                        <h1 class="bi_school">
                            <a href="/myPage/openClass?isHomeLogo=true">
                                <img src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v4.png"
                                        height="24px"  alt="edwith">
                            </a>
                        </h1>
                <div class="menu_area">
                    <ul role="tablist">
                        <!-- [D] 선택된 탭 li에 aria-selected="true" 추가해주세요 -->
                            <li role="tab" aria-selected="true" class="menu ico_home">
                                <a href="insMyCourse.do">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="none" d="M3.5 17V6c0-.276.223-.5.5-.5h4.5c2.4 0 3.5 2.167 3.5 3v9H4c-.276 0-.5-.224-.5-.5z"></path>
                                            <path fill="#101214" fill-rule="evenodd" d="M4.125 6.125v10.75h7.25V8.5c0-.092-.037-.295-.157-.57-.115-.263-.293-.555-.535-.827-.478-.537-1.192-.978-2.183-.978H4.125zm7.492.147c.143.161.271.328.383.496.112-.168.24-.335.383-.496.672-.755 1.709-1.397 3.117-1.397H20.001c.622 0 1.124.505 1.124 1.125v11c0 .621-.504 1.125-1.125 1.125h-7.375V21h-1.25v-2.875H4c-.621 0-1.125-.504-1.125-1.125V6c0-.62.502-1.125 1.124-1.125H8.5c1.409 0 2.445.642 3.117 1.397zm1.008 10.603V8.5c0-.092.037-.295.157-.57.115-.263.293-.555.535-.827.478-.537 1.191-.978 2.183-.978H19.875v10.75h-7.25z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>강좌 관리
                                </a>
                            </li>
                            <li role="tab" aria-selected="false" class="menu ico_cal" data-pc-only-menu>
                                <a href="insAddCourse.do">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="#fff" d="M3.5 10c0-.276.224-.5.5-.5h16c.276 0 .5.224.5.5v10c0 .276-.224.5-.5.5H4c-.276 0-.5-.224-.5-.5V10z"></path>
                                            <path fill="#25292F" fill-rule="evenodd" d="M7.5 2.875c.345 0 .625.28.625.625v1.375h7.75V3.5c0-.345.28-.625.625-.625s.625.28.625.625v1.375H20c.621 0 1.125.504 1.125 1.125v14c0 .621-.504 1.125-1.125 1.125H4c-.621 0-1.125-.504-1.125-1.125V6c0-.621.504-1.125 1.125-1.125h2.875V3.5c0-.345.28-.625.625-.625zm8.375 3.25V7.5c0 .345.28.625.625.625s.625-.28.625-.625V6.125h2.75v2.75H4.125v-2.75h2.75V7.5c0 .345.28.625.625.625s.625-.28.625-.625V6.125h7.75zm-11.75 4v9.75h15.75v-9.75H4.125zm4.875 4H7v-1.25h2v1.25zm-2 3h2v-1.25H7v1.25zm6-3h-2v-1.25h2v1.25zm-2 3h2v-1.25h-2v1.25zm6-3h-2v-1.25h2v1.25zm-2 3h2v-1.25h-2v1.25z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>강좌 신청
                                </a>
                            </li>
                            <li role="tab" aria-selected="false" class="menu ico_todo" data-pc-only-menu>
                                <a href="insAddCourseList.do">
                                    <i>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path fill="#fff" d="M8 15v-2.293c0-.133.053-.26.146-.353l7-7c.196-.196.512-.196.708 0l2.292 2.292c.196.196.196.512 0 .708l-7 7c-.093.093-.22.146-.353.146H8.5c-.276 0-.5-.224-.5-.5z"></path>
                                            <path fill="#000" fill-rule="evenodd" d="M16.704 2.912c.44-.44 1.152-.44 1.591 0l2.293 2.293c.44.439.44 1.151 0 1.59l-9.146 9.147-.183.183H7.375V12.24l.183-.183 9.146-9.146zm-8.079 9.847v2.116h2.116l6.625-6.625-2.116-2.116-6.625 6.625zm7.509-7.509l2.116 2.116L19.616 6 17.5 3.884 16.134 5.25zm-12.009.875H9.5v-1.25H4c-.621 0-1.125.504-1.125 1.125v14c0 .621.504 1.125 1.125 1.125h14c.621 0 1.125-.504 1.125-1.125v-7h-1.25v6.875H4.125V6.125z" clip-rule="evenodd"></path>
                                        </svg>
                                    </i>신청 목록
                                </a>
                            </li>
                    </ul>
                </div>
            </div>
        </div>
        <button type="button" class="btn_snb open"><span class="blind">메뉴 닫기</span></button>
    </div>
</div>