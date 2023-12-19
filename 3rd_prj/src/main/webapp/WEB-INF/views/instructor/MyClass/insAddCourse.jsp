<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- jQuery CDN 끝 -->
 <style type="text/css">
   
 </style>
 <script type="text/javascript">
 $(function(){
	 $("#mcCode").change(function(){
		var param={ mcCode : $("#mcCode").val()	};
		 
		 var sel=$("#mcCode")[0]
			if( sel.selectedIndex == 0 ){
				return;
			}//end if

			$.ajax({
			 url:"subcategory.do",
			 type:"post",
			 data:param,
			 dataType:"json",
			 error:function(xhr){
				 alert(xhr.status)
			 },
			 success:function( jsonObj ){
				var scCode=$("#scCode")[0];
				scCode.length=1;//옵션을 한개만 남겨둠

				$.each(jsonObj.data, function(ind, json){
			 		scCode.options[ind+1]=new Option(json.scName,json.scCode)
			 	});//each
				
			 }//success
		 })//ajax
	 });//change
	 
	  $("#next_btn").click(function(){
		/*   if(){
			return;  
		  }
		   */
		var objFrm=$("#courseVO")[0];
		objFrm.action="insAddCourse2.do";
		objFrm.method="post";
		objFrm.submit();
		
	 });//click 
	 
	 
	 
 });//ready
 </script>
    <jsp:include page="../common/jsp/instructor_script.jsp"/>
</head>
<body>

<!-- #breadcrumb:whaleclass/main/index.gsp -->
<div class="modal_wrap whale_look" id="_modal_wrap" style="display:none; z-index: 10000">
    <!--애니메이션 영역-->
    <div class="modal_container" data-md-content></div>
    <div class="modal_dimmed"><iframe frameborder="0" src="about:blank" title="버그픽스용"></iframe></div>
</div>
<input type="hidden" name="partnerUrl" value="https://www.edwith.org/">
<input type="hidden" id="__isLogged" value="org.nhnnext.mooc.user.SecUser : 2674262">

<body class="win chrome chrome119 re_pack new_color edwith">
    <div class="wrap">
        <!-- container -->
        <div class="container new_layout ">
            <!-- HEADER -->
            
<!-- #breadcrumb:common/_whaleclass_header.gsp -->
<header id="header" class="default_ly2 ">
   <jsp:include page="../common/jsp/header.jsp"/>
</header>

            <!-- [D] 모바일에서 snb 딤드 노출시 class open 추가해주세요
				딤드 노출시 html, body에 style="overflow:hidden" 추가해주세요 -->
            <span class="snb_dimed" id="snb_dimed"></span>

            <!--SNB-->
            
<!-- #breadcrumb:common/_whaleclass_snb.gsp -->
            
<div class="content">
    <div class="page">
        <div class="main_top b_none" data-main-top>
            <button type="button" id="test" class="btn_gnb" data-gnb-on-btn><span class="blind">메뉴 펼치기</span></button>
            <!-- my_btn_area  mo ~ 1279px 에 노출 -->
            <div class="my_btn_area">
                <a href="#" class="btn_my" data-my-btn>
                    <img src="" width="32" height="32" alt="" class="my_thumb" style="display: none" data-profile-btn-image>
                </a>
                <div class="badge_box" style="display: none" data-badge-box>
                    <span class="blind">알림</span><em class="badge_new" data-badge-box-count></em>
                </div>
            </div>
            <h1 class="tit_home" >강좌 신청</h1>
            </div>
        </div>
<jsp:include page="../common/jsp/nav_bar.jsp"/>

<div class="course_group course_join" data-course-group>
    <div class="course_lst class_area">
            <ul data-course-card-ul>
        		<li>
        			<div id="wrap" style="margin-left:5%">
        			<form action="#void" id="courseVO" name="courseVO">
						<div>
	        				<label style="font-size:20px; text-align:center;"><strong>강좌 명</strong></label><input type="text" class="input_txt" id="couName" name="couName" style="width:60%; height:25px; font-size:16px; margin-left:5%;">
						</div>
						<div>
							<label style="font-size:20px; text-align:center;"><strong>배너이미지 등록</strong></label>
	        				<input type="file" id="bannerImg" name="baanerImg" class="input_txt" enctype="multipart/form-data" style="width:60%; height:36px; font-size:16px; margin-left:5%;">
						</div>
        				<div style="weight:100%; height:5%;"></div>
        				<div>
        					<label style="font-size:20px; text-align:center;"><strong>분류 선택</strong></label>
	        				<select id="mcCode" name="mcCode" style="width:40%; height:30%; margin-left:5%;">
	        					<option> ----대분류 선택</option>
	        					<c:forEach var="mc" items="${ mcList }" varStatus="i" >
	        					<option value="${ mc.mcCode}"><c:out value="${ mc.mcName }"/></option>
	        					</c:forEach>
	        				</select>
	        				<select id="scCode" name="scCode">
	        					<option> ----소분류 선택</option>
	        				</select>
        				</div>
        				<div>
        					<label style="font-size:20px; text-align:center;"><strong>기한 설정</strong></label>
        					<input type="text" name="couPeriod" class="input_txt" style="width:60%; height:36px; font-size:16px; margin-left:5%;">
        				</div>
        				<div>
        					<label style="font-size:20px; text-align:center;"><strong>수료 조건</strong></label><br/>
	        				<div>
	        					<label style="font-size:17px; text-align:center;"><strong>진도율</strong></label><input type="text" class="input_txt" name="enrollRate" style="width:30%; height:36px; font-size:16px; margin-left:5%;"><br/>
	        					<label style="font-size:17px; text-align:center;"><strong>시험</strong></label><input type="text" class="input_txt" name="examResult" style="width:30%; height:36px; font-size:16px; margin-left:5%;"><br/>
	        				</div>
        					<div style="weight:100%; height:5%;;"></div>
						</div>
        				<label style="font-size:20px; text-align:center;"><strong>과목 설명</strong></label>
        				<textarea style="width:100%; height: 30%;" name="content"></textarea>
        				<div style="weight:100%; height:5%;;"></div>
        				
        				<label style="font-size:20px; text-align:center;"><strong>샘플 영상 등록</strong></label>
        				<input type="file" id="sampleVideo" name="sampleVideo" class="input_txt" enctype="multipart/form-data" style="width:60%; height:36px; font-size:16px; margin-left:5%;">
        					<div style="weight:100%; height:5%;;"></div>
        				</form>
        					
        					<input type="button" class="btn btn-info btn-lg" value="다음으로" id="next_btn" name="next_btn"/>
        				
        			</div>
        		</li>
        		
        	</ul>
    </div>
</div>
        
            <!-- paginate -->
            <nav class="paginate" role="navigation"><div class="inner"><a href="#" class="pre" onclick="return false;">이전</a><ul class="page_list"><li><a href="/myPage/home?searchType=&amp;searchText=&amp;sortType=REG&amp;offset=0&amp;max=20" sort="regYmdt" order="desc" class="selected">1</a></li></ul><a href="#" class="next" onclick="return false;">다음</a></div></nav>
            
        
    </div>


<!-- lcs file -->
<script src="/static/lcs-js/lcslog.js?231109_47a067d4"></script>
<script src="/static/js/src/entries/common/_lcs.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var entry = require("/entries/common/_lcs.entry.js");
        entry.initialize({
            environment: "PRODUCTION",
            useSti: true // 반응형 페이지일경우 PC/모바일 구분 플래그로 sti 사용
        });
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mobile-detect/1.4.5/mobile-detect.min.js?231109_47a067d4"></script>
<script>
    $(document).ready(function(){
        var md = new MobileDetect(window.navigator.userAgent);
        if (md.tablet()) {
            $("body").removeClass("view_mobile");
            $("body").addClass("view_tablet");
            return;
        } else if (md.mobile()) {
            $("body").addClass("view_mobile");
        }
    });
</script>

<script src="/static/js/src/entries/whaleclass/main/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(function(){
        var entry = require("/entries/whaleclass/main/index.entry.js");
        entry.initialize({
            searchType: "all"
        });
    });
</script>
<style>
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a,
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .list_title em,
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .info em,
    .re_pack .class_area .class_card > li .todo_list strong,
    .re_pack .tab_area .tab_list li[aria-selected="true"] a,
    .re_pack .class_area .class_card > li .lk_guide .ly_guide em,
    .re_pack .content .paginate a.selected,
    .re_pack .class_area .finish_guide a.btn_certificate,
    .re_pack.edwith .course_join .course_lst .desc_area .complete_info .info_standard dl dd em {
        color:#00AB50;
    }
    .re_pack .class_area .finish_guide a.btn_certificate {
        border-color:#00AB50;
    }
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a i svg path:first-child,
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a i svg rect:first-child{
        fill:#00AB50;
    }
    .re_pack .snb_wrap .snb .menu_area li[aria-selected="true"] a:after,
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .ico_bx,
    .re_pack .main_top .btn_area .btn_type,
    .re_pack .class_area .class_card > li .bar_full .value,
    .re_pack .tab_area .tab_list li[aria-selected="true"]:after,
    .re_pack .class_area .class_card > li .class_info .btn_live:before,
    .re_pack .class_area .class_none .noti_wrap .btn_apply,
    .re_pack.edwith .course_lst .info_btns .btn_whaleclass .icon_video,
    .re_pack.edwith .btn.btn_type6,
    .course_lst .ly_prof_area .ly_prof .tab .ick .radio.checked,
    .edwith .ick .checkbox.checked {
        background-color:#00AB50;
    }
    .re_pack #header .gnb.ly_type2 .ly_dropdown .ly_top + ul li .read {
        background-color:#ccd1d0;
    }
    .class_area .edit_box input[type=checkbox]:checked + .chk_submit:before {
        background-color:#00AB50;
    }
    .re_pack .course_lst > ul > li .status,
    .course_lst .info_lec > ul > li .progress .progress_bar,
    .re_pack .project_list li.pass .pj_state::before {
        background-color: #00AB50;
    }
    .course_lst .done_lst li strong.yellow {
        color:#00AB50;
    }
    input[type=checkbox]:checked + .chk_submit:before {
        background-color:#00AB50;
    }
    .new_layout .class_area .class_card .study_wrap .todo_info_box .my_todo_list li .inner strong {
        color: #00AB50;
    }
</style>


            <!-- FOOTER -->
            
<!-- #breadcrumb:common/_whaleclass_footer.gsp -->

    <div class="footer whale_main">
        <div class="f_inner">
            <p class="copyright">ⓒ NAVER Connect Foundation</p>
            <div class="f_menu">
                <ul>
                    <li class="menu"><a href="/help/advice-info">도움말</a></li>
                    <li class="menu"><a href="/voc">문의</a></li>
                    <li class="menu"><a href="/rules/intg/service">이용약관</a></li>
                    <li class="menu"><a href="/rules/intg/privacy"><em>개인정보처리방침</em></a></li>
                </ul>
            </div>
            
                <button type="button" class="btn_logout"><a href="/logout">로그아웃</a></button>
            
        </div>
    </div>


	<!-- Build 231109.47a067d4 -->
	
	<!-- lcs file -->
	<script src="/static/lcs-js/lcslog.js?231109_47a067d4"></script>
	<script src="/static/js/src/entries/footer/index.entry.browserfied.min.js?231109_47a067d4"></script>
	<script>
	    $(document).ready(function(){
	    });
	</script>
    </div>
  </div>
</body>
</html>

