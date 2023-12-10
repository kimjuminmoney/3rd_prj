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
    
<title>강좌 문의 하기: edwith</title>
   <!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/myCourses.css" type="text/css">
<!-- jQuery CDN시작 -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<style type="text/css">
.card-header1 h1 {
    font-size: 30px;
    font-weight: 600;
}

.card-write {
    padding: 20px;
    
}

.card-write input,
.card-write textarea,
.card-write select,
.card-write option {
    margin-left: 10px;
    padding: 10px;
    border: 1px solid #999;
    border-radius: 10px;
    box-shadow: 3px 3px 10px #e6e6e6;
}
.card-write .myinfo {
    display: flex;
    align-items: center;
}

.card-write .myinfo,.title-w {
    display: flex;
    align-items: center;
}

.card-write .myinfo input[type="text"] {
    width: 25%;
    margin-right: 50px;
    padding-right: 10px;
}
.card-write .myinfo select {
    margin-right: 50px;
}

.card-write .title-w input[type="text"] {
    margin-top: 20px;
    margin-bottom: 20px;
    width: 85.5%;
}

.card-write .msg textarea {
    min-width: 85.5%;
    max-width: 85.5%;
    min-height: 200px;
    max-height: 200px;
    box-shadow: inset 3px 3px 10px #e6e6e6;
    vertical-align: top;
}
.card-write .msg {
	margin-top: 20px;
}

.btn-w {
    margin: 10px 10px 20px 10px;
    padding: 10px;
    display: flex;
    justify-content: center;
    align-items: center; /* 추가: 세로 가운데 정렬을 위해 */
}

.btn-w input {
    background-color: tomato;
    padding: 10px;
    color: #fff;
    border-radius: 10px;
    width: 120px;
    height: 40px;
    font-size: 20px;
    text-align: center;
}
</style>
<script type="text/javascript">
$(function(){
	$("#subBtn").click(function(){
		 var title = $("#citTitle").val();
         var course = $("#couCode").val();
         var inquiryType = $("#citCode").val();
         var content = $("#ciContent").val();

      // 길이 제한 설정
         var maxTitleLength = 100; // 영어 기준 100글자, 한글 기준 50글자
         var maxContentLength = 3000;

         // 특수문자 정규식
         var specialCharactersRegex = /[^a-zA-Z0-9가-힣]/;

         if (title === "" || course === "" || inquiryType === "" || content === "") {
             var errorMessage = "";

             if (title === "") {
                 errorMessage += "제목을 입력하세요.\n";
             } else if (title.length > maxTitleLength || specialCharactersRegex.test(title)) {
                 errorMessage += "제목은 " + maxTitleLength + "자 이내의 영어, 한글, 숫자만 허용됩니다.\n";
             }

             if (course === "") {
                 errorMessage += "강좌를 선택하세요.\n";
             }

             if (inquiryType === "") {
                 errorMessage += "문의유형을 선택하세요.\n";
             }

             if (content === "") {
                 errorMessage += "내용을 입력하세요.\n";
             } else if (content.length > maxContentLength || specialCharactersRegex.test(content)) {
                 errorMessage += "내용은 " + maxContentLength + "자 이내의 영어, 한글, 숫자만 허용됩니다.\n";
             }

             alert(errorMessage);
             return;
         }

         // 유효성 검사가 통과하면 폼을 제출
         $("#frm").submit();
	})
	
	 // select 요소의 값이 변경될 때 호출되는 함수
	$("#couCode").change(function() {
	    // 선택된 option의 data-insId 값을 가져와서 alert로 출력
		var selectedOption = $("#couCode option:selected");
		var insId = selectedOption.attr("data-insId");
		$("#insId").val(insId);
	  });
})
</script>
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
	
    <form id="frm" action="/daitdayoung/user/coursesInquiry_process.do" method="POST">
    <div class="card">
        <div class="card-header1">
            <!-- 게시판을 누를시 첫 페이지인 index.html로 이동 -->
            <h1>문의하기</h1>
        </div>

        <div class="card-write">
            <div class="title-w">
                제목<input type="text" placeholder="제목을 입력하세요." name="ciTitle" id="citTitle">
            </div>
            <div class="myinfo">
                <span>강좌</span>
                <select name="couCode" id="couCode">
                	<option value="" data-insId="">강좌선택</option>
                	<c:forEach var="cou" items="${ couList }">
                	<option value="${ cou.couCode }" data-insId="${ cou.insId }"><c:out value="${ cou.couName }"/>
                	</option>
                	</c:forEach>
                </select>
                	<input type="hidden" name="insId" id="insId">
                <span>문의유형</span>
                <select name="citCode" id="citCode">
                	<option value="">유형선택</option>
                	<c:forEach var="type" items="${ citList }">
                	<option value="${ type.citCode }"><c:out value="${ type.citName }"/></option>
                	</c:forEach>
                </select>
                <!-- <span>날짜</span>
                <input type="text" > -->
            </div>

            <div class="msg">
                <span>내용</span>
                <textarea placeholder="내용을 입력하세요." name="ciContent" id="ciContent"></textarea>
            </div>
        </div>
        <div class="btn-w"><input type="button" value="전송" id="subBtn"></div>
    </div>
        </form>
   
    
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
    </div>
</div>

<!-- FOOTER -->
<jsp:include page="../nav/footer.jsp"></jsp:include>

        </div>
</body>
</html>