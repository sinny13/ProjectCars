<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/myPageList.css">
<<<<<<< HEAD

<script type="text/javascript">
	function showMsg(){
		alert("취소 하시게요?.....");
		document.location.href="#";
	}
	function delMsg(){
		alert("삭제.. 할건가요??");
		document.location.href="#";
	}
</script>

<body style="background-color:#111; color:#fff">
<div id="myPageList">
<div class="layout">
	<div class="container">
		<div class="container mt-3" style="">
			<div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
			  <h1><i class="xi-paper"></i>&nbsp;마이페이지</h1> 
			</div>
		</div>
		<div class="d-flex justify-content-between">
			<div class="card col-md-4 mt-5 h-25" style="background-color: rgba(255, 255, 255, 0.050); width:49%">
				<table class="table table-borderless">
					<thead>
						<tr class="table-dark">
							<th class="col-6"><i class="xi-walk"></i> &nbsp;{dto.name}님의 정보</th>
							<th class="col-3">
								<button class="custom-btn btn-5" onclick="location.href='myMemberModify.do'"><span>상세정보 보기</span></button>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>이메일</td>
							<td>{dto.email}</td>
						</tr>
						<tr>
							<td>휴대폰</td>
							<td>{dto.tel}</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>{dto.roadAddr}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="card col-md-4 mt-5 h-25 w-50" style="background-color: rgba(255, 255, 255, 0.050); width:49%">
				<table class="table table-borderless">
					<thead>
						<tr class="table-dark">
							<th class="col-6"><i class="xi-walk"></i> &nbsp;나의 쇼핑정보</th>
							<th class="col-3">
								<button class="custom-btn btn-5" onclick="location.href='myInvoice.do'"><span>최근 구매내역 보기</span></button>
							</th>
						</tr>
					</thead>
						<tbody>
						<tr>
							<td>진행 중 주문</td>
							<td>1건</td>
						</tr>
						<tr>
							<td>교환/반품 주문</td>
							<td>0건</td>
						</tr>
						<tr>
							<td>나의 e-Money</td>
							<td>100,000</td>
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
							<tr>
							  <td>{dto.rentalDate}</td>
							  <td>{dto.cNum}</td>
							  <td>{dto.cName}</td>
							  <td>{dto.price}</td>
							  <td>
							     <div id="close_btn">
								 	<button class="close" onclick="location.href='#'; javascript:showMsg()">취소</button>
								 </div>
							  </td>
							</tr>
							<tr>
							  <td>{dto.rentalDate}</td>
							  <td>{dto.cNum}</td>
							  <td>{dto.cName}</td>
							  <td>{dto.price}</td>
							  <td>
							     <div id="close_btn">
								 	<button class="close" onclick="location.href='#'; javascript:showMsg()">취소</button>
								 </div>
							  </td>
							</tr>
							<tr>
							  <td>{dto.rentalDate}</td>
							  <td>{dto.cNum}</td>
							  <td>{dto.cName}</td>
							  <td>{dto.price}</td>
							  <td>
							     <div id="close_btn">
								 	<button class="close" onclick="location.href='#'; javascript:showMsg()">취소</button>
								 </div>
							  </td>
							</tr>
					</tbody>
				</table>
				</div>

				<div class="container mt-5">
					<div class="wish_header d-flex" style="justify-content: space-between;">
						<h2><i class="xi-heart"></i> &nbsp;위시리스트</h2>
					</div>          
					<table class="table mt-3" style="color:#fff;">
					  <thead>
						<tr>
						  <th>상품정보</th>
						  <th>가격</th>
						  <th>예약하기</th>
						  <th>예약하기</th>
						  <th>삭제</th>
						</tr>
					  </thead>
					  <tbody>
						<tr>
						  <td>
							<img style="width: 60px; height: 40px;" src="${ctx}/resources/image/cars/람보르기니  가야도르.jpg" alt="#">
						  	{dto.cName}
						  </td>
						  <td>
						  	{dto.price}
						  </td>
						  <td>
					    	<button class="custom-btn btn-5" onclick="location.href='myDayReserv.do'"><span>1일렌트</span></button>
						  </td>
						  <td>
					    	<button class="custom-btn btn-5" onclick="location.href='myLongReserv.do'"><span>장기렌트</span></button>
						  </td>
						  <td>
                			<div id="close_btn">
								<button class="close" onclick="location.href='#'; javascript:delMsg()">삭제</button>
							</div>                			
						  </td>
						</tr>
						<tr>
						  <td>
							<img style="width: 60px; height: 40px;" src="${ctx}/resources/image/cars/람보르기니  가야도르.jpg" alt="#">
						  	{dto.cName}
						  </td>
						  <td>
						  	{dto.price}
						  </td>
							<td>
					    		<button class="custom-btn btn-5" onclick="location.href='myDayReserv.do'"><span>1일렌트</span></button>
						  	</td>
						  	<td>
					    		<button class="custom-btn btn-5" onclick="location.href='myLongReserv.do'"><span>장기렌트</span></button>
						  	</td>
							<td>
	                			<div id="close_btn">
									<button class="close" onclick="location.href='#'; javascript:delMsg()">삭제</button>
								</div>    
							</td>
						</tr>
						<tr>
						  <td>
							<img style="width: 60px; height: 40px;" src="${ctx}/resources/image/cars/람보르기니  가야도르.jpg" alt="#">
						  	{dto.cName}
						  </td>
						  <td>
						  	{dto.price}
						  </td>
							<td>
					    		<button class="custom-btn btn-5" onclick="location.href='myDayReserv.do'"><span>1일렌트</span></button>
						  	</td>
						  	<td>
					    		<button class="custom-btn btn-5" onclick="location.href='myLongReserv.do'"><span>장기렌트</span></button>
						  	</td>
							<td>
	                			<div id="close_btn">
									<button class="close" onclick="location.href='#'; javascript:delMsg()">삭제</button>
								</div>    
							</td>
						</tr>
					</tbody>
				</table>
			</div>				  
=======
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
				  
>>>>>>> branch 'topic_new0808' of https://github.com/sinny13/ProjectCars.git
		</div>
	</div>
</div>
</body>

<%@ include file="../inc/footer.jsp" %>







