<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   
<!-- 렌트카 차량소개-->
<div class="contatiner sentence text-center m-0 p-0">
	<h3>Product Introduce</h3>
	<p>2022년 신차 입고 / 1일렌트 / 사고대차 / 장기렌트</p>
</div>

<!-- CSS -->

    <link rel="stylesheet" href="${ctx}/resources/assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="${ctx}/resources/assets/css/themify-icons.css" />
    <link rel="stylesheet" href="${ctx}/resources/assets/css/style.css" />
    
    <!-- MyCss -->
	<link rel="stylesheet" href="${ctx}/resources/css/font.css">
    <link rel="stylesheet" href="${ctx}/resources/css/car_main.css">
	<link rel="stylesheet" href="${ctx}/resources/css/main.css">

<!-- 슬라이더 -->

<!--? instagram-social start -->
    <div class="instagram-area fix">
      <div class="container-fluid p-0">
        <div class="row">
          <div class="col-xl-12">
            <div class="instagram-active owl-carousel">
			 <c:forEach var="vDto" items="${vehicleList}">
               <div class="single-instagram me-4 Border-radius">
                 <img src="${ctx}/resources/file_upload/${vDto.fileName}" 
                 style="max-width: 100%; min-width:150px; max-height:auto; min-height: 300px;">
                 <!-- <a href="#"><i class="ti-instagram"></i></a> -->
                 <a href="vehicleRental.do?cNum=${vDto.cNum}&cSpec='recommand'"><i><h2>${vDto.company}</h2><h6>${vDto.cName}</h6></i></a>
               </div>
			 </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- instagram-social End -->


<br/>
<br/>
<br/>

<!-- 렌트카 차량소개-->
<div class="contatiner sentence text-center m-0 p-0">
	<h3>Company Policy</h3>
	<p>회사 규약 / 안내사항</p>
</div>

<!-- 최저비용 보장등 설명란 -->
<div class="contents">
       <ul>
           <li><div class="contents-img"><img src="${ctx}/resources/image/main/sample.png" alt=""></div></li>
           <li><div class="contents-img"><img src="${ctx}/resources/image/main/sample.png" alt=""></div></li>
           <li><div class="contents-img"><img src="${ctx}/resources/image/main/sample.png" alt=""></div></li>
       </ul>
</div>

<div class="contatiner sentence text-center m-0 p-0">
	<h3>Q&A</h3>
	<p>자주묻는질문 / 공지사항</p>
</div>
<!-- QNA -->
<div class="board">
       <ul>
           <li><a href="" class="board-img"><img src="${ctx}/resources/image/main/qna.png" alt=""></a></li>
            <li><a href="" class="board-img"><img src="${ctx}/resources/image/main/qna.png" alt=""></a></li>
            <li><a href="" class="board-img"><img src="${ctx}/resources/image/main/qna.png" alt=""></a></li>
       </ul>
</div>





   <!-- JS here -->


    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="${ctx}/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${ctx}/resources/assets/js/slick.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="${ctx}/resources/assets/js/plugins.js"></script>
    <script src="${ctx}/resources/assets/js/main.js"></script>
   