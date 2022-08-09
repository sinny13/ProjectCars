<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<<<<<<< HEAD

<%@ include file="../inc/header.jsp" %>

<link rel="stylesheet" href="${ctx}/resources/css/myWishList.css">
<link rel="stylesheet" href="${ctx}/resources/js/myWishList.js">

<script type="text/javascript">

	function delMsg(){
		alert("삭제.. 할건가요??");
		document.location.href="#";
	}
	
</script>

<div id="myWishList">

<!--<div class="container mt-3">
		<div class="mt-3 mb-3 p-3 bg-secondary text-white rounded">
			 <h1><i class="xi-emoticon-happy-o"></i>&nbsp;위시리스트</h1> 
		</div>
	</div> -->
	<div class="container mt-3">
			<div class="mt-3 mb-3 p-3 text-white rounded" style="background-color: rgba(70, 70, 70, 0.5)">
			  <h1><i class="xi-heart"></i>&nbsp;위시리스트</h1> 
			</div>
		</div>
	
	

	<div class="container">

		<section id="cart" class="mt-5"> 
			<article class="product">
				<header>
					<a class="remove" onclick="location.href='#'; javascript:delMsg()">
						<img src="${ctx}/resources/image/cars/람보르기니  가야도르.jpg" alt="#">

						<h3>Remove product</h3>
					</a>
				</header>

				<div class="content">

					<h1>{dto.cName}</h1>

					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

				</div>

				<footer class="content">
					
					<h2 class="full-price">
						
						<div class="frame">
					    	<button class="custom-btn btn-5" onclick="location.href='myDayReserv.do'"><span>장기렌트</span></button>
					    </div>
					</h2>
					<h2 class="full-price">
						
						<div class="frame">
					    	<button class="custom-btn btn-5" onclick="location.href='myLongReserv.do'"><span>1일렌트</span></button>
					    </div>
					</h2>

					<h2 class="price">
						{dto.price}
					</h2>
					
				</footer>
			</article>

			<article class="product">
				<header>
					<a class="remove" onclick="location.href='#'; javascript:delMsg()">
						<img src="${ctx}/resources/image/cars/람보르기니  아벤타도르.png" alt="#">

						<h3>Remove product</h3>
					</a>
				</header>

				<div class="content">

					<h1>{dto.cName}</h1>

					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

				</div>

				<footer class="content">

					<h2 class="full-price">
						
						<div class="frame">
					    	<button class="custom-btn btn-5" onclick="location.href='myDayReserv.do'"><span>장기렌트</span></button>
					    </div>
					</h2>
					<h2 class="full-price">
						
						<div class="frame">
					    	<button class="custom-btn btn-5" onclick="location.href='myLongReserv.do'"><span>1일렌트</span></button>
					    </div>
					</h2>

					<h2 class="price">
						{dto.price}
					</h2>
					
				</footer>
			</article>

			<article class="product">
				<header>
					<a class="remove" onclick="location.href='#'; javascript:delMsg()">
						<img src="${ctx}/resources/image/cars/벤틀리 컨티넨탈GT.jpg" alt="#">

						<h3>Remove product</h3>
					</a>
				</header>

				<div class="content">

					<h1>{dto.cName}</h1>

					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

				</div>

				<footer class="content">

					<h2 class="full-price">
						
						<div class="frame">
					    	<button class="custom-btn btn-5" onclick="location.href='myDayReserv.do'"><span>장기렌트</span></button>
					    </div>
					</h2>
					<h2 class="full-price">
						
						<div class="frame">
					    	<button class="custom-btn btn-5" onclick="location.href='myLongReserv.do'"><span>1일렌트</span></button>
					    </div>
					</h2>

					<h2 class="price">
						{dto.price}
					</h2>


				</footer>
			</article>

		</section>
	</div>

</div>

<%@ include file="../inc/footer.jsp" %>
=======
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





>>>>>>> branch 'topic_new0808' of https://github.com/sinny13/ProjectCars.git
