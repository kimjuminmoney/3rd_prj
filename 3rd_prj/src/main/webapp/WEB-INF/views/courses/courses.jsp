<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="ko" itemscope="" itemtype="http://schema.org/Article">
<head>
<body class="w1080 ct_center win chrome chrome120 next" cz-shortcut-listen="true">   
</head>
 
<div id="wrap">
     <div id="header" class="course_search">
     <jsp:include page="../index_nav/index_in_head.jsp"/>  
	</div>
     
     <jsp:include page="../index_nav/index_nav.jsp"/>
      
	
</div>

<script>
    $(function(){
        var entry = require("/entries/course/courseList.entry.js");
        entry.initialize({
            type: 'index',
            courseTotal: 140,
            categoryId: '0',
            isNext: true
        });
    });
</script>

<footer id="footer">
<jsp:include page="../index_nav/index_in_foot.jsp"></jsp:include>
</footer>






</html>
