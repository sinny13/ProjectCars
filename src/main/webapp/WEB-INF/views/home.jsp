<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="inc/header.jsp" %>

<!-- partial:index.partial.html -->
<div class="carousel">
  <div class="carousel_3d">
    <div id="drag-container">
      <div id="spin-container">
        <!-- Add your images (or video) here -->
        <img src="${ctx}/resources/image/emblem/롤스로이스.png" alt="#">
        <img src="${ctx}/resources/image/emblem/람보르기니.png" alt="#">
        <img src="${ctx}/resources/image/emblem/레인지로버.png" alt="#">
        <img src="${ctx}/resources/image/emblem/벤츠.png" alt="#">
        <img src="${ctx}/resources/image/emblem/벤틀리.png" alt="#">
        <img src="${ctx}/resources/image/emblem/부가티.png" alt="#">
        <img src="${ctx}/resources/image/emblem/포르쉐.png" alt="#">
        <img src="${ctx}/resources/image/emblem/페라리.png" alt="#">
        <img src="${ctx}/resources/image/emblem/테슬라.png" alt="#">
        <img src="${ctx}/resources/image/emblem/캐딜락.png" alt="#">



        <!-- Text at center of ground -->
        <p style="font-size:50px;">Project Cars</p>
      </div>
      <div id="ground"></div>
    </div>
  </div>
</div>

<!-- 로그인성공 메세지  -->
<script type="text/javascript">
$(document).ready(function(){ 
	if(${LoginProcess != null}){
		alert("${LoginProcess}");	
		
	}	  
});

<!-- 로그아웃성공 메세지  -->
$(document).ready(function(){ 
	if(${LogoutProcess != null}){
		alert("${LogoutProcess}");	
	}	  
});
<!-- 위시리스트 담기 실패 메세지  -->
$(document).ready(function(){ 
	if(${WishInsertFail != null}){
		alert("${WishInsertFail}");	
	}	  
});

</script>

<!-- 메세지삭제 -->
<script  src="${ctx}/resources/js/3dCarousel.js?ver=111"></script>


<!-- car_main  -->
<%@ include file="car_main.jsp" %>


<!-- footer -->
<%@ include file="inc/footer.jsp" %>