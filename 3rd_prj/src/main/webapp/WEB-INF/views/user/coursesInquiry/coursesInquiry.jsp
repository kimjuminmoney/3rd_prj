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
    
    
<title>강좌 문의: edwith</title>
<!-- courses css -->
<link rel="stylesheet" href="http://localhost/daitdayoung/common/css/user/myCourses.css" type="text/css">

      <style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: center;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #04AA6D;
  color: white;
  
}
#customers th:nth-child(1) { /* 너비 설정 - '번호' 열 */
       width: 8%;
   }
   
#customers th:nth-child(2) { /* 너비 설정 - '번호' 열 */
       width: 10%;
   }

   #customers th:nth-child(3) { /* 너비 설정 - '날짜' 열 */
       width: 10%;
   }
   #customers th:nth-child(4) { /* 너비 설정 - '날짜' 열 */
       width: 54%;
   }
   #customers th:nth-child(5) { /* 너비 설정 - '날짜' 열 */
       width: 8%;
   }
   #customers th:nth-child(6) { /* 너비 설정 - '날짜' 열 */
       width: 10%;
   }
</style>
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
            <h3 class="tit_home">문의하기</h3>
            <div class="btn_area" data-course-list>
                    <a href="/daitdayoung/user/coursesInquiry_write.do"><button type="button" class="btn_type" data-course-join-btn><span class="btn_txt">문의하기</span></button></a>
            </div>
        </div>
            <hr>
        <div class="tab_area">
            
        </div>
        

<div class="course_group course_join" data-course-group>
    <div class="course_lst class_area">
    <table id="customers">
    <thead>
	  <tr>
	    <th>번호</th>
	    <th>강좌명</th>
	    <th>유형</th>
	    <th>제목</th>
	    <th>답변</th>
	    <th>날짜</th>
	  </tr>
	</thead>
	<tbody>
	<c:if test="${ empty inquiryList }">
	<tr>
		<td colspan="6"> 문의한 내역이 없습니다.</td>
	</tr>
	</c:if>
	<c:forEach var="inquiry" items="${ inquiryList }">
	  <tr>
	    <td><c:out value="${ inquiry.ciInd }"/></td>
	    <td><c:out value="${ inquiry.couName }"/></td>
	    <td><c:out value="${ inquiry.citName }"/></td>
	    <td><a href="coursesInquiry_detail.do?ciCode=${ inquiry.ciCode }"><c:out value="${ inquiry.ciTitle }"/></a></td>
	    <td><c:out value="${ inquiry.ciAnswer != null ? 'Y' : 'N' }"/></td>
	    <td><c:out value="${ inquiry.ciDate }"/></td>
	  </tr>
	  	</c:forEach>
	 </tbody>
	</table>
            
    </div>
</div>
            
        
        
            <!-- paginate -->
            <nav class="paginate" role="navigation">
            <div class="inner">
            <a href="#" class="pre" onclick="return false;">이전</a>
            <ul class="page_list">
            <li><a href="/myPage/home?searchType=&amp;searchText=&amp;sortType=REG&amp;offset=0&amp;max=20" sort="regYmdt" order="desc" class="selected">1</a></li>
            </ul>
            <a href="#" class="next" onclick="return false;">다음</a>
            </div>
            </nav>
            
        
    </div>
</div>




<script src="https://www.edwith.org/static/js/src/entries/whaleclass/main/index.entry.browserfied.min.js?231109_47a067d4"></script>
<script>
    $(function(){
        var entry = require("/entries/whaleclass/main/index.entry.js");
        entry.initialize({
            searchType: "all"
        });
    });
</script>

<!-- FOOTER -->
<jsp:include page="../nav/footer.jsp"></jsp:include>

        </div>
    </div>
</body>
</html>