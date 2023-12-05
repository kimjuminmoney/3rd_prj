<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 홈페이지 외 페이지 푸터 -->
<html lang="ko" itemscope itemtype="http://schema.org/Article">

    <link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/new_common.css" type="text/css">

    <link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
    
    <meta name="layout" content="index"/>


<body>



<!-- #breadcrumb:common/_footer.gsp -->
<footer id="footer">
    <!-- 메인에서만 노출 -->
    <div class="f_noti">
        <div class="layout_in NE=a:not">
            <strong class="tit">공지사항</strong>
            
                <a href="http://blog.naver.com/edwith" class="dsc NPI=a:notice" target="_blank">공지사항 바로가기</a>
            
            <a href="http://blog.naver.com/edwith" class="more NPI=a:blog" target="_blank">공식 블로그 바로가기</a>
        </div>
    </div>

    
    
    <div class="layout_in NE=a:fot" id="_layer">
        <ul class="f_lst">
            <li><a href="https://blog.naver.com/PostList.nhn?blogId=edwith&amp;from=postList&amp;categoryNo=1&amp;parentCategoryNo=1" data-nclk="foot.service">공지사항</a></li>
            <li><a href="/introduce" class="NPI=a:introduce">서비스 소개</a></li>
            <li><a href="/help/advice-info" class="NPI=a:help">도움말</a></li>
            <li><a href="/voc" class="NPI=a:request">서비스 문의</a></li>
        </ul>
        <dl class="f_terms">
            <dt class="sr_only">edwith 정책 및 이용약관</dt>
            <dd>
                <a href="/rules/intg/service">이용약관</a>
                <span class="bar"></span>
                <a href="/rules/intg/privacy"><strong>개인정보처리방침</strong></a>
            </dd>
        </dl>
        <div class="f_terms_addres_box">
            <ul class="addres_list">
                <li>상호: 재단법인 네이버 커넥트</li>
                <li>소재지: 경기도 성남시 분당구 황새울로 246 도담빌딩 2층</li>
                <li>대표자명 : 조규찬</li>
                <li><a href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1298212249&amp;apv_perm_no=2015378021930200754" class="link" target="_blank">사업자정보확인</a></li>
                <li>사업자 등록번호: 129-82-12249</li>
                <li>통신판매신고 번호: 제2015-경기성남-0754호</li>
                <li>고객센터: support@boostcourse.org</li>
            </ul>
        </div>
        <p class="copyright">
            
                © NAVER Connect All Rights Reserved. Powered by NAVER
            
        </p>
    </div>
    
</footer>

<!-- Build 231130.26709717 -->


<!-- lcs file -->
<script src="https://www.edwith.org/static/lcs-js/lcslog.js?231130_26709717"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_lcs.entry.browserfied.min.js?231130_26709717"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_lcs.entry.js");
        entry.initialize({
            environment: "PRODUCTION",
            useSti: false
        });
    });
</script>
<script src="https://www.edwith.org/static/js/src/entries/footer/index.entry.browserfied.min.js?231130_26709717"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/footer/index.entry.js");
        entry.initialize({
            el : "#_layer",
            isLogin: false,
            isClosedMooc: true,
            hasEmail: false,
            myInfoLink : "http://www.edwith.org/userInfo/base-info"
        });
    });

    function setLanguage(locale){
        setCookie(locale, -1);
        setCookie(locale, 7);
        location.reload();
    }

    function setCookie(value, expireDays) {
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + expireDays);
        document.cookie = "EDWITH_LOCALE="+escape(value)+";expires="+exdate.toUTCString()+";domain=edwith.org;path=/;";
    }
</script>
    



<script src="https://www.edwith.org/static/js/src/entries/layouts/search.entry.browserfied.min.js?231130_26709717"></script>
<script>
    $(function(){
        var entry = require("/entries/layouts/search.entry.js");
        entry.initialize({
            hasSubDomain: false
        });
    })
</script>

<div class="modal_wrap modal_progress" data-selector="progressModal" style="display:none;"><div class="modal_inner"><div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="for bug fix"></iframe></div><div class="modal_container"><div class="modal_content"><div class="upload_progress modal_progress"><div class="inner"><strong data-selector="message">파일을 올리고 있습니다.</strong><span class="wrap"><span class="mask"></span><span data-selector="gageLevel" style="width:0%"></span></span></div></div></div></div></div></div><!-- #breadcrumb:footer/template/footer.modal.container.html -->
<div class="modal_wrap" id="_modal_container" style="display:none;">
    <div class="modal_inner">
        <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
        <div class="modal_container" data-modal-container="" data-md-content=""></div>
    </div>
</div><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div></body></html>