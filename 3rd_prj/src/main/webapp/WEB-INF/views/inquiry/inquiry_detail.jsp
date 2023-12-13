<%@page import="kr.co.daitdayoung.admin.dao.ManageUsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>

<title id="titleJoin">문의상세</title>
<script type="text/javascript" src="https://www.starbucks.co.kr/common/js/esabsbuxkr.js?single"></script> <!-- 220117 수정 -->
<link href="https://www.starbucks.co.kr/common/css/reset.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/style.css?v=230809" rel="stylesheet">


<link href="https://www.starbucks.co.kr/common/css/style_whatsnew.css?after" rel="stylesheet">
</head>
<body style = "background-color: #fff" >

            
<script>
//appId      : '1012019678818238',
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '179159949450639',
      xfbml      : true,
      version    : 'v2.4'
    });
  };

	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "//connect.facebook.net/ko_KR/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
  
</script>
</body>

</head>

<style>
body{
	background-color: #fff
}

.ct_center #container {
	
	width: 1056px;
	margin: 0 auto;
	padding-top: 20px;
	padding-bottom: 0%;
	background-color: #fff;
}

table.pn_content_tb th { 
	padding:15px 0 15px 20px; 
	font-size:14px; 
	color:#222222; 
	background:#fff; 
	text-align:left; 
	border-bottom:1px solid #dddddd; 
}

footer#footer {
	background: #fff;
	clear:both;
	position:relative;
	width:100%;
}

</style>

  
<header>
<jsp:include page="../index_nav/index_in_head.jsp"></jsp:include>
</header>


<div class="sub_tit_wrap">
    <div class="sub_tit_inner">
        <h2 class="heading_sjt">문의사항</h2>
    </div>
</div>


<div id="container" style="background-color: #fff" >

                <!-- 공지사항 view -->
	<div class="wn_cont">
	<section class="notice_veiw_wrap">
						
<header>
<h3 class="inquiry_title"><c:out value= "${ inqDomain.inqTitle }"/> </h3>
</header>

<article class="notice_veiw_info" style="background-color: #f1f1f1">
	<div class="notice_veiw_info_inner" >

	<div>
	<font color="#333333" face="Noto Sans KR, sans-serif">
	<span style="font-size: 10pt; font-family: 돋움, dotum; color: rgb(0, 0, 0);">
	<c:out value= "${ inqDomain.inqContent }"/>
	</span>
	</font>
	</div>

</div>
</article>

		<div class="btn_notice_wrap">
		<p class="btn_notice_list"><a href="inquiry.do">목록</a></p>
		</div>
		
</section>
</div>

		
		<table summary="새소식 윗글, 아랫글" class="pn_content_tb">
			<caption class="hid">새소식 윗글, 아랫글 테이블</caption>
			<colgroup>
				<col width="18.181818%">
				<col width="89.818182%">
			</colgroup>
			
			<tbody id="next">
				
			<tr>
			<th class="fth" scope="row" id="next_title">윗글</th>
			<td class="ftd">
			<a href="javascript:void(0)">해당글이 없습니다.</a>
			</td>
			</tr>

			<tr>
			<th class="lth" scope="row" id="prev_title">아랫글</th>
			<td class="ltd">
			<a href="noticeView.do?seq=5217">시스템 개선 및 서비스 점검 안내</a>
			</td>
			</tr>
			</tbody>
		</table>
		


</div>
	
	
<footer class="bg-dark py-4 mt-auto">
<jsp:include page="../index_nav/index_in_foot.jsp"></jsp:include>
</footer>

</body>
</html>

	