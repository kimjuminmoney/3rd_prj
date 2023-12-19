<%@page import="kr.co.daitdayoung.index.dao.IndexDAO"%>
<%@page import="kr.co.daitdayoung.index.vo.IndexVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html >
<head>
  
<title>다있다영</title>

<link href="http://localhost/daitdayoung/resources/css/index.css" rel="stylesheet" />
<script src="http://localhost/daitdayoung/resources/js/index.js"></script>

   <script>
      window.onload = function() {
         var slideIndex = 0;
         showSlides();
         
         function showSlides() {
        	 var i;
             var slides = document.getElementsByClassName("mySlides");
            
             for (i = 0; i < slides.length; i++) {
                 slides[i].style.display = "none";
             }
             slideIndex++;
             if (slideIndex > slides.length) {
                 slideIndex = 1
             }
             slides[slideIndex - 1].style.display = "block";
         
             setTimeout(showSlides, 5000); 
         }
      };
</script>
</head>

<body class=" main tmp_main win chrome chrome119">

  
<header>
<jsp:include page="../index_nav/index_head.jsp"></jsp:include>
</header>
     
                
<section class="main_top_section">
<script src="https://kit.fontawesome.com/d505e57471.js" crossorigin="anonymous"></script>
<div class="main_inner">
    <!-- KV 배너 & 로그인 정보 영역 -->
    <div class="kv_login_area">
	<!-- KV 배너 -->
	<div class="kv_banner mooc_spot" id="kv_banner"><!-- #breadcrumb: /modules/main/template/keyvisual.html -->
		
	<span class="slideshow-container">
                 <div class="Slidesbackground">
                 <%-- <c:forEach var="img" items="${BIList } "> --%>
                   <div class="mySlides fade">
                  <%--  <img src="${img.bannerImg }"> --%>
                   <img src="https://images.unsplash.com/photo-1548199973-03cce0bbc87b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2369&q=80" class="slideshow-image"> -->
                    </div>
                   <div class="mySlides fade">
                        <img src="https://images.unsplash.com/photo-1581888227599-779811939961?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2148&q=80" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="https://images.unsplash.com/photo-1534361960057-19889db9621e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="https://images.unsplash.com/photo-1527526029430-319f10814151?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src="https://images.unsplash.com/photo-1600077029182-92ac8906f9a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80" class="slideshow-image">
                    </div>
                    <div class="mySlides fade">
                        <img src=https://cdn.cnn.com/cnnnext/dam/assets/201030094143-stock-rhodesian-ridgeback-super-tease.jpg class="slideshow-image">
                    </div>
                   <%--  </c:forEach> --%>
                </div>
   </span>
	
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
    <a href="/signup" class="join" data-nclk="log.registry">처음이신가요? 회원가입</a>
</div>

</div>

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
   
      
      <em class="title"> <c:out value=" ${indexMC.mcName}" /> </em>
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
            <a href="courses_detail.do?couCode=${cou.couCode }" class="link" target="" data-nclk="mc.lec21">
                <div class="badge">
                </div>
                <em class="class_name"> <c:out value="${cou.couName }"/></em>
                <div class="info">
                   <span> <c:out value="${cou.insName }"/></span>
                </div>
                <span class="thumb" style="background-image: 
                url(courses_detail.do?couCode=${cou.couCode })"></span>
                <%-- <span class="thumb">
                <a href="courses_detail.do?couCode=${index.couCode }"><img src="${ index.bannerImg }"/></a>
           <a><img src="http://localhost/daitdayoung/courses_data/${ index.couCode }/${ index.bannerImg }" 
           width="804" height="240"></a>
              <a><img src="http://localhost/daitdayoung/courses_data/COU_999999/hcy_tech.PNG" width="220px" height="88"/></a>
              </span> --%>
           </a>
            <div class="lecture_count">
                <div class="favorite">
                <span class="ic_heart"></span>
                <c:out value="${cou.hits }"/>
                </div>
                
                <div class="clear">
                <span class="ic_student"></span>
                <c:out value="${cou.completionCnt != null ? cou.completionCnt : 0}"/>
                </div>
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