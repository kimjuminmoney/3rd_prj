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
                    <a href="/onlineclass-tutorial/home" class="NPI=a:title" id="_courseName"><c:out value="${ ucDomain.couName }"/></a>
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

    
<!-- 신규 boostcourse SNB -->
<div id="snb" class="default ">
<nav class="nav_menu">
    <h2 class="sr_only">하위 메뉴</h2>
    <ul class="NE=a:lmn">
    <!-- [D] 선택된 메뉴에 .active 추가, 구분선 추가시 <li class="hr"></li> 추가-->
            <li class="notice ">
                <a href="/onlineclass-tutorial/notices/32827" title="공지 사항" class="NPI=a:notice">
                    <!-- new 아이콘 일단 제거(나중에 스펙 확정되면 추가)
                    <i class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                            <path fill="#108F6B" fill-rule="nonzero" d="M1 0C.448 0 0 .448 0 1v14c0 .552.448 1 1 1h14c.552 0 1-.448 1-1V1c0-.552-.448-1-1-1H1zm3 12V4h2l4 5V4h2v8h-2L6 7v5H4z" clip-rule="evenodd"></path>
                        </svg>
                    </i>
                    -->
                    <span class="menu">공지 사항</span>
                </a>
            </li>
            <li class="active">
                <a href="/onlineclass-tutorial/joinLectures/32824?isDesc=false" title="교수자를 위한 튜토리얼" class="NPI=a:lectures">
                    <span class="menu">강의 목록</span>
                </a>
                <!--[D] .btn_open 클릭시 상위 li 에 .active 추가해주세요.-->
                <button class="btn_open"><span class="blind">강의 목록 전체보기</span></button>
                <div>
                <!--[D] 수강완료한 강좌는 li.done 클래스 추가-->
                <!--[D] 현재 수강중인 강좌는 li.now 클래스 추가-->
                <!-- lecture.contType에 따라 url 분기처리 -->
	                <ol class="lect_2dep">
	                	<c:forEach  var="lecture" items="${lectureList }">
	                    <li class=""><a href="/onlineclass-tutorial/lecture/65388?isDesc=false"><c:out value="${ lecture.lecName }"/></a></li>
	                    </c:forEach>
	                </ol>
               	</div>
            </li>
            </ul>
        	<ul class="ad" id="menuUl">
                    <li class="">
                <a href="/onlineclass-tutorial/joinLectures/32824?isDesc=false" title="교수자를 위한 튜토리얼" class="NPI=a:lectures">
                    <span class="menu">시험</span>
                </a>
                <button class="btn_open"><span class="blind">시험</span></button>
                <div>
	                <ol class="lect_2dep">
	                    <li><a href="/onlineclass-tutorial/grade"><span>시험</span></a></li>
	                    <li><a href="/onlineclass-tutorial/grade"><span>성적조회</span></a></li>
	                </ol>
               	</div>
            </li>
        	</ul>
    
        
        
            <!-- <li class="ext ">
        
        
    
        
        
            <li class="">
                <a href="/onlineclass-tutorial/forums/32823" title="▶자주 접수되는 문의◀" class="NPI=a:discuss">
                    <span class="menu">▶자주 접수되는 문의◀</span>
                </a>
            </li>
        
    
        
        
            <li class="">
                <a href="/onlineclass-tutorial/forums/32822" title="고민 및 정보공유 게시판" class="NPI=a:discuss">
                    <span class="menu">고민 및 정보공유 게시판</span>
                </a>
            </li>
        
    
        
        
            <li class="">
                <a href="/onlineclass-tutorial/forums/33689" title="에드위드 사용후기" class="NPI=a:discuss">
                    <span class="menu">에드위드 사용후기</span>
                </a>
            </li>
        
    
        
        
            <li class="ext ">
                <a href="https://www.edwith.org/voc" target="_blank">
                    
                    <span class="menu">1:1서비스문의</span>
                </a>
            </li>
        
    
        
        
            <li class="hr"></li>
        
    
    </ul>
    
        <ul class="ad" id="menuUl">
            
            
            
                
                    <li><a href="/onlineclass-tutorial/grade"><span>성적조회</span></a></li>
                
            
        </ul> -->
    
    
    
    
</nav>

<script src="https://www.edwith.org/static/js/src/entries/common/_snbmenu.entry.browserfied.min.js?231109_47a067d4"></script>

<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_snbmenu.entry.js");
        // entry.initialize();

        entry.initialize({
            data : {
                course: "onlineclass-tutorial"
            },
            title : '누구나 쉽게 준비하는 에드위드 온라인클래스!',
            useQuestion : false,
            courseUri: 'onlineclass-tutorial',
            isShareGuest : false,
            isBizclassGuest : false,
            searchable: true,
            requestSuccessMessage: ''
        });
    });
</script>



            

            
        </div>
    
</div>