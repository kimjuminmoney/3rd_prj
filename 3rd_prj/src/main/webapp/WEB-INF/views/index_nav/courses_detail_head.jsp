<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>

<header id="header" class="edwith">
            <div class="layout_in" data-wrap-gnb-menu>
    
    <h1 class="logo">
        <a class="N=a:gnb.edwith" href="/">
            <img height="" src="https://ssl.pstatic.net/static/m/mooc/p/partner/next/logo_v4.png?_=?231109_47a067d4"
                 
                 alt="edwith">
        </a>
    </h1>



<ul class="lnk">
    
        <li><a href="/search/index">공개강좌</a></li>
    
</ul>
<ul class="gnb ly_type2" id="gnb">

    
    <!-- #breadcrumb:/common/_loginbox.gsp -->


<li>
    
        <a href="javascript:doLogin()" class="login N=a:gnb.login">로그인 / 회원가입</a>
    
</li>
    <script>
        function doLogin(){
            var returnUrl = location.href.substring(location.href.indexOf(location.host)+location.host.length);
            if(location.pathname == "/login"){
                location.href = "/login" + location.search;
            }else {
                if (returnUrl == "/" || returnUrl == "" || "course" == "error" || "course" == "neoid") {
                    returnUrl = "";
                } else {
                    returnUrl = "?returnUrl=" + returnUrl;
                }
                location.href = "/login" + returnUrl;
            }
        }
    </script>


</ul>


<input type="hidden" id="__isLogged" value="">


    

<script src="https://www.edwith.org/static/js/src/entries/common/_gnbmenu.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function() {
        var entry = require("/entries/common/_gnbmenu.entry.js");
        entry.initialize({
            isLogged : $.trim( $("#__isLogged").val() ) === "" ? false : true,
            isClosedPartner : false,
            courseId: '67376',
            userId: '',
        });
    });
</script>

<style>
.boost_course_main_body.le_info .inc_sub .sub_box .summary span+span::before {
    background-color:#00AB50;
}
.boost_course_main_body.le_info .inc_sub .sub_box .summary .em {
    color:#00AB50;
}
.boost_course_main_body.le_info .lnb #snb .count_info {
    color:#00AB50;
}
.boost_course_main_body.le_info #snb .state_area .info em {
    color:#00AB50;
}
/*추가된 파트너 컬러 적용 style*/
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .ico_bx {
    background-color:#00AB50;
}
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .list_title em {
    color:#00AB50;
}
#header .gnb.ly_type2 .ly_dropdown .ly_top+.scroll_wrap ul li .info em {
    color:#00AB50;
}
body#content .page_header .reverse_wrap .ick .checkbox.checked,
#snb .privacy_area .agree_area input[type="checkbox"]:checked + .checkbox_label .check_icon {
    background-color:#00AB50;
}
.class_manager .slc_area .add_top_wrap .ick .checkbox.checked {
    background-color:#00AB50;
}


</style>

</div>

</header>

</head>
</html>