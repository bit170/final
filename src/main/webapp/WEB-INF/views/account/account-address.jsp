<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>마이페이지 - 나의 주소록</title>
<!-- SEO Meta Tags-->
<meta name="description"
	content="Unishop - Universal E-Commerce Template">
<meta name="keywords"
	content="shop, e-commerce, modern, flat style, responsive, online store, business, mobile, blog, bootstrap 4, html5, css3, jquery, js, gallery, slider, touch, creative, clean">
<meta name="author" content="Rokaux">
<!-- Mobile Specific Meta Tag-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- Favicon and Apple Icons-->
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/png" href="favicon.png">
<link rel="apple-touch-icon" href="touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="167x167"
	href="touch-icon-ipad-retina.png">
<!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
<link rel="stylesheet" media="screen"
	href="<c:url value="resources/css/vendor.min.css" />">
<!-- Main Template Styles-->
<link id="mainStyles" rel="stylesheet" media="screen"
	href="<c:url value="resources/css/styles.min.css" />">
<!-- Modernizr-->
<script src="resources/js/modernizr.min.js" /></script>
<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<script src="<c:url value="resources/js/vendor.min.js" />"></script>
<script src="<c:url value="resources/js/scripts.min.js" />"></script>

</head>
<!-- Body-->
<body>
	<!-- Navbar-->
	<!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
	<header class="navbar navbar-sticky">
		<!-- Site Branding-->
		<!-- 브랜드 로고 -->
		<div class="site-branding">
			<a class="site-logo hidden-xs-down" href="index.jsp"><img
				src="resources/img/logo/logo.png" alt="Unishop"></a><a
				class="site-logo logo-sm hidden-sm-up" href="index.jsp"><img
				src="resources/img/logo/logo-sm.png" alt="Unishop"></a>
		</div>
		<!-- Main Navigation-->
		<!-- 상단 메뉴 -->
		<nav class="site-menu">
			<ul>
				<!-- 해당 페이지에 class="active" 추가해줘야함-->
				<li class="active"><a href="index.jsp"><span>Home</span></a></li>
				<li><a href="artist-boxed-ft.jsp"><span>Artist</span></a></li>
				<li><a href="shop-boxed-ls.jsp"><span>Shop</span></a>
					<ul class="sub-menu">
						<li><a href="shop-boxed-ls.jsp">수채화</a></li>
						<li><a href="shop-boxed-ls.jsp">유화</a></li>
						<li><a href="shop-boxed-ls.jsp">수묵화</a></li>
						<li><a href="shop-boxed-ls.jsp">크로키</a></li>
						<li><a href="shop-boxed-ls.jsp">기타</a></li>
					</ul></li>
				<li><a href="#"><span>Pages</span></a>
					<ul class="sub-menu">
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="contacts.jsp">Contacts</a></li>
						<li><a href="faq.jsp">Help / FAQ</a></li>
						<li><a href="404.jsp">404 Not Found</a></li>
						<li><a class="text-danger" href="docs/dev-setup.jsp">Documentation</a></li>
					</ul></li>
			</ul>
		</nav>
		<!-- Toolbar-->
		<!-- 메뉴바 우측 아이콘 -->
		<div class="toolbar">
			<div class="inner">
				<a class="toolbar-toggle mobile-menu-toggle" href="#mobileMenu"><i
					class="material-icons menu"></i></a><a
					class="toolbar-toggle search-toggle" href="#search"><i
					class="material-icons search"></i></a><a class="toolbar-toggle"
					href="#account"><i class="material-icons person"></i></a><a
					class="toolbar-toggle" href="#cart"><i><span
						class="material-icons shopping_basket"></span> <!-- 조건문 넣기 --> <span
						class="count">합</span></i></a>
			</div>
			<!-- Toolbar Dropdown-->
			<div class="toolbar-dropdown">
				<!-- Mobile Menu Section-->
				<!-- 모바일 돋보기 -->
				<div class="toolbar-section" id="mobileMenu">
					<!-- Search Box-->
					<form class="input-group form-group" method="get">
						<span class="input-group-btn">
							<button type="submit">
								<i class="material-icons search"></i>
							</button>
						</span> <input class="form-control" type="search"
							placeholder="태그/작품/작가 검색">
					</form>
					<!-- Slideable (Mobile) Menu-->
					<nav class="slideable-menu mt-4">
						<ul class="menu">
							<!-- 페이지에 active 클래스 추가해줘야함 -->
							<li class="has-children active"><span><a
									href="index.jsp"><span>Home</span></a></span></li>
							<li><span><a href="artist-boxed-ft.jsp "><span>Artist</span></a></span></li>
							<li class="has-children"><span><a
									href="shop-boxed-ls.jsp"><span>Shop</span></a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="shop-categories.jsp">수채화</a></li>
									<li><a href="shop-categories.jsp">유화</a></li>
									<li><a href="shop-categories.jsp">수묵화</a></li>
									<li><a href="shop-categories.jsp">크로키</a></li>
									<li><a href="shop-categories.jsp">기타</a></li>
								</ul></li>
							<li class="has-children"><span><a href="#">Pages</a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="about.jsp">About Us</a></li>
									<li><a href="contacts.jsp">Contacts</a></li>
									<li><a href="faq.jsp">Help / FAQ</a></li>
									<li><a href="404.jsp">404 Not Found</a></li>
									<li><a class="text-danger" href="docs/dev-setup.jsp">Documentation</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<!-- Search Section-->
				<div class="toolbar-section" id="search">
					<form class="search-form mb-2" method="get">
						<input type="search" placeholder="태그/작가/작품을 검색"><i
							class="material-icons search"></i>
					</form>
					<!-- 검색 결과 -->
					<!-- Products-->
					<div class="widget widget-featured-products">
						<h3 class="widget-title">Found in Products</h3>
						<!-- Entry-->
						<!-- 검색결과 주르륵 -->
						<div class="entry">
							<div class="entry-thumb">
								<a href="shop-single.jsp"><img
									src="resources/img/shop/widget/01.png" alt="Product"></a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="shop-single.jsp">ㅇㅇ <span class='text-highlighted'>검색어와
											일치하는 부분</span></a>
								</h4>
								<span class="entry-meta">가격</span>
							</div>
						</div>
					</div>
					<!-- 작가결과-->
					<div class="widget widget-featured-products">
						<h3 class="widget-title">Found in Artist</h3>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="작가상세"><img src="resources/img/blog/widget/01.jpg"
									alt="Post"></a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="작가상세"><span class='text-highlighted'>검색어
											일치부분</span> 블라블라</a>
								</h4>
								<span class="entry-meta">아이디?</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Account Section-->
				<!-- 사람아이콘 -->

				<!-- 로그인 후 로그아웃, 마이페이지버튼 -->
				<!-- <div class="toolbar-section" id="account">
            <p class="text-muted text-sm mt-4"><h4>뫄뫄뫄<h4></p>
            <p class="text-muted text-sm mt-4">환영합니다</p>
            <button class="btn btn-primary btn-block" type="submit">Log Out</button>
            <button class="btn btn-primary btn-block" type="submit"><a href="account-wishlist.jsp">My page</button>
          </div> -->
				<div class="toolbar-section" id="account">
					<ul class="nav nav-tabs nav-justified" role="tablist">
						<li class="nav-item"><a class="nav-link active" href="#login"
							data-toggle="tab" role="tab">Log In</a></li>
						<li class="nav-item"><a class="nav-link" href="#signup"
							data-toggle="tab" role="tab">Sign Up</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="login" role="tabpanel">
							<!-- 로그인 폼 -->
							<form autocomplete="off" id="login-form">
								<div class="form-group input-group">
									<input class="form-control" type="text" placeholder="Id"
										required><span class="input-group-addon"><i
										class="material-icons mail"></i></span>
								</div>
								<div class="form-group input-group">
									<input class="form-control" type="password"
										placeholder="Password" required><span
										class="input-group-addon"><i
										class="material-icons lock"></i></span>
								</div>
								<!-- 로그인 유지 -> 어떻게? -->
								<div class="custom-control custom-checkbox form-group">
									<input class="custom-control-input" type="checkbox" id="logged"
										checked> <label class="custom-control-label"
										for="logged">Keep me logged in</label>
								</div>
								<!-- 로그인 버튼 -->
								<button class="btn btn-primary btn-block" type="submit">Log
									In</button>
							</form>
						</div>
						<div class="tab-pane fade" id="signup" role="tabpanel">
							<form autocomplete="off" id="signup-form">
								<div class="form-group">
									<input class="form-control" type="text" placeholder="Name"
										required>
								</div>
								<div class="form-group">
									<input class="form-control" type="email" placeholder="Email"
										required>
								</div>
								<div class="form-group">
									<input class="form-control" type="text" placeholder="Id"
										required> 중복확인하고 싶은데에..
								</div>
								<div class="form-group">
									<input class="form-control" type="password"
										placeholder="Password" required>
								</div>
								<div class="form-group">
									<input class="form-control" type="password"
										placeholder="Confirm Password" required>
								</div>
								<button class="btn btn-primary btn-block" type="submit">Sign
									Up</button>
								<p class="text-muted text-sm mt-4">OR sign up with your
									social account</p>
								<a class="media-btn media-facebook" href="#"><i
									class="socicon-facebook"></i><span>Signup with Facebook</span></a><a
									class="media-btn media-google" href="#"><i
									class="socicon-googleplus"></i><span>Signup with Google+</span></a><a
									class="media-btn media-twitter" href="#"><i
									class="socicon-twitter"></i><span>Signup with Twitter</span></a>
							</form>
						</div>
					</div>
				</div>
				<!-- Shopping Cart Section-->
				<div class="toolbar-section" id="cart">
					<div class="table-responsive shopping-cart mb-0">
						<table class="table">
							<thead>
								<tr>
									<th colspan="2">
										<div class="d-flex justify-content-between align-items-center">
											Products<a class="navi-link text-uppercase" href="cart.jsp"><span
												class="text-xxs">Expand Cart</span><i
												class="material-icons keyboard_arrow_right"></i></a>
										</div>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="product-item">
											<a class="product-thumb" href="shop-single.jsp"><img
												src="resources/img/shop/cart/01.jpg" alt="Product"></a>
											<div class="product-info">
												<h4 class="product-title">
													<a href="shop-single.jsp">작품이름</a>
												</h4>
												<span><em>Price:</em> 가격</span>
											</div>
										</div>
									</td>
									<!-- 삭제처리는 어떻게? 장바구니 품목을 디비에 저장하지 않으면 리스트형태로 세션이나 어딘가에 보관? 그럼 삭제버튼 클릭시 리스트에서 remove하면 될까? -->
									<td class="text-center"><a class="remove-from-cart"
										href="삭제처리"><i class="material-icons icon_close"></i></a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 장바구니 합계 -->
					<hr class="mb-3">
					<div
						class="d-flex flex-wrap justify-content-between align-items-center">
						<div class="pr-2 py-1 text-sm">
							Subtotal: <span class='text-dark text-medium'>장바구니 합계 값</span>
						</div>
						<a class="btn btn-sm btn-success mb-0 mr-0"
							href="checkout-address.jsp">Checkout</a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Page Title-->
	<div class="page-title">
		<div class="container">
			<h1>나의 주소록</h1>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">홈</a></li>
				<li class="separator">&nbsp;/&nbsp;</li>
				<li><a href="account-orders.jsp">나의 계정</a></li>
				<li class="separator">&nbsp;/&nbsp;</li>
				<li>Contact Address</li>
			</ul>
		</div>
	</div>
	<!-- Page Content-->
	<div class="container padding-bottom-3x mb-1">
		<div class="row">
			<div class="col-lg-4">
				<aside class="user-info-wrapper">
					<div class="user-cover"
						style="background-image: url(resources/img/account/user-cover-img.jpg);">
					</div>
					<div class="user-info">
					<!-- 사용자 사진 -->
						<!-- <div class="user-avatar">
							<a class="edit-avatar" href="#"><i
								class="material-icons edit"></i>수정하기</a><img
								src="resources/img/account/user-ava.jpg" alt="User">
						</div> -->
						<div class="user-data">
							<h5><%-- ${member.name} --%></h5>
							<span><%-- ${member.joindate} --%></span>
						</div>
					</div>
				</aside>
				<!-- 마이페이지 목록 수정 (연희) -->
				<nav class="list-group">
					<a class="list-group-item" href="account-wishlist.jsp">
						<i class="icon-heart"></i>위시리스트
						<span class="badge badge-default badge-pill">1</span></a> 
					<a class="list-group-item" href="account-follows.jsp">
						<i class="icon-heart"></i>팔로우
						<span class="badge badge-default badge-pill">3</span></a> 
					<a class="list-group-item" href="account-orders.jsp">
						<i class="icon-heart"></i>주문목록
						<span class="badge badge-default badge-pill">3</span></a> 
					<a class="list-group-item" href="getMember.do<%-- ?id=${member.id} --%>">
						<i class="icon-head"></i>프로필 수정</a> 
					<a class="list-group-item with-badge active" href="account-address.jsp">
						<i class="icon-map"></i>주소록</a> 
					<a class="list-group-item" href="account-myCanvas.jsp">
						<i class="icon-head"></i>마이 캔버스</a>
				</nav>
			</div>
			<!-- 주소록 폼 -->
			<div class="col-lg-8">
				<div class="col-12 padding-top-1x">
					<!--  <h4>내 주소록</h4> -->
					<hr class="padding-bottom-1x">
					<div class="custom-control custom-radio custom-control-inline">
						<input class="custom-control-input" type="radio" id="addr1" 
							name="radio2" value=addr1 checked> 
							<c:if test="${!empty address}">
							<label class="custom-control-label" for="addr1"> ${address.a_name} </label>
							</c:if>
							<c:if test="${empty address}">
							<label class="custom-control-label" for="addr1"> 주소 1 </label>
							</c:if>
							
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input class="custom-control-input" type="radio" id="addr2" 
							name="radio2" value=addr2> 
							<c:if test="${!empty address}">
							<label class="custom-control-label" for="addr1"> ${address.a_name} </label>
							</c:if>
							<c:if test="${empty address}">
							<label class="custom-control-label" for="addr1"> 주소 2 </label>
							</c:if>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input class="custom-control-input" type="radio" id="addr3"
							name="radio2" value=addr3> 
							<c:if test="${!empty address}">
							<label class="custom-control-label" for="addr1"> ${address.a_name} </label>
							</c:if>
							<c:if test="${empty address}">
							<label class="custom-control-label" for="addr1"> 주소 3 </label>
							</c:if>
					</div>
					<hr class="margin-top-1x margin-bottom-1x">

				</div>
				<div class="padding-top-2x mt-2 hidden-lg-up"></div>
				<h4>주소지 수정</h4>
				<hr class="padding-bottom-1x">
				<form class="row" action="updateAddress.do" method="post" enctype="multipart/form-data">
					<div class="col-md-6">
						<div class="form-group">
							<label for="account-company">주소지명</label> 
							<input class="form-control" type="text" name="a_name" value="${address.a_name}"
								placeholder="우리집" required>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="account-country">지역</label> 
							<select class="form-control" name="city" value="${address.city}">
								<option selected>지역 선택</option>
								<option>서울특별시</option>
								<option>부산광역시</option>
								<option>인천광역시</option>
								<option>대구광역시</option>
								<option>광주광역시</option>
								<option>대전광역시</option>
								<option>울산광역시</option>
								<option>세종특별자치시</option>
								<option>경기도</option>
								<option>강원도</option>
								<option>충청북도</option>
								<option>충청남도</option>
								<option>경상북도</option>
								<option>경상남도</option>
								<option>전라북도</option>
								<option>전라남도</option>
								<option>제주도</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="account-zip">우편번호</label> 
							<input class="form-control" type="text" id="account-zip" 
							name="post" value="${address.post}" placeholder="(예)16074" required>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="account-city">상세주소 입력</label> 
							<input class="form-control" type="text" id="account-address"
								name="street" value="${address.street}" placeholder="(예)서초구 백암빌딩 비트캠프" required>
								<input type="hidden" name="id" value="test">
						</div>
						<div class="text-right">
						<!--toast : 실제 성공 시에만 출력하기 ??? -->
							<button class="btn btn-primary margin-bottom-none" type="submit"
								data-toast data-toast-position="topRight"
								data-toast-type="success" data-toast-icon="icon-circle-check"
								data-toast-title="완료!"
								data-toast-message="주소가 성공적으로 변경되었습니다.">업데이트</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Site Footer-->
	<footer class="site-footer">
      <div class="column text-center">
        <p class="text-sm mb-4">Need Support? Call<span class="text-primary">&nbsp;010 - 4355 - 2504</span></p>
        <p class="text-xxs text-muted mb-0 mt-3">© All rights reserved. Made with <i class='material-icons favorite text-danger'></i> by 곽연희, 송희, 오서현, 이동희</p>
      </div>
      <!-- <div class="column">
        <h3 class="widget-title text-center">Subscription<small>To receive latest offers and discounts from the shop.</small></h3>
        <form class="subscribe-form input-group" action="//rokaux.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;id=1194bb7544" method="post" target="_blank" novalidate><span class="input-group-btn">
            <button type="submit"><i class="material-icons send"></i></button></span>
          <input class="form-control" type="email" name="EMAIL" placeholder="Your e-mail"> -->
          <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
          <div style="position: absolute; left: -5000px;" aria-hidden="true">
            <input type="text" name="b_c7103e2c981361a6639545bd5_1194bb7544" tabindex="-1" value>
          </div>
        </form>
      </div>
      <!-- <div class="column">
        <h3 class="widget-title text-center">Payment Methods<small>We support one of the following payment methods.</small></h3>
        <div class="footer-cards"><img src="resources/img/cards.png" alt="Payment Methods">
        </div>
      </div> -->
    </footer>
	
	<!-- Back To Top Button-->
	<a class="scroll-to-top-btn" href="#"><i
		class="material-icons trending_flat"></i></a>
	<!-- Backdrop-->
	<div class="site-backdrop"></div>

</body>
</html>