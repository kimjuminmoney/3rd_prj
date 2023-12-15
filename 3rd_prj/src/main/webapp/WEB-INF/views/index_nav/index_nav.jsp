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
  <div class="accordion-item" style="width: 252px; height: 48px; text-align: center; color: #454545;">

    <h2 class="accordion-header" style="width: 252px; height: 48px; text-align: center; color: #454545;">
    
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        나와아아아
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      아아아아아아앙악
      </div>
    </div>
  </div>
 
  
</div>
    
    
    
<%-- <div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
  <c:forEach var="indexMC" items="${MCList}">
    <h2 class="accordion-header" >
	    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" 
	    aria-expanded="false" aria-controls="flush-collapseOne">
	    <a href="courses.do?mcCode=${indexMC.mcCode}">
	        ${indexMC.mcName}
	    </a>
		</button>
    </h2>
    </c:forEach>
    
    <c:forEach var="leftDetail" items="${ctList }">
    <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body"> ${leftDetail.scName }</div>
    </div>
    </c:forEach>
  </div>
</div> --%>



	<!-- 강의 목록 -->
	
	<section class="srch_section">

            <div class="lecture_list_area">
            <div id="categoryTitle" class="lecture_list_title" style="">
            <h2 class="h_title">전체 (342)</h2>
            </div>
            
	<ul class="lecture_list" id="course">
	                
	<li>
	    <div class="lecture_card card">
	    <span class="preview">
	        
	    	<img src="https://cphinf.pstatic.net/mooc/20231130_10/1701318273839pnWMT_JPEG/%B8%DE%C0%CE_%C8%AD%B8%E9.JPG?type=ffn300_166" alt="2023년 방과후 놀이배움터 역량강화 연수 연장운영">
	
	        <span class="mask"></span>
	        
	    </span>
	        
	        <c:forEach var="cou" items="${ indexMC.list }"> 
	        <dl class="lecture_info">
	            <dt>
	                
	            </dt>
	            <dd class="detail">
	                <div class="date">
	                    
	                </div>
	                <p class="name">
	                    <span class="txt_prof">영유아교육연수원</span>
	                    <span class="txt_partner">edwith</span>
	                    
	                </p>
	            </dd>
	        </dl>
		<div class="lecture_count">
	        <div class="favorite"><span class="ic_heart">좋아요</span>9</div>
	        <div class="student"><span class="ic_student">수강생 수</span>88</div>
	    </div>
	    
	        <a href="/afternoonclass2" class="lnk_lecture">
	            <span class="blind">강좌 바로가기</span>
	        </a>
	        </c:forEach>
	        
	    </div>
	</li>

	</ul>
</div>

            <div class="more_area ta_c" id="_more_area" style="">
                <!-- [D][AU] 로딩시 'load_gray'클래스 추가 -->
                <button type="button" class="btn btn_type10" data-course-more-btn="">더보기 
                <em>(24/342)</em>
                </button>
            </div>
            <a href="#" class="btn_top" data-top-btn="" style="display: block;">TOP</a>
            
        </section>


</div>  
</div>




