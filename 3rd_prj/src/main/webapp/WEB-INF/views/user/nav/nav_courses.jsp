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
                    

                <!-- [D] 강좌 난이도에 따라 .level에 class 추가 필요
                                기본 basic 추가
                                심화 advanced 추가
                                입문은 class 추가 없음 -->
                    
                        <!-- <div class="level basic">
                            <span class="blind">난이도</span>
                            <div class="icon level2">
                                <span class="level_bg"></span>
                                <span class="level_bg"></span>
                                <span class="level_bg"></span>
                            </div>
                            기본
                        </div> -->
                    
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
            <!-- 공유하기 -->
            <div class="sns_area _sns_area">
             <button type="button" class="btn sns_share" data-sns-share><span class="sr_only">공유하기</span></button>
             <div class="sns_layer " data-sns-layer>
                 <div class="inner">
                     <a href="#" class="ico_url" data-type="urlCopy" data-clipboard-text="www.edwith.org/onlineclass-tutorial">URL복사</a>
                     <a href="#" class="ico_band" data-type="band">밴드</a>
                     <a href="#" class="ico_facebook" data-type="facebook">페이스북</a>
                     <a href="#" class="ico_twitter" data-type="twitter">트위터</a>
                 </div>
             </div>
         </div>
    
         <div id="_band_share_content" style="display:none">밴드 공유 컨텐츠 네임</div>
         <div id="_twitter_share_content" style="display:none">트위터 공유 컨텐츠 네임</div>
         <div style="width:1px;height:1px;font-size:0;line-height:0;color:transparent"><span id="urlCopy">URL들어갈자리</span></div>
         <script src="https://www.edwith.org/static/js/src/entries/common/_sns.share.service.entry.browserfied.min.js?231109_47a067d4"></script>
         <script>
         $(document).ready(function(){
             var courseUrl = 'https://www.edwith.org/onlineclass-tutorial';
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
            <!-- // 공유하기 -->
            </div>
            <div class="lecture_sub_tool">
                
                    <div class="count_info">
                        <span class="count_like"><em>조회수</em><c:out value="${ ucDomain.hits }"/></span>
                        <span class="count_observe"><em>수료자수</em><c:out value="${ ucDomain.completeCnt }"/></span>
                    </div>
                    <div class="manage_box">
                        

                        
                    </div>
                
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
                    <span class="menu">교수자를 위한 튜토리얼</span>
                </a>
                <!--[D] .btn_open 클릭시 상위 li 에 .active 추가해주세요.-->
                <button class="btn_open"><span class="blind">강좌 전체목록보기</span></button>
                <div>
                <!--[D] 수강완료한 강좌는 li.done 클래스 추가-->
                <!--[D] 현재 수강중인 강좌는 li.now 클래스 추가-->
                <!-- lecture.contType에 따라 url 분기처리 -->
                
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">에드위드 온라인클래스 매뉴얼(교수자ver, 학생ver)</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65388?isDesc=false">에드위드 온라인클래스 매뉴얼로 차근차근 개설해보세요!</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">퀵하게 학생들을 등록하고 간편하게 강의 업로드하기!</span>
                                
                                    
                                    
                                    
                                    <li class="now"><a href="/onlineclass-tutorial/lecture/65372?isDesc=false">퀵하게 학생 등록하는 방법 4가지!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65371?isDesc=false">동영상 시청 완료 기준을 설정해서 학생들의 출석을 체크하세요!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65373?isDesc=false">간편한 콘텐츠 업로드,유튜브 영상도 OK! 클릭한번으로 나의 다른 강좌 복사도 가능!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65394?isDesc=false">우리 학생들끼리 참여하는 실시간 라이브 수업!</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">수강생들의 학습현황(진도율, 퀴즈, 과제) 한눈에 파악하기!</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/84231?isDesc=false">학생들의 댓글 및 댓글 작성 시점(시간,분)을 엑셀로 한번에 다운로드받기!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65375?isDesc=false">교육부"원격수업 출결 가이드라인" 최적화된 과제관리 피드백 기능!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65383?isDesc=false">주관식, 객관식, 서술형 퀴즈 추가하고 평가하기!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65374?isDesc=false">내 강좌를 수료한 수강생에게 수료증을 발급하세요!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65384?isDesc=false">학생들의 진도율, 과제, 퀴즈를 엑셀파일로 다운로드받기!</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">참고 자료</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65376?isDesc=false">화면녹화프로그램으로 PPT에 판서하고 녹음하기!</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65378?isDesc=false">강좌 대표이미지는 여기서 찾으세요! 저작권 무료인 이미지 사이트</a></li>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/65379?isDesc=false">자막 제작하는 꿀팁 공유드립니다! srt 자막 제작 방법</a></li>
                                
                            </ol>
                        
                    
                        
                            <ol class="lect_2dep">
                                <span class="title">edwith에서 강좌를 처음 개설하시는 분들을 위한 가이드</span>
                                
                                    
                                    
                                    
                                    <li class=""><a href="/onlineclass-tutorial/lecture/72848?isDesc=false">에드위드 임시점검 안내</a></li>
                                
                            </ol>
                        
                    
                    </div>
                
            </li>
        
    
        
        
            <!-- <li class="ext ">
                <a href="https://www.edwith.org/onlineclass" target="_blank">
                    
                    <span class="menu">온라인클래스 신청하기</span>
                </a>
            </li>
        
    
        
        
            <li class="hr"></li>
        
    
        
        
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