<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="header_wrap">
            
            <h1 class="bi_school">
                <a href="index.do">
                    <img src="http://localhost/daitdayoung/common/images/logo_1.png" style="max-height:24px;" alt="edwith">
                </a>
            </h1>
        
        <div class="layout_in " data-wrap-gnb-menu data-is-boostcourse="true">
            <!--[D] 드롭다운 레이어 .ly_type2로 구분 -->
            <ul class="gnb ly_type2" id="gnb">
                    <!-- 운영 강좌/클래스 -->
                    
                    <!--[D] 나의 클래스.-->
                    <li class="ic lecture ly_right" data-gnb-menu="join">
                        <a href="logout.do;" class="btn_mo" data-markup-gnb=".ly_dropdown">
                            <span>로그아웃</span>
                        </a>
                    </li>
                    
                    <!--[D] 나의 소식.-->
                    <li class="ic noti" data-gnb-menu="myNews">
                        <a href="javascript:void(0);" class="btn_mo" data-markup-gnb=".ly_dropdown">
                            <span>개인정보 수정</span>
                        </a>
                        <span class="count" data-badge-count-area="news" style="display: none"><em>0</em></span>
                    </li>
                    
                    <!--[D] li 마지막 나의할일 .ic에 .todo 클래스 추가해주세요.-->
                    <li class="ic todo" data-gnb-menu="myTodo">
                        <a href="insMyCourse.do" class="btn_mo" data-markup-gnb=".ly_dropdown">
                            <span>나의 강의실</span>
                        </a>
                    </li>

            </ul>
        </div>
    </div>