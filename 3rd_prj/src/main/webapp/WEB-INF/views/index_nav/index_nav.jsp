<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bootstrap CDN시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Jquery CDN시작 -->

<style>

.accordion-button{
	background-color: #454545;
	color: #fff;
}

.accordion-body{
	background-color: #fff;
	color: #fff; 
	font: #454545;
}


</style>

<!-- 강좌 목록의 죄측 메뉴 서랍, 중앙 목록 리스트 -->    
<div id="container" class="search_container">
    <div id="content">
    
    <!-- 좌측 매뉴 서랍 -->




<div class="accordion" id="accordionExample">
  <div class="accordion-item" style="width: 252px; height: 48px; text-align: left; color: #454545;">
  
	<h2 class="accordion-header" style="width: 252px; height: 48px; ">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" 
      aria-expanded="true" aria-controls="collapseOne" style="color: #fff; background-color: #454545;">
      의무교육
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample" style="font: #666">
     	<a href="courses.do?couCode=SC_000002" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		개인정보 보호교육
      </div>
      </a>
     	<a href="courses.do?couCode=SC_000001" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		성희롱 예방교육
      </div>
      </a>
      <a href="courses.do?couCode=SC_000003" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		산업안전 보건교육
      </div>
      </a>
      <a href="courses.do?couCode=SC_000004" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		장애인인식 개선교육
      </div>
      </a>
      <a href="courses.do?couCode=SC_000005" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		퇴직연금 교육
      </div>
      </a>
      <a href="courses.do?couCode=SC_000006" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		직장 내 괴롭힘 예방교육
      </div>
      </a>
    </div>
    
	<h2 class="accordion-header" style="width: 252px; height: 48px; ">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" 
      aria-expanded="true" aria-controls="collapseOne" style="color: #fff; background-color: #454545;">
      자기개발교육
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample" style="font: #666">
      <a href="courses.do?couCode=SC_000008" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
      마케팅 분석 
      </div>
      </a>
      <a href="courses.do?couCode=SC_000007" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		데이터 분석
      </div>
      </a>
      <a href="courses.do?couCode=SC_000009" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		비즈니스 매너
      </div>
      </a>
      <a href="courses.do?couCode=SC_0000012" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		포토샵, 영상편집
      </div>
      </a>
      <a href="courses.do?couCode=SC_0000011" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		제3 외국어
      </div>
      </a>
      <a href="courses.do?couCode=SC_0000010" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		영어
    </div>
    </a>
 </div>
    
	<h2 class="accordion-header" style="width: 252px; height: 48px; ">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" 
      aria-expanded="true" aria-controls="collapseOne" style="color: #fff; background-color: #454545;">
      산업안전교육
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample" style="font: #666">
      <a href="courses.do?couCode=SC_0000013" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
     보건
  </div>
  </a>
  <a href="courses.do?couCode=SC_0000014" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		서비스
      </div>
      </a>
      <a href="courses.do?couCode=SC_0000017" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		공통
      </div>
      </a>
      <a href="courses.do?couCode=SC_0000016" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		건설
      </div>
      </a>
      <a href="courses.do?couCode=SC_0000015" style="color: #fff">
      <div class="accordion-body" style="color: #454545; font-style: ">
		제조
      </div>
      </a>
	
	</div>
</div>

	<!-- 강의 목록 -->
	
	<section class="srch_section">

    <div class="lecture_list_area">
            
    <div id="categoryTitle" class="lecture_list_title" style="">
    <h2 class="h_title">&nbsp;&nbsp;&nbsp;&nbsp;전체</h2>
    </div>
	<ul class="lecture_list" id="course">
	                
	<c:forEach var="cou" items="${ CLList }">
	<li>
    <div class="lecture_card card">
    <span class="preview">
            <img src="${cou.bannerImg }">
        <span class="mask"></span>
    </span>
        <dl class="lecture_info">
            <dt><c:out value="${cou.couName }"/></dt>
            <dd class="detail">
                <p class="name">
                  <span class="txt_prof">${cou.insName}</span>
                </p>
            </dd>
        </dl>
        <div class="lecture_count">
        	<div class="favorite"><span class="ic_heart"></span><c:out value="${cou.hits }"/></div>
            <%-- <div class="clear"><span class="ic_student"></span><c:out value="${cou.completionCnt != null ? cou.completionCnt : 0}"/></div> --%>
        </div>
        <a href="courses_detail.do?couCode=${ cou.couCode }" class="lnk_lecture">
            <span class="blind">강좌 바로가기</span>
        </a>
    </div>
</li>
</c:forEach>

	</ul>
</div>

	<a href="#" class="btn_top" data-top-btn="" style="display: block;">TOP</a>
            
</section>

</div> 

 
</div>
</div>
