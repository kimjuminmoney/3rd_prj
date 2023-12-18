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
    
<title>시험결과: </title>
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
                    <span class="name"><c:out value="${ ucDomain.uiName }"/></span>
                    </div>
    
            </div>
        </div>
    </div>
<div id="snb" class="default ">

<nav class="nav_menu">
    <h2 class="sr_only">하위 메뉴</h2>
    <input type="hidden" id="maxSize" value="${ maxSize }"/>
    
    <form id="answerFrm" action="userExamProcess.do" method="POST">
    <input type="hidden" name="epCode" value="${ ucDomain.epCode }"/>
    <input type="hidden" name="crgCode" value="${ ucDomain.crgCode }"/>
    <input type="hidden" name="couCode" value="${ ucDomain.couCode }"/>
    <input type="hidden" name="insId" value="${ ucDomain.insId }"/>
    <input type="hidden" name="examCode" value="${ ucDomain.examCode }"/>
    <input type="hidden" name="examStatus" value="${ ucDomain.examStatus }"/>
    <input type="hidden" name="reExam" value="${ ucDomain.reExam }"/>
    
    <table id="customers" class="forum_list_new bdnone table">
    <thead>
		<tr>
			<th>번호</th><th>선택</th><th>정답</th>
		</tr>    
    </thead>
    <tbody>
    	<c:forEach var="uad" items="${ uadList }" varStatus="i">
    	<tr class="clickable-tr" style="cursor: pointer;">
			<td>
			<c:out value="${ i.count }"/><input type="hidden" class="hidden-value" value="${ uad.queCode }" name="queCodeArr"/>
			<input type="hidden" class="hidden-ind" value="${ i.count }"/>
			<input type="hidden" name="asSelectedArr"/>
			</td>
			<td class="answer" ><c:out value="${ uad.asSelected }"></c:out></td>
			<td class= ><c:out value="${ uad.correct }"></c:out></td>
		</tr>
		</c:forEach>
    </tbody>
    </table>
		</form>
        </nav>
        </div>
    
</div>
<div id="content">
            

<!-- 시험문제구간 -->
<section class="page quiz" id="_wrap_quiz_area">
	<header class="page_header">
        <div class="group_lr mab10">
			<div class="group_r">
			</div>
            <div style="display: flex; justify-content: space-between;height: 90px;">
			    <div style="font-size: 50px; order: 1;">시험</div>
			    <div style="order: 2; display: flex; align-items: center;">
			    <div style="font-size: 30px;"></div>
			    <div id="timer"><div id="MyTimer"><c:out value="${ examScore }"/>점</div></div>
			    </div>
			</div>
        </div>
	</header>

	<div id="_wrap_quiz_content" style="" class="quiz_add_wrap">
<script type="text/javascript">
// JavaScript로 클릭 이벤트 처리
$(document).ready(function () {
	first()
	function first(){
		// 페이지가 로드될 때 첫 번째 clickable-tr의 값을 가져오기
	    var firstTr = $('.clickable-tr').first();
	    var hiddenValue = firstTr.find('.hidden-value').val();
	    var hiddenInd = firstTr.find('.hidden-ind').val();
	    queAjax(hiddenValue, hiddenInd);
	    
		 // 첫 번째 tr의 hidden-value 값을 가져와서 belowHid에 설정
	    var firstHiddenValue = $(".clickable-tr:eq(1) .hidden-value").val();
	    prc(firstTr) 
	    $("#belowHid").val(firstHiddenValue);
	}
	
		// 네비바 tr을 누를떄마다 문제 갱신
	   	// 클릭한 행에서 hidden-value 클래스를 가진 input 요소를 찾아 값을 가져옴
	   $('.clickable-tr').click(function () {
		   prc(this);
	   });
		
	   function prc(thisis){
	    var hiddenValue = $(thisis).find('.hidden-value').val();
	    var hiddenInd = $(thisis).find('.hidden-ind').val();
	
	    // 선택된 tr의 위에 있는 tr의 hidden-value 값 가져오기
	    var hiddenValueAbove = $(thisis).prev('.clickable-tr').find('.hidden-value').val() || 0;
	
	    // 선택된 tr의 아래에 있는 tr의 hidden-value 값 가져오기
	    var hiddenValueBelow = $(thisis).next('.clickable-tr').find('.hidden-value').val() || 0;
	    
	 	// 현재 tr의 class=answer 값을 가져오기
	    var answerValue = $(thisis).find('.answer').text(); // 이 부분은 td에 값이 텍스트로 들어있는 경우

	    // 현재 선택된 answerValue와 동일한 name="answer"를 가진 라디오 버튼에 checked 클래스 추가
	    $('input[name="answer"][value="' + answerValue + '"]').closest('.radio').addClass('checked');
	    
	 	// 다른 라디오 버튼에서 checked 클래스 모두 제거
	    $('.radio').not(':has(input[name="answer"][value="' + answerValue + '"])').removeClass('checked');

	    
	    // 알터로 값 표시
	    //alert("Selected: " + hiddenValue + "\nAbove: " + hiddenValueAbove + "\nBelow: " + hiddenValueBelow + "\nAnswer: " + answerValue);
	    // 나머지 로직 수행
	    queAjax(hiddenValue, hiddenInd);
	    
	    // 다음, 이전버튼 히든 값 넣기
	    var aboveHid = $("#aboveHid");
	    aboveHid.val(hiddenValueAbove);
	    var belowHid = $("#belowHid");
	    belowHid.val(hiddenValueBelow);
	
	 // 버튼에 히든 인풋 추가 및 클래스 동적 변경
	    $('#above').prop('disabled', hiddenValueAbove === 0).toggleClass('disabled', hiddenValueAbove === 0);
	    $('#below').prop('disabled', hiddenValueBelow === 0).toggleClass('disabled', hiddenValueBelow === 0);
	};
	
	// 이전 버튼 클릭 이벤트
	   $("#above").click(function(){
	       var aboveHid = $("#aboveHid");
	       var ind = $("#ind");
	       var currentIndex = parseInt(ind.text());
	
	       if (currentIndex > 1) {
	    	   var selectedValue = aboveHid.val();
		        var selectedRow = $('.hidden-value[value="' + selectedValue + '"]').closest('.clickable-tr');
		        prc(selectedRow)
	       } else {
	    	   alert("이전 버튼이 작동하지 않습니다. 현재 페이지가 마지막 페이지입니다.");
	    	   //동작안함
	       }
	   });

	
	   $("#below").click(function () {
		    var belowHid = $("#belowHid");
		    var ind = $("#ind");
		    var currentIndex = parseInt(ind.text());
		    var maxSize = parseInt($("#maxSize").val());
		    if (currentIndex < maxSize + 1) {
		        var selectedValue = belowHid.val();
		        var selectedRow = $('.hidden-value[value="' + selectedValue + '"]').closest('.clickable-tr');
		        prc(selectedRow);
		    } else {
		        alert("다음 버튼이 작동하지 않습니다. 현재 페이지가 마지막 페이지입니다.");
		    }
		});


    function queAjax(hiddenValue, hiddenInd){
		var param = {queCode: hiddenValue,
					epCode: "${ param.epCode}"};
			$.ajax({
				url:"userResultProcess.do",
				type:"POST",
				data: param,
				dataType:"json",
				error:function(xhr){
					alert(xhr.status);
				},
				success:function(jsonObj){
					
					var ind = $("#ind");
					var hidInd = $("#hidInd");
					var content = $('#queContent');
					var que1 = $('#que1');
					var que2 = $('#que2');
					var que3 = $('#que3');
					var que4 = $('#que4');
					
					ind.text(hiddenInd);
					hidInd.val(hiddenInd);
					content.text(jsonObj.content);
					que1.text(jsonObj.que1);
					que2.text(jsonObj.que2);
					que3.text(jsonObj.que3);
					que4.text(jsonObj.que4);
				}//success
				
			});//ajax
    }
});

</script>


<div id="_wrap_question_area" class="q_body mal30 mar30" data-coach="step_3"><!--  #breadcrumb:quiz/question.view/template/question.view.multichoice.html-->
<p class="q_txt">
    <span class="l" id="ind">
    0
    </span>
    번 문제
</p>

<div class="editor_reset _question_area">
    <p id="queContent"></p>
</div>

<input type="hidden" value="0" id="hidInd"/>
<ul class="a_sel _answer_area">
    
    <li data-selector="Federal Procurement Regulation’">
        <label class="ick" data-ychecker="quiz">
            <span class="radio"><input type="hidden" name="answer" value="1"></span>
            <span class="ph" id="que1"></span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
    <li data-selector="Buy American Act">
        <label class="ick" data-ychecker="quiz">
            <span class="radio"><input type="hidden" name="answer" value="2"></span>
            <span class="ph" id="que2"></span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
    <li data-selector="Federal Acquisition Regulation">
        <label class="ick" data-ychecker="quiz">
            <span class="radio"><input type="hidden" name="answer" value="3"></span>
            <span class="ph" id="que3"></span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
    <li data-selector="Federal Acquisition Law">
        <label class="ick" data-ychecker="quiz">
            <span class="radio"><input type="hidden" name="answer" value="4"></span>
            <span class="ph" id="que4"></span>
        </label>
        <!--<em class="_feedback" style="display: none;">(정답에 대한 피드백이 출력됩니다.)</em>-->
    </li>
    
</ul>
<script>
    $(document).ready(function () {
	    //시험제출하기
	    $("#subBtn").click(function(){
	    	location.href="courses_exam_result.do?crgcode=${ param.crgCode }&couCode=${ param.couCode}&epCode=${ param.epCode}"
	    })
    });
    
</script>
<div class="bx type2 _wrap_answer_area" style="display:none;">

</div></div>
		<div class="q_foot">
			
			<input type="hidden" value="" id="aboveHid"/>
			<button type="button" class="btn btn_type16 prev _btn_prev_question disabled" id="above">
			<span>이전</span>
			</button>
			
			<input type="hidden" value="" id="belowHid"/>
			<button type="button" class="btn btn_type16 next _btn_next_question" id="below">
			<span>다음</span>
			</button>
		</div>
	</div>

	<div class="new_boost_btm" style="bottom: 88px;">
		<div class="group_lr">
			<div class="group_r">
				<input type="button" id="subBtn"class="_btn_submit_answer btn btn_type15 clr2" value="이전으로" data-coach="step_6" data-quiz-type="test">
			</div>
		</div>
	</div>
</section>
        </div>
    </div>
    
</div>
</body>
</html>