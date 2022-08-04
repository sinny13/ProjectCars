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
			  <h1><i class="xi-paper"></i>&nbsp;마이페이지</h1> 
			</div>
		</div>
		<div class="d-flex justify-content-between">
			<div class="card col-md-4 mt-5 h-25" style="background-color: slategray; width:49%">
				<table class="table table-borderless">
					<thead>
						<tr class="table-dark">
							<th class="col-6"><i class="xi-walk"></i> &nbsp;{dto.name}님의 정보</th>
							<th class="col-3">
								<a href="myMemberModify.do" class="btn btn-secondary">
									상세정보 보기
								</a>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>이메일</td>
							<td>${dto.email}</td>
						</tr>
						<tr>
							<td>휴대폰</td>
							<td>${dto.tel}</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>${dto.address}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="card col-md-4 mt-5 h-25 w-50" style="background-color: slategray; width:49%">
				<table class="table table-borderless">
					<thead>
						<tr class="table-dark">
							<th class="col-6"><i class="xi-walk"></i> &nbsp;나의 쇼핑정보</th>
							<th class="col-3">
								<a href="#" class="btn btn-secondary">
									주소록 관리
								</a>
							</th>
						</tr>
					</thead>
						<tbody>
						<tr>
							<td>진행 중 주문</td>
							<td>ㅇㅇ</td>
						</tr>
						<tr>
							<td>교환/반품 주문</td>
							<td>ㅇㅇ</td>
						</tr>
						<tr>
							<td>나의 e-Money</td>
							<td>ㅇㅇ</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
			<div class="container mt-5">
				<h2><i class="xi-cart-o"></i> &nbsp;주문내역</h2>            
				<table class="table mt-3" style="color:#fff">
					  <thead>
						<tr>
						  <th>주문일자</th>
						  <th>주문번호</th>
						  <th>상품명</th>
						  <th>주문금액</th>
						  <th>취소</th>
						</tr>
					  </thead>
					  <tbody>
<%-- 					  	<c:forEach var="dto" items=""> --%>
							<tr>
							  <td>${dto.rentalDate}</td>
							  <td>${dto.cNum}</td>
							  <td>${dto.cName}</td>
							  <td>${dto.price}</td>
							  <td>
							  	<a href="#" class='btn btn-danger'>  
	                				취소
	                			</a>
							  </td>
							</tr>
  <%--               		</c:forEach> --%>
					</tbody>
				</table>
				</div>

				<div class="container mt-5">
					<h2><i class="xi-car"></i> &nbsp;관심상품</h2>            
					<table class="table mt-3" style="color:#fff;">
					  <thead>
						<tr>
						  <th>상품정보</th>
						  <th>가격</th>
						  <th>장바구니</th>
						  <th>상세보기</th>
						  <th>삭제</th>
						</tr>
					  </thead>
					  <tbody>
						<tr>
						  <td>
							<img src="" alt="#">name
						  </td>
						  <td>
						  	price
						  </td>
						  <td>
							<a href="#" class="btn btn-primary">
								<i class="xi-cart-add"></i>장바구니
							</a>
						  </td>
						  <td>
							<a href="myWishList.do" class="btn btn-primary">
								<i class="xi-zoom-in"></i>상세보기
							</a>
						  </td>
						  <td>
							<a href="#" class='btn btn-danger'>  
                				삭제
                			</a>
						  </td>
						</tr>
						<tr>
							<td>test</td>
							<td>test</td>
							<td>test</td>
							<td>test</td>
							<td>
								<a href="#" class='btn btn-danger'>  
                					삭제
                				</a>
							</td>
						</tr>
						<tr>
							<td>test</td>
							<td>test</td>
							<td>test</td>
							<td>test</td>
							<td>
								<a href="#" class='btn btn-danger'>  
                					삭제
                				</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
				  
		</div>
	</div>
</div>
</body>

<%@ include file="../inc/footer.jsp" %>







