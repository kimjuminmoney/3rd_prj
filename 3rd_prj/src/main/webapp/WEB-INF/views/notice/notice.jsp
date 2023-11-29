<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" itemscope itemtype="http://schema.org/Article">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type"		content="website">
<meta property="og:title"		content="Starbucks">
<meta property="og:url"			content="https://www.starbucks.co.kr/">
<meta property="og:image"		content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">공지사항</title><script type="text/javascript" src="https://www.starbucks.co.kr/common/js/esabsbuxkr.js?single"></script> <!-- 220117 수정 -->
<link href="https://www.starbucks.co.kr/common/css/reset.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/style.css?v=230809" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery.bxslider.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/idangerous.swiper.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/jquery-ui.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/ezmark.css" rel="stylesheet">
<link href="https://www.starbucks.co.kr/common/css/style_dt.css?v=20230320" rel="stylesheet"> <!-- 20230206 수정 -->
    
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66158138-1', 'auto');
  ga('send', 'pageview');
</script>

<script type="text/javascript">
var eFrequencyYn = 'Y';
var eFrequencySeq = '220';
var eFrequencyPlannerYn = 'Y';
</script>

<link href="https://www.starbucks.co.kr/common/css/style_whatsnew.css?v=20220221" rel="stylesheet">
</head>
<body>
            
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

<body class="w1080 ct_center win chrome chrome119 next">

  
<header>
<jsp:include page="../index_nav/index_in_head.jsp"></jsp:include>
</header>


<div class="sub_tit_wrap">
	<div class="sub_tit_inner">
	<h2>공지사항</h2>
	</div>
</div>

<div id="container">
                <!-- 공지사항 -->
				<!-- <div class="news_sch_wrap">
                	<p><input type="text" name="sch_bar" id="sch_bar" placeholder="검색어를 입력해 주세요."> <a href="javascript:void(0)" class="newBoardSearchBtn">검색</a></p>
                </div>        -->       
                <div class="notice_wrap">
                	
                	<div class="news_sch_wrap">
	                	<p><label for="sch_bar" class="a11y">검색어</label><!-- 접근성_20171123 label 추가 --><input type="text" name="sch_bar" id="sch_bar" placeholder="검색어를 입력해 주세요."> <a href="javascript:void(0)" class="newBoardSearchBtn">검색</a></p>
	                </div>
	                
                    <table summary="공지사항" class="notice_tb">
                        <caption class="hid">공지사항 번호, 제목, 날짜, 조회수 테이블</caption>
                        <colgroup>
                            <col width="5.45454%">
                            <col width="74.5454%">
                            <col width="10.90909%">
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">NO</th>
                                <th scope="col">제목</th>
                                <th scope="col">날짜</th>
                                <th scope="col">조회수</th>
                            </tr>
                        </thead>
                        <tbody id="notice"><tr>     <td>492</td>     <td class="left"><a href="https://www.starbucks.co.kr/whats_new/noticeView.do?seq=5221">시스템 개선 및 서비스 점검 안내</a></td>     <td>2023-11-27</td>     <td>539</td> </tr><tr>     <td>491</td>     <td class="left"><a href="noticeView.do?seq=5217">시스템 개선 및 서비스 점검 안내</a></td>     <td>2023-11-23</td>     <td>1210</td> </tr><tr>     <td>490</td>     <td class="left"><a href="noticeView.do?seq=5216">시스템 개선 및 서비스 점검 안내</a></td>     <td>2023-11-23</td>     <td>1564</td> </tr><tr>     <td>489</td>     <td class="left"><a href="noticeView.do?seq=5207">시스템 개선 및 서비스 점검 안내</a></td>     <td>2023-11-18</td>     <td>1441</td> </tr><tr>     <td>488</td>     <td class="left"><a href="noticeView.do?seq=5205">스타벅스 카드 이용약관 개정 안내</a></td>     <td>2023-11-16</td>     <td>2195</td> </tr><tr>     <td>487</td>     <td class="left"><a href="noticeView.do?seq=5200">개인정보 처리방침 개정안내</a></td>     <td>2023-11-14</td>     <td>987</td> </tr><tr>     <td>486</td>     <td class="left"><a href="noticeView.do?seq=5199">시스템 개선 및 서비스 점검 안내</a></td>     <td>2023-11-14</td>     <td>966</td> </tr><tr>     <td>485</td>     <td class="left"><a href="noticeView.do?seq=5195">My DT Pass 서비스 이용약관 개정 안내</a></td>     <td>2023-11-09</td>     <td>4177</td> </tr><tr>     <td>484</td>     <td class="left"><a href="noticeView.do?seq=5190">시스템 개선 및 서비스 점검 안내</a></td>     <td>2023-11-06</td>     <td>983</td> </tr><tr>     <td>483</td>     <td class="left"><a href="noticeView.do?seq=5172">시스템 개선 및 서비스 점검 안내</a></td>     <td>2023-10-31</td>     <td>1593</td> </tr></tbody>
                    </table>
                    <ul class="m_notice_list" id="m_notice_list"><li class="first"> <ul> <li><a href="https://www.starbucks.co.kr/whats_new/noticeView.do?seq=5221">시스템 개선 및 서비스 점검 안내</a></li> <li class="date">2023-11-27</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5217">시스템 개선 및 서비스 점검 안내</a></li> <li class="date">2023-11-23</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5216">시스템 개선 및 서비스 점검 안내</a></li> <li class="date">2023-11-23</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5207">시스템 개선 및 서비스 점검 안내</a></li> <li class="date">2023-11-18</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5205">스타벅스 카드 이용약관 개정 안내</a></li> <li class="date">2023-11-16</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5200">개인정보 처리방침 개정안내</a></li> <li class="date">2023-11-14</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5199">시스템 개선 및 서비스 점검 안내</a></li> <li class="date">2023-11-14</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5195">My DT Pass 서비스 이용약관 개정 안내</a></li> <li class="date">2023-11-09</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5190">시스템 개선 및 서비스 점검 안내</a></li> <li class="date">2023-11-06</li> </ul> </li><li class="first"> <ul> <li><a href="noticeView.do?seq=5172">시스템 개선 및 서비스 점검 안내</a></li> <li class="date">2023-10-31</li> </ul> </li></ul>
                    <div class="news_pagination">
                        <ul class="pager"><li class=" active"><a href="javascript:void(0)">1</a></li>
                        <li class=""><a href="javascript:void(0)">2</a></li>
                        <li class=""><a href="https://www.starbucks.co.kr/whats_new/noticeView.do?seq=5221">3</a></li>
                        <li class=""><a href="javascript:void(0)">4</a></li>
                        <li class=""><a href="javascript:void(0)">5</a></li>
                        <li class=""><a href="javascript:void(0)">6</a></li>
                        <li class=""><a href="javascript:void(0)">7</a></li>
                        <li class=""><a href="javascript:void(0)">8</a></li>
                        <li class=""><a href="javascript:void(0)">9</a></li>
                        <li class=""><a href="javascript:void(0)">10</a></li>
                        <li class="control"><a href="javascript:void(0)">
                        <img alt="앞으로" src="//image.istarbucks.co.kr/common/img/util/ec/next.jpg"></a></li>
                        </ul>
                    </div>
                </div>
                <!-- 공지사항 end -->
</div>
           

            
            
            

<footer class="bg-dark py-4 mt-auto">
<jsp:include page="../index_nav/index_in_foot.jsp"></jsp:include>
</footer>

</body>
</html>

