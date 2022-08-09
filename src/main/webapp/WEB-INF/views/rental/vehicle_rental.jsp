<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/> --%>
<%@ include file="../inc/header.jsp" %>


<!-- CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/vehicle_rental.css" />


<main>
  <div class="container">
    <%-- <c:forEach var="catList" items="${catList}"> --%>
    <%-- <c:forEach var="vDto" items="${vehicleList}"> --%>
    <div class="grid second-nav">
      <div class="column-xs-12">
        <nav class="row">
			<h4 class="breadcrumb-item">${vDto.category_fk}</h4>
        </nav>
        
      </div>
    </div>
    <div class="grid product">
      <div class="column-xs-12 column-md-7">
        <div class="product-gallery">
          <div class="product-image">
            <img class="active" src="${ctx}/resources/file_upload/${vDto.fileName}">
          </div>
          <ul class="image-list">
            <li class="image-item"><img src="https://source.unsplash.com/W1yjvf5idqA"></li>
            <li class="image-item"><img src="https://source.unsplash.com/VgbUxvW3gS4"></li>
            <li class="image-item"><img src="https://source.unsplash.com/5WbYFH0kf_8"></li>
          </ul>
        </div>
      </div>
      
      <div class="column-xs-12 column-md-5">
        <h1>${vDto.cName}</h1>
        <h2>${vDto.price}원</h2>
        <div class="description">
        <p>${vDto.contents}</p>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
      </div>
        <button class="add-to-cart">렌트카 예약하기</button>
        <button class="add-to-cart">관심상품</button>
      </div>
    </div>
    <%-- </c:forEach> --%>
    <%-- </c:forEach> --%>
    
    <div class="grid related-products" >
      <div class="column-xs-12" >
        <!-- <h4>관련상품</h4> -->
        <h3>${vDto.cSpec} cars</h3>
      </div>
    <c:forEach var="vehicle" items="${vehicleList}">
      <div class="card column-xs-12 column-md-4" style="display : flex">
    	<c:if test="${vehicle.cSpec == vDto.cSpec}">
        		<img src="https://source.unsplash.com/miziNqvJx5M">
        		<div>
        			<h4>[더미] ${vehicle.cName}</h4>
        			<p class="price">${vehicle.price}원</p>
        		</div>   	
        	</c:if>
      </div>
    </c:forEach>
    </div>    
  </div>
=======
<%@page import="kr.mr.model.VehicleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/> --%>
<%@ include file="../inc/header.jsp" %>





<!-- CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/vehicle_rental.css" />


<main>
  <div class="container">
    <%-- <c:forEach var="catList" items="${catList}"> --%>
    <%-- <c:forEach var="vDto" items="${vehicleList}"> --%>
    <div class="grid second-nav">
      <div class="column-xs-12">
        <nav class="row">
			<h4 class="breadcrumb-item">${vDto.category_fk}</h4>
        </nav>
        
      </div>
    </div>
    <div class="grid product">
      <div class="column-xs-12 column-md-7">
        <div class="product-gallery">
          <div class="product-image">
            <img class="active" src="${ctx}/resources/file_upload/${vDto.fileName}">
          </div>
          <ul class="image-list">      	
            <li class="image-item"><img src="${ctx}/resources/file_repo/${iDto.iName1}"></li>
            <li class="image-item"><img src="${ctx}/resources/file_repo/${iDto.iName2}"></li>
            <li class="image-item"><img src="${ctx}/resources/file_repo/${iDto.iName3}"></li>
            <li class="image-item"><img src="${ctx}/resources/file_repo/${iDto.iName4}"></li>
            <li class="image-item"><img src="${ctx}/resources/file_repo/${iDto.iName5}"></li>
            <li class="image-item"><img src="${ctx}/resources/file_repo/${iDto.iName6}"></li>
            <li class="image-item"><img class="active" src="${ctx}/resources/file_upload/${vDto.fileName}"></li>
          </ul>
        </div>
      </div>
      
      <div class="column-xs-12 column-md-5">
        <h1>${vDto.company} ${vDto.cName}</h1>
        <h2>${vDto.price}만원</h2>
        <div class="description">
        <p>${vDto.contents}</p>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
      	</div>
      	
 	<c:if test="${mDto.isRented == 'Y'}">
        <button class="add-to-cart" onclick='javascript:alert("차량은 1대만 구매 가능합니다. ")'>
        		렌트카 예약하기
        </button>
        </c:if>
 	<c:if test="${mDto.isRented != 'Y'}">
        <button class="add-to-cart">
        	<a href="rentalSelector.do?cNum=${vDto.cNum}&id=${sessionScope.userId}">
        		렌트카 예약하기
        	</a>
        </button>
        </c:if>
        <button class="add-to-cart">관심상품<a href="wishList.do?cNum=${vDto.cNum}&id=${sessionScope.userId}"></button>
      </div>
    </div>
    <%-- </c:forEach> --%>
    <%-- </c:forEach> --%>
    
    <div class="grid related-products" >
      <div class="column-xs-12" >
        <!-- <h4>관련상품</h4> -->
        <h3>${vDto.cSpec} cars</h3>
      </div>
    <c:forEach var="vehicle" items="${vehicleList}">
      <div class="card" style="display : flex">
    	<%-- <c:if test="${vehicle.cSpec == vDto.cSpec}"> --%>
        		<ul class="image-list"> 
        			<li class="image-item">
        				<a href="vehicleRental.do?cNum=${vehicle.cNum}">
        					<img src="${ctx}/resources/file_upload/${vehicle.fileName}">
        				</a>
        			</li>
        		</ul>	
        		<div>
        			<h4>[더미] ${vehicle.cName}</h4>
        			<p class="price">${vehicle.price}원</p>
        		</div>   	
        	<%-- </c:if> --%>
      </div>
    </c:forEach>
    </div>    
  </div>
  

  
  
  
>>>>>>> branch 'topic_new0808' of https://github.com/sinny13/ProjectCars.git
</main>

<%@ include file="../inc/footer.jsp" %>

<!-- JS -->
<script src="${ctx}/resources/js/vehicle_rental.js"></script>