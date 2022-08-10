<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/myPageList.css">
<link rel="stylesheet" href="${ctx}/resources/css/myWishList.css">


<script type="text/javascript" src="${ctx}/resources/js/mdb.min.js"></script>

<body style="background-color:#111; color:#fff">
<div class="layout">
	<div class="container">
		<div class="container mt-3">
			<div class="mt-3 mb-3 p-3 bg-secondary text-white rounded">
			  <h1><i class="xi-paper"></i>&nbsp;상세보기</h1> 
			</div>
		</div>
        <div class="wish d-flex mt-5">
            <div class="image me-5">
                <img src="" class="img-thumbnail" alt="#">
            </div>
            <div class="inner">
              <table class="table">
                <tbody>
                  <tr>
                    <th scope="row"><i class="xi-car"></i>&nbsp;모델</th>
                    <th>rolls-royce phantom</th>
                  </tr>
                  <tr>
                    <th scope="row"><i class="xi-palette"></i>&nbsp;색상</th>
                    <th>green</th>
                  </tr>
                  <tr>
                    <th scope="row"><i class="xi-view-list"></i>&nbsp;차량소개</th>
                    <th>test</th>
                  </tr>
                </tbody>
              </table>
              <div class="text-center">
                <a href="#" class='btn btn-primary'>
                	예약
                </a>
                <a href="#" class='btn btn-danger'>  
                	삭제
                </a>
                <a href='myPageList.do' class='btn btn-success'>
                	마이페이지
                </a> 
              </div>
            </div>
        </div>

	</div>
</div>
</body>

<%@ include file="../inc/footer.jsp" %>





