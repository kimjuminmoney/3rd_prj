<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- 신규 boostcourse LNB SNB -->
    <div class="inc_sub default">
        <div class="hd_txt">
            <div class="inner">
                <div class="label_box">
                    

                <!-- [D] 강좌 난이도에 따라 .level에 class 추가 필요
                                기본 basic 추가
                                심화 advanced 추가
                                입문은 class 추가 없음 -->
                    
                </div>
                <!-- [D] 강좌명이 51~90자인 경우 h2 class에 word_max 추가 -->
                <h2 class="">
                
                    <a href="/python-data/home" class="NPI=a:title" id="_courseName"><c:out value="${ couName }"/></a>
                
                </h2>
                
                    <div class="profile">
                    </div>
                
            <!-- 공유하기 -->
            <div class="sns_area _sns_area">
    	<div class="sns_layer " data-sns-layer>
        <div class="inner">
        </div>
        
    </div>
</div>
<script src="/static/js/src/entries/common/_sns.share.service.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
$(document).ready(function(){
    var courseUrl = 'https://www.edwith.org/python-data';
    var entry = require("/entries/common/_sns.share.service.entry.js");
    var htData = {
            facebook : [courseUrl, '1441124829481137', 'http://www.edwith.org/popupClose'],
            twitter : [courseUrl, $("#_twitter_share_content").text(),  '',  ''],
            googlePlus : [courseUrl],
            band : [courseUrl, $("#_band_share_content").text()],
            url: courseUrl
        };
    entry.initialize($('._sns_area'), htData);
});
</script>
            </div>
        </div>
        <button class="open_menu"><span class="blind">전체 메뉴 열기</span></button>
    </div>
    
        <!-- 신규 boostcourse SNB -->
        <div id="snb" class="default ">

<nav class="nav_menu">
    <h2 class="sr_only">하위 메뉴</h2>
    <ul class="NE=a:lmn">

    <!-- [D] 선택된 메뉴에 .active 추가, 구분선 추가시 <li class="hr"></li> 추가-->
            
            <!-- <li class="active">
                <a href="/python-data/joinLectures/13744?isDesc=false" title="강의목록" class="NPI=a:lectures">
                    <span class="menu">강의목록</span>
                </a>
                [D] .btn_open 클릭시 상위 li 에 .active 추가해주세요.
                <button class="btn_open"><span class="blind">강좌 전체목록보기</span></button>
            </li> -->    
            <li class="notice">
                <a href="insCourseDetail.do" title="강좌 정보" class="NPI=a:notice">
                    <span class="menu">강좌 정보</span>
                </a>
            </li>
            <li class="notice">
                <a href="insCourseContent.do" title="목차" class="NPI=a:notice">
                    <span class="menu">목차</span>
                </a>
            </li>
            <li class="notice">
                <a href="insCourseLecture.do" title="강의 등록" class="NPI=a:notice">
                    <span class="menu">강의 등록</span>
                </a>
            </li>
            <li class="notice">
                <a href="insCourseTest.do" title="시험" class="NPI=a:lectures">
                    <span class="menu">시험</span>
                </a>
                <ul class="sub">
					<li >
						<div style="text-align:left; padding-left: 30px; font-size:13px; margin-top:15px;">
							<a href="insCourseTest.do">
								<span class="ico_lecture"></span>
								<strong>시험 관리</strong>
						</a>
							</div>
					</li>
					<li>
						<div style="text-align:left; padding-left: 30px; font-size:13px; margin-top:15px; ">
						<a href="insCourseTestQuestion.do">
							<span class="ico_lecture"></span>
								<strong>문제 관리</strong>
						</a>
						</div>
					</li>
				</ul>
            </li>
            <li class="notice">
                <a href="insCourseInquiry.do" title="문의" class="NPI=a:notice">
                    <span class="menu">문의</span>
                </a>
            </li>
            <li class="notice">
                <a href="insCourseNotice.do" title="공지사항" class="NPI=a:notice">
                    <span class="menu">공지사항</span>
                </a>
            </li>
            
    </ul>
    
</nav>
<script src="/static/js/src/entries/common/_snbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_snbmenu.entry.js");
        // entry.initialize();

        entry.initialize({
            data : {
                course: "python-data"
            },
            title : '파이썬 자료구조',
            useQuestion : false,
            courseUri: 'python-data',
            isShareGuest : false,
            isBizclassGuest : false,
            searchable: true,
            requestSuccessMessage: ''
        });
    });
</script>
        </div>
