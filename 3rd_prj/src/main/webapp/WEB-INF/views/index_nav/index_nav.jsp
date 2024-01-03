<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

.accordion-button{
	background-color: #454545;
	color: #fff;
}

.accordion-body{
	background-color: #fff;
	color: #fff; 
	font: #454545;
}
</style>

<!-- 강좌 목록의 죄측 메뉴 서랍, 중앙 목록 리스트 -->    

<div class="srch_snb" style="overflow-y: auto;">
<!-- 좌측 매뉴 서랍 -->
<nav>
    <ul data-mooc-main-category="">
        <li data-category-id="ALL">
        	<a href="?mcCode=all" class="link ${ param.mcCode eq 'all' ? 'selected' : '' }">
        	<span class="tit">전체</span>
        	</a>
       	</li>
        <c:forEach var="csb" items="${ csbList }">        
		<li data-category-id="24" class="sub ${ csb.mcCode eq param.mcCode ? 'on' : '' }">
		    <a href="?mcCode=${ csb.mcCode }" class="link ${ csb.mcCode eq param.mcCode ? 'selected' : '' }">
		        <span class="tit"><c:out value="${ csb.mcName }"/></span>
		    </a>
		    <a href="#" class="btn_arr" style="" data-fold="">
		        <span class="blind">접기</span>
		    </a>
		
			<ul class="sub_depth">
				<c:forEach var="sub" items="${ csb.subCategory }">
				<li data-category-id="72" class="">
				    <a href="?mcCode=${ csb.mcCode }&scCode=${ sub.scCode }" class="link">
				        <c:out value="${ sub.scName }"/>
				    </a>
				</li>
				</c:forEach>
				
			</ul>
		</li>
		</c:forEach>
	</ul>
</nav>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // 모든 btn_arr 요소에 대해 이벤트 리스너 추가
        var btnArrElements = document.querySelectorAll('.btn_arr');
        btnArrElements.forEach(function (btnArr) {
            btnArr.addEventListener('click', function () {
                // 부모 li 요소에 on 클래스를 추가 또는 제거
                var parentLi = btnArr.closest('li');
                if (parentLi.classList.contains('on')) {
                    parentLi.classList.remove('on');
                } else {
                    parentLi.classList.add('on');
                }
            });
        });
    });
</script>
</div>    
