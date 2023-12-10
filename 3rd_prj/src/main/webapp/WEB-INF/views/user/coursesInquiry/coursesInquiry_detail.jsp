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
    width: 20%;
    margin-right: 20px;
    padding-right: 10px;
}
.card-write .myinfo select {
    margin-right: 50px;
}

.card-write .title-w input[type="text"] {
    margin-top: 10px;
    margin-bottom: 10px;
    width: 85.5%;
}

.card-write .msg textarea {
    min-width: 85.5%;
    max-width: 85.5%;
    min-height: 180px;
    max-height: 180px;
    box-shadow: inset 3px 3px 10px #e6e6e6;
    vertical-align: top;
}
.card-write .msg {
	margin-top: 10px;
	margin-bottom: 10px;
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
	$("#subBtn").on("click", function() {
	      // 뒤로 가기
	      window.history.back();
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

            
<div class="content"style="padding-bottom: 40px;">
<div class="page">
	
    <div class="card">
        <div class="card-header1">
            <h1>문의하기</h1>
        </div>

        <div class="card-write">
            <div class="title-w">
                제목<input type="text" value="${ uciDomain.ciTitle }"  readonly="readonly">
            </div>
            <div class="myinfo">
                <span>강좌</span>
                <input type="text" value="${ uciDomain.couName }"  readonly="readonly">
                <span>문의유형</span>
                <input type="text" value="${ uciDomain.citName }"  readonly="readonly">
                <span>날짜</span>
                <input type="text" value="${ uciDomain.ciDate }"  readonly="readonly">
            </div>

            <div class="msg">
                <span>내용</span>
                <textarea readonly="readonly"><c:out value="${ uciDomain.ciContent }"/></textarea>
            </div>
            <c:if test="${ not empty uciDomain.ciAnswer }">
            <div class="myinfo">
                <span>강사</span>
                <input type="text" value="${ uciDomain.insName }"  readonly="readonly">
                <span>답변 날짜</span>
                <input type="text" value="${ uciDomain.ciAnswerdate }"  readonly="readonly">
            </div>
            <div class="msg">
                <span>답변</span>
                <textarea readonly="readonly"><c:out value="${ uciDomain.ciAnswer }"/></textarea>
            </div>
            </c:if>
            <c:if test="${ empty uciDomain.ciAnswer }">
            <div class="myinfo">
                <span>강사</span>
                <input type="text" value=""  readonly="readonly">
                <span>답변 날짜</span>
                <input type="text" value=""  readonly="readonly">
            </div>
            <div class="msg">
                <span>답변</span>
                <textarea readonly="readonly">답변을 준비하고있습니다.</textarea>
            </div>
            </c:if>
        </div>
        <div class="btn-w"><input type="button" value="목록" id="subBtn"></div>
    </div>
   
    
<!-- <div class="share">
페이지네비게이션 : 이전글/다음글/목록보기
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
</div> -->
</div>        
</div>
</div>
</div>

<!-- FOOTER -->
<jsp:include page="../nav/footer.jsp"></jsp:include>

</body>
</html>