<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 강좌 목록의 죄측 메뉴 서랍, 중앙 목록 리스트 -->    
<div id="container" class="search_container">
    <div id="content">
    
    <!-- 좌측 매뉴 서랍 -->
    <div class="srch_snb" style="overflow-y: auto;">
    <nav>
	<ul data-mooc-main-category="">
		<li data-category-id="courses_detail.do?notCode=${courses.couCode }">${courses.couName }
		</li>
	                
		<li data-category-id="courses_detail.do?notCode=${courses.couCode }" class="on sub">
		    <a href="#" class="link">
		        
		        <span class="tit">소프트웨어 개발</span>
		        
		    </a>
		    <a href="#" class="btn_arr" style="" data-fold="">
		        <span class="blind">접기</span>
		    </a>
		
		<ul class="sub_depth">
		<li data-category-id="72" class="">
		    <a href="#" class="link">
		        
		        컴퓨터공학 기초
		        
		    </a>
		    <a href="#" class="btn_arr" style="display: none;" data-fold="">
		        <span class="blind">접기</span>
		    </a>
		
		</li>
	
		</ul>
		</li>
	
	</ul>
	</nav>
	        
	</div>

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
	        
	        <dl class="lecture_info">
	            <dt>2023년 방과후 놀이배움터 역량강화 연수 연장운영
	                
	            </dt>
	            <dd class="detail">
	                <div class="date">
	                    
	                    2023.11.30 ~ 2023.12.22
	                    
	                    
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




