<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../inc/header.jsp" %>

<link rel="stylesheet" href="${ctx}/resources/css/myWishList.css">
<link rel="stylesheet" href="${ctx}/resources/js/myWishList.js">

<div id="myWishList">

    <div class="container mt-3">
		<div class="mt-3 mb-3 p-3 bg-secondary text-white rounded">
			 <h1><i class="xi-emoticon-happy-o"></i>&nbsp;위시리스트</h1> 
		</div>
	</div>

	<div class="container">

		<section id="cart" class="mt-5"> 
			<article class="product">
				<header>
					<a class="remove">
						<img src="${ctx}/resources/image/cars/람보르기니  가야도르.jpg" alt="">

						<h3>Remove product</h3>
					</a>
				</header>

				<div class="content">

					<h1>람보르기니 가야도르</h1>

					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

				</div>

				<footer class="content">
					<span class="qt-minus">-</span>
					<span class="qt">2</span>
					<span class="qt-plus">+</span>

					<h2 class="full-price">
						2,000,000
					</h2>

					<h2 class="price">
						1,000,000
					</h2>
				</footer>
			</article>

			<article class="product">
				<header>
					<a class="remove">
						<img src="${ctx}/resources/image/cars/람보르기니  아벤타도르.png" alt="">

						<h3>Remove product</h3>
					</a>
				</header>

				<div class="content">

					<h1>람보르기니 아벤타도르</h1>

					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

				</div>

				<footer class="content">
					
					<span class="qt-minus">-</span>
					<span class="qt">1</span>
					<span class="qt-plus">+</span>

					<h2 class="full-price">
						1,000,000
					</h2>

					<h2 class="price">
						1,000,000
					</h2>
				</footer>
			</article>

			<article class="product">
				<header>
					<a class="remove">
						<img src="${ctx}/resources/image/cars/벤틀리 컨티넨탈GT.jpg" alt="">

						<h3>Remove product</h3>
					</a>
				</header>

				<div class="content">

					<h1>벤틀리 컨티넨탈GT</h1>

					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

				</div>

				<footer class="content">
					
					<span class="qt-minus">-</span>
					<span class="qt">3</span>
					<span class="qt-plus">+</span>

					<h2 class="full-price">
						3,000,000
					</h2>

					<h2 class="price">
						1,000,000
					</h2>
				</footer>
			</article>

		</section>
	</div>

</div>

<%@ include file="../inc/footer.jsp" %>
