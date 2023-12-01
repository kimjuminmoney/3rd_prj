<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
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

	<div class="slide_wrap NE=a:mkv">
	    <ul class="list items" slide-list-container="" style="position: absolute; width: 4020px; left: -1608px;">
	    	<li>
	          <a href="https://www.edwith.org/boost-course/intro" target="_blank" data-nclk="kv.go">
	              <img src="https://cphinf.pstatic.net/mooc/20190312_185/1552382144605sAeJd_PNG/KV1.png?type=ff804_240">
	          </a>
	      	</li>
	      
	      	<li>
	          <a href="https://www.edwith.org/introduce" target="" data-nclk="kv.go">
	              <img src="https://cphinf.pstatic.net/mooc/20201215_289/16080231869905j06x_PNG/_1_1215.png?type=ff804_240">
	          </a>
	      	</li>
	      
	      	<li>
	          <a href="https://www.edwith.org/onlineclass" target="_blank" data-nclk="kv.go">
	              <img src="https://cphinf.pstatic.net/mooc/20201215_14/1608023378972kayQE_PNG/_2_1215.png?type=ff804_240">
	          </a>
	      	</li>
	      
	      	<li>
	          <a href="https://www.edwith.org/boost-course/intro" target="_blank" data-nclk="kv.go">
	              <img src="https://cphinf.pstatic.net/mooc/20190312_185/1552382144605sAeJd_PNG/KV1.png?type=ff804_240">
	          </a>
	      </li>
	      
	      <li>
	          <a href="https://www.edwith.org/introduce" target="" data-nclk="kv.go">
	              <img src="https://cphinf.pstatic.net/mooc/20201215_289/16080231869905j06x_PNG/_1_1215.png?type=ff804_240">
	          </a>
	      </li>
	  </ul>
	  
      <a href="#" class="bnr_btn_left" slide-btn-prev="" data-nclk="kv.before" style="display: none;"><span class="blind">이전 배너로 이동</span></a>
      <a href="#" class="bnr_btn_right" slide-btn-next="" data-nclk="kv.after" style="display: none;"><span class="blind">다음 배너로 이동</span></a>
	      
	 <div class="pagination">
	          
       <a href="#" class="dot" slide-btn-page="" data-page="0" data-nclk="kv.move"><span class="blind">0</span></a>
       <a href="#" class="dot on" slide-btn-page="" data-page="1" data-nclk="kv.move"><span class="blind">1</span></a>
       <a href="#" class="dot" slide-btn-page="" data-page="2" data-nclk="kv.move"><span class="blind">2</span></a>
       <a href="#" class="btn_pause" slide-btn-pause="" data-nclk="kv.pause" style="display: none;"><span class="blind">배너 정지</span></a>
       <a href="#" class="btn_play" slide-btn-play="" style="" data-nclk="kv.play"><span class="blind">배너 재생</span></a>
     </div>
	    
	</div>
	
	</div>
	
    <!-- 로그인 정보 -->
    <div id="login_box">
    
	<div class="login" id="userBox">
	
	<br/>
    <h2 class="login_title">로그인/회원가입</h2>
    <br/>
    
	    <a href="#" class="btn_naver" data-sns-login="naver" data-nclk="log.naver">
	        <span class="text">로그인</span>
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
<jsp:include page="lecture_index.jsp"></jsp:include>
 
                
<footer class="bg-dark py-4 mt-auto">
<jsp:include page="../index_nav/index_foot.jsp"></jsp:include>
</footer>

</body>
</html>