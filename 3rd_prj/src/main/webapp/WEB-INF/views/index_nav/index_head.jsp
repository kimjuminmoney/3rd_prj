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
    <!-- 나의 메뉴 -->
    
<c:choose>
<c:when test="${ not empty uiId}">
<!-- 유저 로그인 후 -->
<div class="top_user" data-gnb-menu="myLogin">
    <a href="javascript:void(0);" class="item_link" title="나의 메뉴" data-nclk="gnb.mymenu" onclick="var dropdown = document.querySelector('.ly_dropdown'); dropdown.style.display = (dropdown.style.display === 'none' || dropdown.style.display === '') ? 'block' : 'none';">
        <em><c:out value="${ uiId }"/></em> 님
    </a>

    <div class="ly_dropdown" style="display: none;">
        <ul>
            <li><a href="/myPage/home" title="나의 강좌" data-nclk="gnb.gomylecture">나의 강좌</a></li>
            <li><a href="/userInfo/base-info" title="개인 정보" data-nclk="gnb.gomyinfo">개인 정보</a></li>
            <li><a href="logout.do" title="로그아웃" data-nclk="gnb.logout">로그아웃</a></li>
        </ul>
    </div>
</div>
   <ul class="top_list">
       <!-- 내강의실 -->
       <li class="list_item" data-gnb-menu="myCourse">
           <a href="user/myCourses.do?type=myCourses" class="item_link" data-nclk="gnb.mylecture">
           	내강의실
           </a>
       </li>

       <!-- 나의할일 -->
       <li class="list_item" data-gnb-menu="myTodo">
           <a href="user/toDoList.do?type=toDoList" class="item_link" data-nclk="gnb.mytask">
               나의 할 일
           </a>
       </li>

       <!-- 나의소식 -->
       <li class="list_item" data-gnb-menu="myNews">
           <a href="user/coursesInquiry.do?type=coursesInquiry" class="item_link" data-nclk="gnb.mynotice">
               강좌문의하기
            </a>
        </li>
    </ul>
</c:when> 

   
<c:when test="${ not empty insId}">
<!-- 강사 로그인 후 로그아웃 개인정보수정 내 강의실-->
<div class="top_user" data-gnb-menu="myLogin">
    <a href="javascript:void(0);" class="item_link" title="나의 메뉴" data-nclk="gnb.mymenu" onclick="var dropdown = document.querySelector('.ly_dropdown'); dropdown.style.display = (dropdown.style.display === 'none' || dropdown.style.display === '') ? 'block' : 'none';">
        <em><c:out value="${ insId }"/></em> 님
    </a>

    <div class="ly_dropdown" style="display: none;">
        <ul>
            <li><a href="/myPage/home" title="나의 강좌" data-nclk="gnb.gomylecture">나의 강좌</a></li>
            <li><a href="/userInfo/base-info" title="개인 정보" data-nclk="gnb.gomyinfo">개인 정보</a></li>
            <li><a href="logout.do" title="로그아웃" data-nclk="gnb.logout">로그아웃</a></li>
        </ul>
    </div>
</div>

<ul class="top_list">
       <!-- 내강의실 -->
       <li class="list_item" data-gnb-menu="myCourse">
           <a href="insMyCourse.do" class="item_link" data-nclk="gnb.mylecture">
           	내강의실
           </a>
       </li>
       <!-- 개인정보수정 -->
       <li class="list_item" data-gnb-menu="myCourse">
           <a href="insMyInfo.do" class="item_link" data-nclk="gnb.mylecture">
           	개인정보수정
           </a>
       </li>
</ul>
</c:when>


<c:otherwise>    
	<!-- 로그인 전 -->
	<span class="top_info">다잇다영을 보다 편리하고 안전하게 이용하세요.</span>
	<a href="login/login.do" class="top_login N=a:gnb.login">로그인/회원가입</a>
</c:otherwise>
</c:choose>
</section>
    <section class="header_cont" data-wrap-gnb-main-menu>
        <div class="base_layout">
            <h1 class="head_logo">
                <a class="N=a:gnb.edwith" href="index.do" data-nclk="gnb.edwith" data-nclk="gnb.edwith"﻿>
                <img  src="http://localhost/daitdayoung/common/images/logo_1.png" width="173" height="66" >
                </a>
            </h1>
            <ul class="navi">
                <!-- [D] 활성시 li 요소에 on 클래스 추가 -->
                <c:forEach var="indexMC" items="${ MCList }">
                <li><a href="courses.do?mcCode=${indexMC.mcCode }"><c:out value="${indexMC.mcName }"/></a></li>
                </c:forEach>
            </ul>
        </div>
    </section>
</header>
