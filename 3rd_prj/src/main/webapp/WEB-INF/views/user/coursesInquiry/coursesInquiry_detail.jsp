<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/whaleclass.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css">
<script src="https://www.edwith.org/static/js/vendor/raphael/raphael.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
    
<title>강좌 문의 상세: edwith</title>
   <!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/myCourses.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">

</head>

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
  
<body class="win chrome chrome119 re_pack new_color edwith">
    <div class="wrap">
        <!-- container -->
        <div class="container new_layout ">
            <!-- HEADER -->
            

<!-- #breadcrumb:common/_whaleclass_header.gsp -->
<jsp:include page="../nav/header.jsp"></jsp:include>

            <!-- [D] 모바일에서 snb 딤드 노출시 class open 추가해주세요
				딤드 노출시 html, body에 style="overflow:hidden" 추가해주세요 -->
            <span class="snb_dimed" id="snb_dimed"></span>

            <!--SNB-->
            
<!-- #breadcrumb:common/_whaleclass_snb.gsp -->
<jsp:include page="../nav/nav_myCourses.jsp"></jsp:include>

            
<div class="content">
<!-- 1111111111111111111111111111111111111111111111111111111111111111111 -->
<div class="page">
	<div class="main_top b_none" data-main-top="" >
	        <!-- my_btn_area  mo ~ 1279px 에 노출 -->
	        <div>
	        <h3 class="tit_home"><c:out value="${ uciDomain.ciTitle }"/></h3>
	        </div><br>
	</div>
    
    <div class="course_group course_join" data-course-group="">
	    <div class="course_lst class_area">
	        <div>
	        강좌명 : <c:out value="${ uciDomain.couName }"/> 문의유형 : <c:out value="${ uciDomain.citName }"/> 문의날짜 : <c:out value="${ uciDomain.ciDate }"/>
	        </div>
	    
	    
	    
	    
	    
	    </div>
    </div>
    
</div>        
<section class="page forum" data-hasmobile="true">
    <!--page_header-->
    <header class="page_header">
        <div class="group_lr">
            <div class="group_l">
                <h1 class="page_title"><c:out value="${ uciDomain.ciTitle }"/></h1>
            </div>
        </div>
    </header>
    <!--//page_header-->

    <!--notice_view-->
    <article class="forum_view">
        <!-- [D] 권한에 따라 노출되는 UI가 다름 -->
        <div class="forum_func group_lr">
            <div class="group_l">
                <div class="user_info">
                    
                        <div class="thumb bgnone">
                            <img src="https://cphinf.pstatic.net/mooc/20190311_200/1552269021926taXXr_PNG/edwith%28%29.png?type=ff48_48" width="24" height="24" alt="">
                        </div>
                    
                    <!-- <span class="username">edwith</span>
                    
                        <span class="ic_ad vamiddle">관리자</span> -->
                    
                    <time class="time" datetime="2020.05.15"><c:out value="${ uciDomain.ciDate }"/></time>
                </div>
            </div>
            
        </div>
        <div class="ce ce_view">
            <article class="material_view material_text">
                <div class="material_desc editor_reset">
                    <p>
                    <c:out value="${ uciDomain.ciContent }"/>
					</p>
                </div>
            </article>

            <div class="share">
                
                <!--페이지네비게이션 : 이전글/다음글/목록보기-->
                
<!-- #breadcrumb:common/_pageNavigation.gsp -->
<div class="group_lr">
    <div class="paginate">
            <div class="pagin l"><a href="#" class="btn_prve disabled" style="pointer-events: none;">이전 글이 없습니다.</a></div>
            <div class="pagin r"><a href="#" class="btn_next disabled" style="pointer-events: none;">다음 글이 없습니다.</a></div>
        
    </div>
    <div class="group_lr">
        <div class="group_r">
            <a href="/onlineclass-tutorial/notices/32827" class="btn btn_type2 bold N=a:lec.list" data-selector="backToListBtn">목록</a>
        </div>
    </div>
</div>
                <!--//페이지네비게이션 -->
            </div>
        </div>
    </article>
    <!--//forum_view-->
</section>
<!-- 1111111111111111111111111111111111111111111111111111111111111111111 -->
   <%--  <div class="page">
        <div class="main_top b_none" data-main-top>
            <button type="button" id="test" class="btn_gnb" data-gnb-on-btn><span class="blind">메뉴 펼치기</span></button>
            <!-- my_btn_area  mo ~ 1279px 에 노출 -->
            <div class="my_btn_area">
                <a href="#" class="btn_my" data-my-btn>
                    <img src="" width="32" height="32" alt="" class="my_thumb" style="display: none" data-profile-btn-image>
                </a>
                <div class="badge_box" style="display: none" data-badge-box>
                    <span class="blind">알림</span><em class="badge_new" data-badge-box-count></em>
                </div>
            </div>
            <h3 class="tit_home">문의하기</h3>
            <div class="btn_area" data-course-list>
                    <button type="button" class="btn_type" data-course-join-btn><span class="btn_txt">문의하기</span></button>
            </div>
        </div>
            <hr>
        <div class="tab_area">
            
        </div>
        

<div class="course_group course_join" data-course-group>
    <div class="course_lst class_area">
    <header class="page_header">
        <div class="group_lr">
            <div class="group_l">
                <h1 class="page_title"><c:out value="${ uciDomain.ciTitle }"/></h1>
            </div>
        </div>
    </header>
    <article class="forum_view">
        <!-- [D] 권한에 따라 노출되는 UI가 다름 -->
        <div class="forum_func group_lr">
            <div class="group_l">
                <div class="user_info">
                    <time class="time" ><c:out value="${ uciDomain.ciDate }"/></time>
                </div>
            </div>
        </div>
        <div class="ce ce_view">
            <article class="material_view material_text">
                <div class="material_desc editor_reset">
                    <c:out value="${ uciDomain.ciContent }"/>
                </div>
            </article>
		</div>
	</article>
            
    </div>
</div>
             --%>
        
        
            <!-- paginate -->
           <!--  <nav class="paginate" role="navigation">
            <div class="inner">
            <a href="#" class="pre" onclick="return false;">이전</a>
            <ul class="page_list">
            <li><a href="/myPage/home?searchType=&amp;searchText=&amp;sortType=REG&amp;offset=0&amp;max=20" sort="regYmdt" order="desc" class="selected">1</a></li>
            </ul>
            <a href="#" class="next" onclick="return false;">다음</a>
            </div>
            </nav> -->
            
        
    </div>
</div>




<script src="https://www.edwith.org/static/js/src/entries/whaleclass/main/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(function(){
        var entry = require("/entries/whaleclass/main/index.entry.js");
        entry.initialize({
            searchType: "all"
        });
    });
</script>

<!-- FOOTER -->
<jsp:include page="../nav/footer.jsp"></jsp:include>

        </div>
    </div>
</body>
</html>