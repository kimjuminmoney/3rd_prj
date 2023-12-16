<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="lnb">
    <!-- 신규 boostcourse LNB SNB -->
    <div class="inc_sub default">
        <div class="hd_txt">
            <div class="inner">
                <div class="label_box">
                </div>
                <!-- [D] 강좌명이 51~90자인 경우 h2 class에 word_max 추가 -->
                <h2 class="">
                    <a href="courses.do?crgCode=${ param.crgCode }&couCode=${ param.couCode}&epCode=${ param.epCode}" class="NPI=a:title" id="_courseName"><c:out value="${ ucDomain.couName }"/></a>
                </h2>
                    <div class="profile">
                        <!-- [D] 이미지 노출시 class="bgnone" 추가 -->
                        <span class="thumb bgnone"><img src="https://cphinf.pstatic.net/mooc/20200405_5/1586078383558G8DF6_PNG/edwith%28%29.png?type=ff64_64" width="32" height="32" alt="임시 이미지"></span>
                        <span class="name"><c:out value="${ ucDomain.insName }"/></span>
                    </div>
            </div>
            <div class="lecture_sub_tool">
                 <div class="count_info">
                     <span class="count_like"><em>조회수</em><c:out value="${ ucDomain.hits }"/></span>
                     <span class="count_observe"><em>수료자수</em><c:out value="${ ucDomain.completeCnt }"/></span>
                 </div>
            </div>
        </div>
    </div>

<script>
$(document).ready(function() {
    // 버튼 클릭 이벤트 처리
    $(".btn_open").click(function() {
        // 부모 li 요소에 active 클래스를 토글
        $(this).closest("li").toggleClass("active");
    });
    $(".a_open").click(function() {
        // 부모 li 요소에 active 클래스를 토글
        $(this).closest("li").toggleClass("active");
    });
});
</script>  
<!-- 신규 boostcourse SNB -->
<div id="snb" class="default ">
<nav class="nav_menu">
    <h2 class="sr_only">하위 메뉴</h2>
    <ul class="NE=a:lmn">
            <li class="notice ">
                <a href="courses.do?crgCode=${ param.crgCode }&couCode=${ param.couCode}&epCode=${ param.epCode}">
                    <span class="menu">메인</span>
                </a>
            </li>
            <li class="active">
                <a href="#void" class="NPI=a:lectures a_open">
                    <span class="menu">강의 목록</span>
                </a>
                <button class="btn_open"><span class="blind">강의 목록 전체보기</span></button>
                <div>
	                <ol class="lect_2dep">
	                	<c:forEach  var="lecture" items="${lectureList }">
	                    <li class="${ lecture.courseStatus == 'Y' ? 'done now' : '' }">
	                    <a href="courses_detail.do?crgCode=${ lecture.crgCode}&couCode=${ ucDomain.couCode}&epCode=${ param.epCode }&lecCode=${ lecture.lecCode}"><c:out value="${ lecture.lecName }"/></a></li>
	                    </c:forEach>
	                </ol>
               	</div>
            </li>
            </ul>
        	<ul class="ad" id="menuUl">
	            <li class="">
	                <a href="#void" class="NPI=a:lectures a_open">
	                    <span class="menu">시험</span>
	                </a>
	                <button class="btn_open"><span class="blind">시험</span></button>
	                <div>
		                <ol class="lect_2dep">
		                    <li><a href="courses_exam.do?crgCode=${ param.crgCode }&couCode=${ param.couCode}&epCode=${ param.epCode}"><span>시험</span></a></li>
		                    <li><a href="courses_exam_result.do?crgCode=${ param.crgCode }&couCode=${ param.couCode}&epCode=${ param.epCode}"><span>성적조회</span></a></li>
		                </ol>
	               	</div>
	            </li>
        	</ul>
</nav>
</div>
</div>