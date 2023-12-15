<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html >
<head>
    
<title>다있다영</title>

</head>

<body class=" main tmp_main win chrome chrome119">

  
<header>
<jsp:include page="../index_nav/index_head.jsp"></jsp:include>
</header>
     
                
<section class="main_top_section">
   <div class="main_inner">
   
    <!-- KV 배너 & 로그인 정보 영역 -->
    <div class="kv_login_area">
    
    <!-- KV 배너 -->
    <div class="kv_banner mooc_spot" id="kv_banner"><!-- #breadcrumb: /modules/main/template/keyvisual.html -->
     <c:forEach var="index" items="${ BIList }">
           <%-- <a href="courses_detail.do?couCode=${index.couCode }"><img src="${ index.bannerImg }"/></a> --%>
           <%-- <a><img src="http://localhost/daitdayoung/courses_data/${ index.couCode }/${ index.bannerImg }" 
           width="804" height="240"></a> --%>
           <a><img src="http://localhost/daitdayoung/courses_data/COU_999999/hcy_tech.PNG" 
           width="804" height="240"></a>
     </c:forEach>
     <!--  
     <ul class="listImg" style="position: absolute; width: 4020px; left: -1608px;">
     <a href="#" class="bnr_btn_left" slide-btn-prev="" data-nclk="kv.before" style="display: none;"><span class="blind">이전 배너로 이동</span></a>
      <a href="#" class="bnr_btn_right" slide-btn-next="" data-nclk="kv.after" style="display: none;"><span class="blind">다음 배너로 이동</span></a>
         
    <div class="pagination">
             
       <a href="#" class="dot" slide-btn-page="" data-page="0" data-nclk="kv.move"><span class="blind">0</span></a>
       <a href="#" class="dot on" slide-btn-page="" data-page="1" data-nclk="kv.move"><span class="blind">1</span></a>
       <a href="#" class="dot" slide-btn-page="" data-page="2" data-nclk="kv.move"><span class="blind">2</span></a>
       <a href="#" class="btn_pause" slide-btn-pause="" data-nclk="kv.pause" style="display: none;"><span class="blind">배너 정지</span></a>
       <a href="#" class="btn_play" slide-btn-play="" style="" data-nclk="kv.play"><span class="blind">배너 재생</span></a>
     </div> slide-list-container=""
     
     </ul>-->
   <div class="slide_wrap NE=a:mkv">   
   </div>
   
   </div>
   
    <!-- 로그인 정보 -->
    <div id="login_box">
    
   <div class="login" id="userBox">
   
   <br/>
    <h2 class="login_title">로그인/회원가입</h2>
    <br/>
    
       <a href="#" class="" data-sns-login="naver" data-nclk="log.naver">
       <br/>
           <img src="http://localhost/daitdayoung/common/images/login.png">
       </a>
    
    <br/>
    <a href="/signup" class="join" data-nclk="log.registry">처음이신가요? 회원가입</a>
   </div>
   </div>
   
    </div>
    
    <!-- 자동 큐레이션 영역 -->
    <div id="auto_curation_wrap"><!-- #breadcrumb: /modules/main/template/auto.curation.container.html -->
   </div>
   
    <!-- 타임라인 -->
    <div id="timeline_wrap"></div>
      </div>
</section>


<!-- 강좌 소개 -->
<section class="main_srch_section">
<div class="main_inner">

<!-- 수동 큐레이션 -->
<div id="manual_curation_wrap">
<div class="class_list_wrap"><!-- #breadcrumb: /modules/main/template/manual.curation.html -->


<c:forEach var="indexMC" items="${MCList}">
  <h3 class="<c:choose>
              <c:when test='${indexMC.mcCode eq "MC_000001"}'>customClass1</c:when>
              <c:when test='${indexMC.mcCode eq "MC_000002"}'>customClass2</c:when>
              <c:when test='${indexMC.mcCode eq "MC_000003"}'>customClass3</c:when>
              <c:otherwise>defaultClass</c:otherwise>
            </c:choose>">
  </h3>
  <div class="link_wrap">
  
    <a href="courses.do?mcCode=${indexMC.mcCode}" class="title_box" target="" data-nclk="mc.title20">
    
    <c:choose>
   <c:when test="${indexMC.mcCode eq 'MC_000001'}">
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_45/1608025862412BpWqR_PNG/box.png?type=ff252_286)"></span>
   </c:when>      
   <c:when test="${indexMC.mcCode eq 'MC_000002'}">
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_229/1608027977378cSAmK_PNG/q_box_bg_02_new.png?type=ff252_286)"></span>
   </c:when>      
   <c:when test="${indexMC.mcCode eq 'MC_000003'}">
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_132/1608026284610nDLQS_PNG/q_box_bg_01.png?type=ff252_286)"></span>
   </c:when>      
   <c:otherwise>
      <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_214/160802892484503VWn_PNG/png.png?type=ff252_286)"></span>
   </c:otherwise>
    </c:choose>
   
      
      <em class="title">${indexMC.mcName}</em>
      <p class="text">
        <c:choose>
          <c:when test="${indexMC.mcCode eq 'MC_000001'}">
           근로기준법에 의거한 안전보건교육, 성희롱예방교육, 개인정보보호교육, 직장 내 장애인식개선교육 등
          </c:when>
          <c:when test="${indexMC.mcCode eq 'MC_000002'}">
            직장생활에 필요한 시간관리, 업무관리, 사람관리 방법, 셀프리더십 등 개인역량을 키워 조직적응력 향상
          </c:when>
          <c:when test="${indexMC.mcCode eq 'MC_000003'}">
            직장생활에서 발생할 수 있는 위험 속 적절한 위기상황 대응능력을 익힘으로 산업재해를 예방합니다.
          </c:when>
          <c:otherwise>
            새롭게 준비 중인 교육입니다. 기대해주세요!
          </c:otherwise>
        </c:choose>
      </p>
    </a>



 
    
<div><!-- #breadcrumb: /modules/main/template/manual.curation.item.html -->

<div class="inner_wrap all_list" style="overflow: hidden;">
    <ul class="class_list"  style="width: 1104px;">
        <c:forEach var="cou" items="${ indexMC.list }"> 
        <li class="list_item">
            <a href="/medical-20200327" class="link" target="" data-nclk="mc.lec21">
                <div class="badge">
                </div>
                <em class="class_name">${cou.couName }</em>
                <div class="info">
                   <span>${cou.insName}</span>
                </div>
                <span class="thumb" style="background-image: 
                url(http://localhost/daitdayoung/courses_data/COU_999999/hcy_tech.PNG)">
                &nbsp;</span>
                <%-- <span class="thumb">
                <a href="courses_detail.do?couCode=${index.couCode }"><img src="${ index.bannerImg }"/></a>
           <a><img src="http://localhost/daitdayoung/courses_data/${ index.couCode }/${ index.bannerImg }" 
           width="804" height="240"></a>
              <a><img src="http://localhost/daitdayoung/courses_data/COU_999999/hcy_tech.PNG" width="220" height="88"/></a>
              </span> --%>
           </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart"></span><c:out value="${cou.hits }"/></div>
                <div class="clear"><span class="ic_student"></span><c:out value="${cou.completionCnt != null ? cou.completionCnt : 0}"/></div>
            </div>
        </li>
        </c:forEach>
    </ul>
    
</div>

</div>
</div>
</c:forEach>

</div>

</div>

</div>

</section>
 
                
<footer class="bg-dark py-4 mt-auto">
<jsp:include page="../index_nav/index_foot.jsp"></jsp:include>
</footer>


</body>
</html>