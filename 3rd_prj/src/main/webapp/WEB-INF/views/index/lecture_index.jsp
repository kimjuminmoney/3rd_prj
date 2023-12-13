<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<section class="main_srch_section">
<div class="main_inner">

<!-- 수동 큐레이션 -->
<div id="manual_curation_wrap"><div class="class_list_wrap"><!-- #breadcrumb: /modules/main/template/manual.curation.html -->

<h3 class="class_list_title">똑똑한 직장인의 비결, 대공개!</h3>
<div class="link_wrap" curation-wrap="">
    
<c:forEach var="index" items="${ CList }">    
	<a href="courses.do?mcCode=${index.mcCode }" class="title_box" target="" data-nclk="mc.title20">  
   <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_132/1608026284610nDLQS_PNG/q_box_bg_01.png?type=ff252_286)"></span>
   <em class="title">${index.mcName }</em>
   <p class="text">근로기준법에 의거한 법정 의무교육으로 똑똑한 직장인 도전!</p>
    </a> 
    
<div><!-- #breadcrumb: /modules/main/template/manual.curation.item.html -->

<div class="inner_wrap all_list" style="overflow: hidden;">
    <ul class="class_list" slide-list-container="" style="width: 1104px;">
        
        <li class="list_item">
            <a href="/medical-20200327" class="link" target="" data-nclk="mc.lec21">
                <div class="badge">
                    
                </div>
                <em class="class_name">${index.couName }</em>
                <div class="info">
                   <span>${index.insName}</span>
                </div>
                <span class="thumb">
                <%-- <a href="courses_detail.do?couCode=${index.couCode }"><img src="${ index.bannerImg }"/></a> --%>
           <%-- <a><img src="http://localhost/daitdayoung/courses_data/${ index.couCode }/${ index.bannerImg }" 
           width="804" height="240"></a> --%>
           <a><img src="http://localhost/daitdayoung/courses_data/COU_999999/hcy_tech.PNG" width="220" height="88"></a> &nbsp;</a></span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">${index.hit }</span></div>
            </div>
        
        
        
        </li>
        
        
    </ul>
    
      <!--   <a href="#" class="list_prev_btn" slide-btn-prev="" data-nclk="mc.before" style="display: none;"><span class="blind">이전</span></a>
        <a href="#" class="list_next_btn" slide-btn-next="" data-nclk="mc.after1"><span class="blind">다음</span></a> -->
    
</div>
<!-- <div class="pagination">
    
        <a href="#" class="dot on" slide-btn-page="" data-page="0" data-nclk="mc.move"><span class="blind">0</span></a>
    
        <a href="#" class="dot " slide-btn-page="" data-page="1" data-nclk="mc.move"><span class="blind">1</span></a>
    
</div> -->
</div>
</div>
</c:forEach>

</div>


<div class="class_list_wrap"><!-- #breadcrumb: /modules/main/template/manual.curation.html -->

<h3 class="class_list_title">회사와 성장하는 시대? 이제는 나의 성장 시대!</h3>
<div class="link_wrap" curation-wrap="">
    
        <a href="courses_se.do" class="title_box" target="" data-nclk="mc.title30">
            <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_45/1608025862412BpWqR_PNG/box.png?type=ff252_286)"></span>
            <em class="title">자기개발교육</em>
            <p class="text">회사 업무 외에 나를 위한 스펙업을 차근차근 쌓아가게 도와드립니다</p>
        </a>
    
<div><!-- #breadcrumb: /modules/main/template/manual.curation.item.html -->

<div class="inner_wrap all_list" style="overflow: hidden;">
    <ul class="class_list" slide-list-container="" style="width: 1656px;">
        
        <li class="list_item">
            <a href="/cellsignaling2020" class="link" target="" data-nclk="mc.lec31">
                <div class="badge">
                    
                </div>
                <em class="class_name">세포 신호전달의 이해</em>
                <div class="info">
                    <span>KAIST 생명과학과 김세윤 교수님</span><span>KOOC (KAIST Open Online Course)</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201216_18/160810467526715Ahg_JPEG/KOOC__.jpg?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>305</div>
                <div class="student"><span class="ic_student">수강생 수</span>1016</div>

                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/electrodynamics-04" class="link" target="" data-nclk="mc.lec32">
                <div class="badge">
                    
                </div>
                <em class="class_name">신소재 응용을 위한 전자기학 4</em>
                <div class="info">
                    <span>KAIST 신소재공학과 홍승범 교수</span><span>KOOC (KAIST Open Online Course)</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201216_189/1608104645783bAzjv_JPEG/KOOC__.jpg?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>17</div>
                <div class="student"><span class="ic_student">수강생 수</span>201</div>

                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/python4ai" class="link" target="" data-nclk="mc.lec33">
                <div class="badge">
                    
                </div>
                <em class="class_name">인공지능 코딩을 위한 실용 파이썬(Practical Python for AI Coding)</em>
                <div class="info">
                    <span>KAIST 기술경영학부 권영선 교수</span><span>KOOC (KAIST Open Online Course)</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20200729_232/1596028995697wvrNX_JPEG/_.jpg?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>5969</div>
                <div class="student"><span class="ic_student">수강생 수</span>7547</div>

                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/solidmechanics-2" class="link" target="" data-nclk="mc.lec34">
                <div class="badge">
                    
                </div>
                <em class="class_name">고체역학 2</em>
                <div class="info">
                    <span>KAIST 기계공학과 박인규 교수</span><span>KOOC (KAIST Open Online Course)</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20200827_120/1598498654509jHQah_PNG/2.PNG?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>136</div>
                <div class="student"><span class="ic_student">수강생 수</span>401</div>

                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/dynamics-control-hm" class="link" target="" data-nclk="mc.lec35">
                <div class="badge">
                    
                </div>
                <em class="class_name">인체 운동의 역학 및 제어</em>
                <div class="info">
                    <span>KAIST 기계공학과 박수경 교수</span><span>KOOC (KAIST Open Online Course)</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20200806_241/1596695549661Vstcu_PNG/_1.png?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>117</div>
                <div class="student"><span class="ic_student">수강생 수</span>460</div>

                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/designthinking-glabal" class="link" target="" data-nclk="mc.lec36">
                <div class="badge">
                    
                </div>
                <em class="class_name">디자인 씽킹과 글로벌 창업</em>
                <div class="info">
                    <span>KAIST 기계공학과 윤용진 교수</span><span>KOOC (KAIST Open Online Course)</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20200326_121/1585182147495ogxve_PNG/__.png?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>346</div>
                <div class="student"><span class="ic_student">수강생 수</span>838</div>

                
            </div>
        </li>
        
    </ul>
    
        <a href="#" class="list_prev_btn" slide-btn-prev="" data-nclk="mc.before" style="display: none;"><span class="blind">이전</span></a>
        <a href="#" class="list_next_btn" slide-btn-next="" data-nclk="mc.after1"><span class="blind">다음</span></a>
    
</div>
<div class="pagination">
    
        <a href="#" class="dot on" slide-btn-page="" data-page="0" data-nclk="mc.move"><span class="blind">0</span></a>
    
        <a href="#" class="dot " slide-btn-page="" data-page="1" data-nclk="mc.move"><span class="blind">1</span></a>
    
</div>
</div>
</div>
</div>


<div class="class_list_wrap"><!-- #breadcrumb: /modules/main/template/manual.curation.html -->

<h3 class="class_list_title">모두의 안전하고 행복한 하루를 만들어보아요!</h3>
<div class="link_wrap" curation-wrap="">
    
        <a href="courses_ose.do" class="title_box" target="" data-nclk="mc.title40">
            <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20201215_229/1608027977378cSAmK_PNG/q_box_bg_02_new.png?type=ff252_286)"></span>
            <em class="title">산업안전교육</em>
            <p class="text">근로자들이 속한 작업장에서 발생할 수 있는 위험한 요인 및 사고 예방법, 안전 지식 등을 배울 수 있는 법정의무교육</p>
        </a>
    
<div><!-- #breadcrumb: /modules/main/template/manual.curation.item.html -->

<div class="inner_wrap all_list" style="overflow: hidden;">
    <ul class="class_list" slide-list-container="" style="width: 1380px;">
        
        <li class="list_item">
            <a href="/hellodl101" class="link" target="" data-nclk="mc.lec41">
                <div class="badge">
                    
                </div>
                <em class="class_name">AI/딥러닝 입문자 학습 가이드 (with NAVER)</em>
                <div class="info">
                    <span>커넥트재단</span><span>edwith</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20200508_223/1588918111488YnkOo_JPEG/joel-filipe-ZMRMFULofus-unsplash.jpg?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>49</div>
                <div class="student"><span class="ic_student">수강생 수</span>3165</div>
                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/ai152" class="link" target="" data-nclk="mc.lec42">
                <div class="badge">
                    
                </div>
                <em class="class_name">[하버드] 확률론 기초: Statistics 110</em>
                <div class="info">
                    <span>Joe Blitzstein</span><span>부스트코스</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20210330_75/1617098023118422wL_PNG/ai_harvardprobability.png?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>956</div>
                <div class="student"><span class="ic_student">수강생 수</span>13007</div>
                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/python-data" class="link" target="" data-nclk="mc.lec43">
                <div class="badge">
                    
                </div>
                <em class="class_name">파이썬 자료구조</em>
                <div class="info">
                    <span>커넥트재단</span><span>edwith</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20181025_123/15404560688983PeQo_JPEG/mooc__2.0_2.jpg?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>1145</div>
                <div class="student"><span class="ic_student">수강생 수</span>13790</div>

                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/terrydltalks" class="link" target="" data-nclk="mc.lec44">
                <div class="badge">
                    
                </div>
                <em class="class_name">3분에 익히는 머신러닝의 기본 원리</em>
                <div class="info">
                    <span>커넥트재단</span><span>edwith</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20200407_71/1586232161698FeBAG_JPEG/max-langelott-wWQ760meyWI-unsplash.jpg?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>102</div>
                <div class="student"><span class="ic_student">수강생 수</span>3975</div>

                
            </div>
        </li>
        
        <li class="list_item">
            <a href="/pythonforeverybody" class="link" target="" data-nclk="mc.lec45">
                <div class="badge">
                    
                </div>
                <em class="class_name">모두를 위한 프로그래밍 : 파이썬</em>
                <div class="info">
                    <span>커넥트재단</span><span>edwith</span>
                </div>
                <span class="thumb" style="background-image: url(https://cphinf.pstatic.net/mooc/20181025_41/1540456035940IHXfw_JPEG/mooc__2.0_1.jpg?type=ff220_88)">&nbsp;</span>
            </a>
            <div class="lecture_count">
                <div class="favorite"><span class="ic_heart">좋아요</span>2771</div>
                <div class="student"><span class="ic_student">수강생 수</span>48603</div>

                
            </div>
        </li>
        
    </ul>
    
    
</div>
</div></div></div>


</div>
</div>
</section>