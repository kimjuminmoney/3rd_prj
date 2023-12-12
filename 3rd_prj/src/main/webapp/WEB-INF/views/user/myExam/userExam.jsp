<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses.css" type="text/css">
<!-- <script src="/static/js/vendor/html5shiv/dist/html5shiv.min.js?231207_3adce7d7"></script>
<script src="/static/js/vendor/respond/dest/respond.min.js?231207_3adce7d7"></script>
<script src="/static/js/plugins/nclktag.js?231207_3adce7d7"></script> -->
<!-- jQuery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    
<title>시험: 김주민</title>
<!-- courses_notice_table css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses_notice_table.css" type="text/css">    
<style type="text/css">
#timer {
    font-size: 30px;
    font-weight: 500;
    color: white;
    /* width: 300px; */
}

#timer div {
    display: inline-block;
    min-width: 90px;
    padding: 15px;
    background: #00AB50;
    border-radius: 10px;
    margin: 15px;
}

#timer div span {
    color: #145368;
    display: block;
    margin-top: 15px;
    font-size: .35em;
    font-weight: 400;
}
</style>    
<style>
        /* Add your CSS styles here if needed */
        .timer-container {
            font-size: 24px;
            text-align: center;
            margin: 20px;
        }
    </style>
</head>


<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<body class="re_pack win chrome chrome120">

<!-- <script src="/static/js/vendor/vendor.compressed.min.js?231207_3adce7d7"></script>
<script src="/static/js/src/entries/common/_head.entry.browserfied.min.js?231207_3adce7d7"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script> -->
<div id="wrap"> 
<div id="container">
<!-- 네비바------------------------------------------------------ -->
<div class="lnb">
    <!-- 신규 boostcourse LNB SNB -->
    <div class="inc_sub default">
        <div class="hd_txt">
            <div class="inner">
                <div class="label_box" >
                </div>
                <!-- [D] 강좌명이 51~90자인 경우 h2 class에 word_max 추가 -->
                <h1 class="page_title" style="font-size: 32px; color: #fff">
                    <c:out value="${ ucDomain.couName }"/>
                </h1>
                <span class="name"style="color: #fff"><c:out value="${ ucDomain.insName }"/></span>
                    <div class="profile"style="padding-left: 0px;">
                    <span class="name">응시자명</span>
                    </div>
    
            </div>
            <div class="lecture_sub_tool">
                
                    <div class="count_info">
                        <span class="count_like"><em>좋아요</em> 376</span>
                        <span class="count_observe"><em>수강생</em> 456</span>
                    </div>
                    <div class="manage_box">
                        
                    </div>
            </div>
        </div>
    </div>
        <!-- 신규 boostcourse SNB -->
<div id="snb" class="default ">
<nav class="nav_menu">
    <h2 class="sr_only">하위 메뉴</h2>
    <!-- <ul class="NE=a:lmn"> -->
    <table id="customers" class="forum_list_new bdnone table">
    <thead>
		<tr>
			<th>번호</th><th>선택</th>
		</tr>    
    </thead>
    <tbody>
    	<c:forEach var="uce" items="${ uceList }" varStatus="i">
    	<tr>
			<td><c:out value="${ i.count }"/></td><td></td>
		</tr>
		</c:forEach>
    </tbody>
    </table>
        </nav>
        </div>
    
</div>
<div id="content">
            

<script type="text/javascript">
function startTimer(duration, display) {
  var timer = duration, minutes, seconds;
  var interval = setInterval(function () {
    minutes = parseInt(timer / 60, 10)
    seconds = parseInt(timer % 60, 10);

    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    display.textContent = minutes + ":" + seconds;

    if (--timer < 0) {
      timer = duration;
    }
    if(timer === 0) {
      clearInterval(interval);
      display.textContent = "세션 만료!";
    }
  }, 1000);
}

window.onload = function () {
  /* 기본값 10(분)입니다. */
  var minutes = 10;

  var fiveMinutes = (60 * minutes) - 1,
    display = document.querySelector('#MyTimer');
  startTimer(fiveMinutes, display);
};

</script>

<!-- 시험문제구간 -->
<section class="page quiz" id="_wrap_quiz_area">
	<header class="page_header">
        <div class="group_lr mab10">
			<div class="group_r">
			</div>
            <div style="display: flex; justify-content: space-between;height: 90px;">
			    <div style="font-size: 50px; order: 1;">시험</div>
			    <div style="order: 2; display: flex; align-items: center;">
			    <div style="font-size: 30px;">남은시간 : </div>
			    <div id="timer"><div id="MyTimer"></div></div>
			    </div>
			</div>
        </div>
	</header>
	<p id="_wrap_quiz_explain_area" class="quiz_desc mat40"></p>

	<div id="_wrap_loading_quiz" style="display: none;">
		<div class="loading type2"><span class="sr_only">로딩 중입니다.</span></div>
	</div>

	<div id="_wrap_quiz_content" style="" class="quiz_add_wrap">
		<div class="q_header">
			<ul class="q" id="_wrap_quiz_nav_area" data-coach="step_2"><!--  #breadcrumb:quiz/quiz.view/template/quiz.nav.item.html-->
<!-- [D]class[incorrect | correct] -->
<li class="on current"><a href="#"><em>1</em></a></li><!--  #breadcrumb:quiz/quiz.view/template/quiz.nav.item.html-->
<!-- [D]class[incorrect | correct] -->
<li><a href="#"><em>2</em></a></li><!--  #breadcrumb:quiz/quiz.view/template/quiz.nav.item.html-->
<!-- [D]class[incorrect | correct] -->
<li><a href="#"><em>3</em></a></li><!--  #breadcrumb:quiz/quiz.view/template/quiz.nav.item.html-->
<!-- [D]class[incorrect | correct] -->
<li><a href="#"><em>4</em></a></li><!--  #breadcrumb:quiz/quiz.view/template/quiz.nav.item.html-->
<!-- [D]class[incorrect | correct] -->
<li><a href="#"><em>5</em></a></li><!--  #breadcrumb:quiz/quiz.view/template/quiz.nav.item.html-->
<!-- [D]class[incorrect | correct] -->
<li><a href="#"><em>6</em></a></li><!--  #breadcrumb:quiz/quiz.view/template/quiz.nav.item.html-->
<!-- [D]class[incorrect | correct] -->
<li><a href="#"><em>7</em></a></li></ul>
			<p class="total_score" id="_wrap_remain_question_count">남은 문제 : <strong>6</strong> 문제</p>
		</div>
		<div id="_wrap_question_area" class="q_body mal30 mar30" data-coach="step_3"><!--  #breadcrumb:quiz/question.view/template/question.view.multichoice.html-->
<p class="q_txt">
    <span class="l">
        <span class="_wrap_print_correct_icon">

        </span>
        Q
    </span> 1(단일선택, 10점)
</p>

<div class="editor_reset _question_area">
    <p>미국연방정부 조달규정은</p>
</div>

<ul class="a_sel _answer_area">
    
    <li data-selector="Federal Procurement Regulation’">
        <label class="ick" data-ychecker="quiz">
            <span class="radio checked"><input type="radio" name="answer" value="Federal Procurement Regulation’"></span>
            <span class="ph">Federal Procurement Regulation’</span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
    <li data-selector="Buy American Act">
        <label class="ick" data-ychecker="quiz">
            <span class="radio"><input type="radio" name="answer" value="Buy American Act"></span>
            <span class="ph">Buy American Act</span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
    <li data-selector="Federal Acquisition Regulation">
        <label class="ick" data-ychecker="quiz">
            <span class="radio"><input type="radio" name="answer" value="Federal Acquisition Regulation"></span>
            <span class="ph">Federal Acquisition Regulation</span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
    <li data-selector="Federal Acquisition Law">
        <label class="ick" data-ychecker="quiz">
            <span class="radio"><input type="radio" name="answer" value="Federal Acquisition Law"></span>
            <span class="ph">Federal Acquisition Law</span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
</ul>

<div class="bx type2 _wrap_answer_area" style="display:none;">

</div></div>
		<div class="q_foot">
			
			<button type="button" class="btn btn_type16 prev _btn_prev_question disabled" data-coach="step_4" disabled="disabled"><span>이전</span></button>
			<button type="button" class="btn btn_type16 next _btn_next_question"><span>다음</span></button>
		</div>
	</div>

	<div id="_wrap_empty_question" style="display: none">
		<p class="none">등록된 내용이 없습니다.</p>
	</div>

	<div class="new_boost_btm" style="bottom: 88px;">
		<div class="group_lr">
			
				<div class="group_r">
					
						<div class="submit_cnt">
							제출 횟수 :
							
								<em>0&nbsp;</em>/&nbsp;1
							
						</div>
					
					<button type="button" class="_btn_submit_answer btn btn_type15 clr2" data-coach="step_6" data-quiz-type="test">
						
							제출 하기
						
					</button>
				</div>
			
			<!--페이지네비게이션 : 이전글/다음글/목록보기-->
			
<!-- #breadcrumb:lecture/_pageNavigation.gsp -->

<!--목록URL-->

    



<!--이전 URL/Title -->

    
    
    
        
    


<!--다음 URL/Title -->

    
    
    
        
    


<!--페이지네비게이션 : 이전글/다음글/목록보기-->
<div class="group_l">
    <div class="paginate4">
        <!--[D] 비활성화 될 시 .disable 클래스 추가해 주세요.-->
        <div class="pagin l">
            
                <a href="/procurement/lecture/63431/?isDesc=false" class="btn_prve" data-btn-prev="">
            
                <i class="icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path stroke="#25292F" stroke-width="1.5" d="M16 4l-8 8 8 8"></path>
                    </svg>
                </i>
                <span class="blind">4차시_미국 연방정부 조달 규정(FAR) 계약종류와 방법</span>
            </a>
        </div>
        <div class="pagin r">
            
                <a href="/procurement/lecture/264334/?isDesc=false" class="btn_next" data-btn-next="">
            
                <i class="icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path stroke="#2A2C2F" stroke-width="1.5" d="M8 20l8-8-8-8"></path>
                    </svg>
                </i>
                <span class="blind">교수님 강의에 대한 별점을 매겨주세요. 여러분의 의견이 많은 도움이 됩니다:D</span>
            </a>
        </div>
    </div>
</div>
<!--//페이지네비게이션 -->
			<!--//페이지네비게이션 -->
		</div>
	</div>

	<div class="share">
        
		<div class="group_lr">
			<div class="group_l">
			</div>
		</div>
	</div>

	<!--퀴즈 텍스트-->
	

    <div class="modal_wrap quiz_submit_cfrm" id="_wrap_check_answer" style="display:none;">
	    <div class="modal_inner">
		    <!--애니메이션 영역-->
		    <div class="modal_container" data-md-content="">

		    </div>
		    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
	    </div>
	</div>
</section>

<!-- SRC -->
<!-- <script src="/static/js/vendor/tinymce/tinymce.min.js?231207_3adce7d7"></script>
<script src="/static/js/vendor/tinymce/plugins/textcolor/plugin.min.js?231207_3adce7d7"></script>
<script src="/static/js/vendor/katex/katex.min.js?231207_3adce7d7"></script>
<script src="/static/js/src/entries/quiz/show.entry.browserfied.min.js?231207_3adce7d7"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var entry = require("/entries/quiz/show.entry.js");
		entry.initialize({
			data : {
				userId: "2668417",
				id: "63942",
				course: "procurement",
				isAlwaysOpen: true,
				isRetry: false,
				isShareGuest: false,
				isDesc: false,
                isPeriodEndedTest: false
			}
		});
	});
</script> -->

        </div>
    </div>

    <!-- 개인정보 제3자 제공 동의 모달 -->
    
</div>




</body>
</html>