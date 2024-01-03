<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <div id="u_skip">
	<a href="login/login.do" ><span>로그인 바로가기</span></a>
	<a href="#content" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문 바로가기</span></a>
</div> -->

<!-- #breadcrumb:layouts/index.gsp -->

<header id="new_header" data-wrap-gnb-menu>
    <section class="header_top">
	<!-- 로그인 전 -->
	<span class="top_info">다잇다영을 보다 편리하고 안전하게 이용하세요.</span>
	<a href="login/login.do" class="top_login N=a:gnb.login">로그인/회원가입</a>
    </section>
    <section class="header_cont" data-wrap-gnb-main-menu>
        <div class="base_layout">
            <h1 class="head_logo"><img  src="http://localhost/daitdayoung/common/images/logo_1.png" width="173" height="66" >
                <a class="N=a:gnb.edwith" href="index.do" data-nclk="gnb.edwith" data-nclk="gnb.edwith"﻿></a>
            </h1>
            <ul class="navi">
                <!-- [D] 활성시 li 요소에 on 클래스 추가 -->
                <c:forEach var="indexMC" items="${ MCList }">
                <li><a href="courses.do?mcCode=${indexMC.mcCode }"><c:out value="${indexMC.mcName }"/></a></li>
                </c:forEach>
            </ul>
            <!-- 전체강좌 리스트 -->
            <!-- <div class="sub_category"  data-gnb-sub-category="total" style="display: none">
                <div class="base_layout" data-wrap-all-course></div>
            </div> -->
        </div>
    </section>
</header>
