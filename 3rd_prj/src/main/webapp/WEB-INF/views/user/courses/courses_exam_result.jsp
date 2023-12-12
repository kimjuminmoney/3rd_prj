<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="   " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>
    <!-- #breadcrumb:boostcourse/common/_head.gsp -->
<meta charset="utf-8">

<link rel="shortcut icon" type="https://ssl.pstatic.net/static/m/mooc/edwithmage/x-icon" href="https://ssl.pstatic.net/static/m/mooc/p/partner/next/favicon.ico">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/plugin.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/boostcourse_common.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/edwith.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/nanumsquare_webfont.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/prism.css" type="text/css">
<link rel="stylesheet" href="https://ssl.pstatic.net/static/connectfdn/edwith/RB.23.10.31.0/css/code_editor/codemirror.css" type="text/css">
<script src="https://www.edwith.org/static/js/vendor/html5shiv/dist/html5shiv.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/vendor/respond/dest/respond.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/plugins/nclktag.js?231109_47a067d4"></script>
<!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses.css" type="text/css">
<!-- courses_notice_table css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/courses_notice_table.css" type="text/css">

        <title>강의실 성적조회 : edwith </title>
<!-- jQuery CDN시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        
</head>
<body class="re_pack win chrome chrome119">

<script src="https://www.edwith.org/static/js/vendor/vendor.compressed.min.js?231109_47a067d4"></script>
<script src="https://www.edwith.org/static/js/src/entries/common/_head.entry.browserfied.min.js?231109_47a067d4"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script src="https://vliveplus.pstatic.net/0/mobile/2020/04/standby/f1.1.0.8.js"></script>
<div id="wrap">
<jsp:include page="../nav/header_courses.jsp"></jsp:include>
    
<div id="container">

<!-- nav -->
<jsp:include page="../nav/nav_courses.jsp"></jsp:include>
<!-- nav -->

	<div id="content">
	<section class="page gradecheck">
	
	<!--//page_header-->
<header class="page_header">
	<div class="group_lr">
		<div class="group_l">
			<h1 class="page_title">성적조회</h1>
		</div>
	</div>
</header>
<p class="notice_txt">이 강좌를 수료하시려면 진도율 <em>100</em>%이상을 획득하셔야 합니다.</p>
<div class="progress_rate">
      <div class="progress_area">
          <strong class="title">진도율</strong>
          <div class="graph_area">
              <span class="standard" style="left: 100%"></span>
              <span class="rate" style="width: 100%"></span>
          </div>
          <strong class="txt">0%</strong>
      </div>
</div>
<div class="grade_overall">
        <div class="group_lr mab10">
            <div class="group_l">
                <h2 class="tit">종합 성적</h2>
            </div>
        </div>
        <!-- [D] 수강생 강좌 진행 중 -->
        <table class="table table_type5 stretch fixed">
            <caption><span class="sr_only">종합 성적</span>
            </caption>
            <colgroup>
                <col width="115">
                <col>
                <col width="115">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th scope="row" class="ta_c">수료여부</th>
                <td class="ta_c">
                    <span class="grade_txt">
                            -
                    </span>
                </td>
                <th scope="row" class="ta_c">
                        진도율
                </th>
                <td class="ta_c">
                    <span class="grade_txt">
                            0%
                    </span>
                </td>
            </tr>
            </tbody>
        </table>
        
    </div>
</section>

</div>
<!-- footer -->     
<jsp:include page="../nav/footer_courses.jsp"></jsp:include>   
<!-- footer -->        
</div>
</div>
</body>
</html>