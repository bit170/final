<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>마이페이지 - 마이 캔버스</title>
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

</head>
<!-- Body-->
<body>
    <!-- Navbar-->
    <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
    <header class="navbar navbar-sticky">
      <!-- Site Branding-->
      <!-- 브랜드 로고 -->
      <div class="site-branding"><a class="site-logo hidden-xs-down" href="main.do"><img src="resources/img/logo/logo.png" alt="Unishop"></a>
      	<a class="site-logo logo-sm hidden-sm-up" href="main.do"><img src="resources/img/logo/logo-sm.png" alt="Unishop"></a>
      </div>
      <!-- Main Navigation-->
      <!-- 상단 메뉴 -->
      <nav class="site-menu">
        <ul>
          <!-- 해당 페이지에 class="active" 추가해줘야함-->
          <li><a href="main.do"><span>Home</span></a>
          </li>
          <li><a href="getArtistList.do"><span>Artist</span></a></li>
          <li><a href="getProductList.do"><span>Shop</span></a>
            <ul class="sub-menu">
                <li><a href="getProductList.do?category=water">수채화</a></li>
                <li><a href="getProductList.do?category=oil">유화</a></li>
                <li><a href="getProductList.do?category=black">수묵화</a></li>
                <li><a href="getProductList.do?category=crocky">크로키</a></li>
                <li><a href="getProductList.do?category=etc">기타</a></li>
            </ul>
          </li>
          <c:if test="${!empty member}">
          <li class="active"><a href="getWishlists.do?id=${member.id}"><span>MyPage</span></a>
            <ul class="sub-menu">
                <li><a href="getFollowList.do?id=${member.id}">팔로우</a></li>
                <li><a href="getOrderList.do?id=${member.id}">주문목록</a></li>
                <li><a href="getMember.do?id=${member.id}">프로필 수정</a></li>
                <li><a href="getAddress.do">주소록</a></li>
                <li><a href="getMyCanvas.do">마이 캔버스</a></li>
            </ul>
          </li>
          </c:if>
          <c:if test="${empty member}">
          <li class="active"><a href="#" data-toast data-toast-type="danger" 
	        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
	        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">
        			<span>MyPage</span></a>
            <ul class="sub-menu">
                <li><a href="#" data-toast data-toast-type="danger" 
	        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
	        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">팔로우</a></li>
                <li><a href="#" data-toast data-toast-type="danger" 
	        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
	        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">주문목록</a></li>
                <li><a href="#" data-toast data-toast-type="danger" 
	        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
	        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">프로필 수정</a></li>
                <li><a href="#" data-toast data-toast-type="danger" 
	        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
	        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">주소록</a></li>
                <li><a href="#" data-toast data-toast-type="danger" 
	        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
	        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">마이 캔버스</a></li>
            </ul>
          </li>
          </c:if>
        </ul>
      </nav>
      <!-- Toolbar-->
      <!-- 메뉴바 우측 아이콘 -->
      <div class="toolbar">
        <div class="inner">
        	<a class="toolbar-toggle mobile-menu-toggle" href="#mobileMenu"><i class="material-icons menu"></i></a>
        	<a class="toolbar-toggle search-toggle" href="#search"><i class="material-icons search"></i></a>
        	<a class="toolbar-toggle" href="#account"><i class="material-icons person"></i></a>
        	<a class="toolbar-toggle" href="#cart"><i><span class="material-icons shopping_basket"></span>
          <!-- 조건문 넣기 -->
          <span class="count">합</span></i></a></div>
        <!-- Toolbar Dropdown-->
        <div class="toolbar-dropdown">
          <!-- Mobile Menu Section-->
          <!-- 모바일 돋보기 -->
          <div class="toolbar-section" id="mobileMenu">
            <!-- Search Box-->
            <form class="input-group form-group" method="get"><span class="input-group-btn">
                <button type="submit"><i class="material-icons search"></i></button></span>
              <input class="form-control" type="search" placeholder="태그/작품/작가 검색">
            </form>
            <!-- Slideable (Mobile) Menu-->
            <nav class="slideable-menu mt-4">
              <ul class="menu">
                <!-- 페이지에 active 클래스 추가해줘야함 -->
                <li class="has-children"><span><a href="main.do"><span>Home</span></a></span>
                </li>
                <li ><span><a href="getArtistList.do "><span>Artist</span></a></span></li>
                <li class="has-children"><span><a href="getProductList.do"><span>Shop</span></a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                <li><a href="getProductList.do?category=water">수채화</a></li>
                <li><a href="getProductList.do?category=oil">유화</a></li>
                <li><a href="getProductList.do?category=black">수묵화</a></li>
                <li><a href="getProductList.do?category=crocky">크로키</a></li>
                <li><a href="getProductList.do?category=etc">기타</a></li>
                  </ul>
                </li>
                <c:if test="${!empty member}">
                <li class="has-children active"><span><a href="getWishlist.do?id=${member.id}">MyPage</a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                <li><a href="getFollowList.do?id=${member.id}">팔로우</a></li>
                <li><a href="getOrderList.do?id=${member.id}">주문목록</a></li>
                <li><a href="getMember.do?id=${member.id}">프로필 수정</a></li>
                <li><a href="getAddress.do">주소록</a></li>
                <li><a href="getMyCanvas.do">마이 캔버스</a></li>
                  </ul>
                </li>
                </c:if>
                <c:if test="${empty member}">
                <li class="has-children active"><span><a class="btn btn-sm btn-success mb-0 mr-0" href="#" data-toast data-toast-type="danger" 
	        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
	        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">
        			MyPage</a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                <li><a href="#">팔로우</a></li>
                <li><a href="#">주문목록</a></li>
                <li><a href="#">프로필 수정</a></li>
                <li><a href="#">주소록</a></li>
                <li><a href="#">마이 캔버스</a></li>
                  </ul>
                </li>
                </c:if>
              </ul>
            </nav>
          </div>
          <!-- Search Section-->
          <div class="toolbar-section" id="search">
            <form class="search-form mb-2" method="get">
              <input type="search" placeholder="태그/작가/작품을 검색"><i class="material-icons search"></i>
            </form>
            <!-- 검색 결과 -->
            <!-- Products-->
            <div class="widget widget-featured-products">
              <h3 class="widget-title">Found in Products</h3>
              <!-- Entry-->
              <!-- 검색결과 주르륵 -->
              <div class="entry">
                <div class="entry-thumb">
                	<a href="getProduct.do"><img src="resources/img/shop/widget/01.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title">
                  	<a href="getProduct.do">ㅇㅇ <span class='text-highlighted'>검색어와 일치하는 부분</span></a></h4><span class="entry-meta">가격</span>
                </div>
              </div>
            </div>
            <!-- 작가결과-->
            <div class="widget widget-featured-products">
              <h3 class="widget-title">Found in Artist</h3>
              <!-- Entry-->
              <div class="entry">
                <div class="entry-thumb"><a href="작가상세"><img src="resources/img/blog/widget/01.jpg" alt="Post"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="작가상세"><span class='text-highlighted'>검색어 일치부분</span> 블라블라</a></h4>
                  	<span class="entry-meta">아이디?</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Account Section-->
          <!-- 사람아이콘 -->

          <!-- 로그인 후 로그아웃, 마이페이지버튼 -->
          <c:if test="${!empty member}">
	         <div class="toolbar-section" id="account">
	         <form action="logout.do" method="post">
	            <p class="text-muted text-sm mt-4"><h4>${member.id }<span>님</span><h4></p>
	            <p class="text-muted text-sm mt-4">환영합니다</p>
	            <button class="btn btn-primary" type="submit">Log Out</button> 

	            <a class="btn btn-primary mx-0 scale-up delay-1" href="account.do">My page</a>

	          </form>  
	         </div>
          </c:if>
          <c:if test="${empty member}">
          
          <div class="toolbar-section" id="account">
            <ul class="nav nav-tabs nav-justified" role="tablist">
              <li class="nav-item"><a class="nav-link active" href="#login" data-toggle="tab" role="tab">Log In</a></li>
              <li class="nav-item"><a class="nav-link" href="#signup" data-toggle="tab" role="tab">Sign Up</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade show active" id="login" role="tabpanel">
                <!-- 로그인 폼 -->
                <form action="login.do" method="post" autocomplete="off" id="login-form">
                  <div class="form-group input-group">
                    <input class="form-control" type="text" placeholder="Id" name="id" required>
                    <span class="input-group-addon"><i class="material-icons mail"></i></span>
                  </div>
                  <div class="form-group input-group">
                    <input class="form-control" type="password" placeholder="Password" name="pwd" required>
                    <span class="input-group-addon"><i class="material-icons lock"></i></span>
                  </div>
                  <!-- 로그인 유지 -> 어떻게? -->
                  <div class="custom-control custom-checkbox form-group">
                    <input class="custom-control-input" type="checkbox" id="logged" checked>
                    <label class="custom-control-label" for="logged">로그인 유지</label>
                  </div>
                  <!-- 로그인 버튼 -->
                  <button class="btn btn-primary btn-block" type="submit">Log In</button>
                </form>
              </div>
              <div class="tab-pane fade" id="signup" role="tabpanel">
                <form method="post" autocomplete="off" id="signup-form" action="signUp.do"> 
                <!-- <form method="post" autocomplete="off" id="signup-form" > -->
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="Name" name="name" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="email" placeholder="Email" name="email" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="Phone" name="phone" required>
                  </div>
              	<div class="form-group">
                    <input class="form-control" type="text" placeholder="Id" id="signup_id" name="id" required>
                    <div id="idCheck_result"></div>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="Password" id="pw1" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="Confirm Password" id="pw2" name="pwd" required>
                    <div id="pwCheck_result"></div>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="NickName" name="nickname" required>
                  </div>
                  <button class="btn btn-primary btn-block" type="submit">회원가입</button>
                </form>
              </div>
            </div>
          </div>
          </c:if>
          <!-- Shopping Cart Section-->
          <div class="toolbar-section" id="cart">
            <div class="table-responsive shopping-cart mb-0">
              <table class="table">
                <thead>
                  <tr>
                    <th colspan="2">
                      <div class="d-flex justify-content-between align-items-center">Products
                      <c:if test="${!empty cartList}">
                      <a class="navi-link text-uppercase" href="getCart.do"><span class="text-xxs">장바구니 크게 보기</span><i class="material-icons keyboard_arrow_right"></i></a>
                      </c:if>
                      <c:if test="${empty cartList}">
                      <a class="navi-link text-uppercase" href="getProductList.do"><span class="text-xxs">작품 보러가기</span><i class="material-icons keyboard_arrow_right"></i></a>
                      </c:if>
                      </div>
                    </th>
                  </tr>
                </thead>
                <tbody>
                    <c:if test="${empty cartList}">
                  <tr>
                    <td>
                   	 장바구니가 비었습니다.
                    </td>
                  </tr>
                    </c:if>
                    <c:if test="${!empty cartList}">
		                <c:forEach var="cart" items="${cartList}">
                  <tr>
                    <td>
                      <div class="product-item">
                      <a class="product-thumb" href="getProduct.do?p_code=${cart.p_code}">
                      	  <img src="resources/img/product/5.png" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title">
                          	<a href="getProduct.do?p_code=${cart.p_code}">${cart.p_name}</a></h4>
                          	<span><em>가 격 : </em>₩ <fmt:formatNumber pattern="###,###,###" value="${cart.c_price}" /></span>
                        </div>
                      </div>
                    </td>
                    <td class="text-center"><a class="remove-from-cart" href="deleteCart.do?p_code=${cart.p_code}"><i class="material-icons icon_close"></i></a></td>
                  </tr>
                    </c:forEach>
                    </c:if>  
                </tbody>
              </table>
            </div>
            <!-- 장바구니 합계 -->
            <hr class="mb-3">
            <div class="d-flex flex-wrap justify-content-between align-items-center">
              <c:if test="${!empty cartList }">
              <c:set var = "total" value= "0" />
		        <c:forEach var="cart" items="${cartList}">
		        <c:set var = "total" value="${total + cart.c_price}" />
		      	</c:forEach>
              <div class="pr-2 py-1 text-sm">합 계 : <span class='text-dark text-medium'>
              ₩ <fmt:formatNumber pattern="###,###,###" value="${total}" />
              		<%-- <c:out value='${total}' /> --%></span></div>
             <c:if test="${!empty member}">
              	<a class="btn btn-sm btn-success mb-0 mr-0" href="checkout.do?id=${member.id}">주문하기</a>
              </c:if>
             <c:if test="${empty member}">
              <a class="btn btn-sm btn-success mb-0 mr-0" href="#" data-toast data-toast-type="danger" 
        		data-toast-position="topRight" data-toast-icon="icon-circle-check" 
        		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">주문하기</a>
             </c:if>
            </c:if>
            </div>
          </div>
        </div>
      </div>
    </header>
	<!-- Page Title-->
	<div class="page-title">
		<div class="container">
			<h1>나의 캔버스</h1>
			<ul class="breadcrumbs">
				<li><a href="main.do">홈</a></li>
				<li class="separator">&nbsp;/&nbsp;</li>
				<li><a href="account.do">나의 계정</a></li>
				<li class="separator">&nbsp;/&nbsp;</li>
				<li>나의 프로필</li>
			</ul>
		</div>
	</div>
	<!-- Page Content-->
	<div class="container padding-bottom-3x mb-2">
		<div class="row">
			<div class="col-lg-4">
				<aside class="user-info-wrapper">
					<div class="user-cover"
						style="background-image: url(img/account/user-cover-img.jpg);">
					</div>
					<div class="user-info">

						<div class="user-data">
							<h5>${member.name}님의 계정</h5>
							<span>${member.joindate}</span>
						</div>
					</div>
				</aside>
				<!-- 마이페이지 목록 수정 (연희) -->
				<nav class="list-group">
					<a class="list-group-item" href="getWishlists.do?id=${member.id}">
						<i class="icon-heart"></i>위시리스트
					<c:if test="${!empty wishlist}">
						<span class="badge badge-default badge-pill">1</span>
						</c:if>
					<c:if test="${empty wishlist}">
						<span class="badge badge-default badge-pill"></span>
						</c:if>
						</a>
					<a class="list-group-item" href="getFollowList.do?id=${member.id}">
						<i class="icon-heart"></i>팔로우
						<c:if test="${!empty follow}">
						<span class="badge badge-default badge-pill">1</span>
						</c:if>
						<c:if test="${empty follow}">
						<span class="badge badge-default badge-pill"></span>
						</c:if>
						</a> 
					<a class="list-group-item" href="getOrderList.do?id=${member.id}">
						<i class="icon-heart"></i>주문목록
						<c:if test="${!empty order}">
						<span class="badge badge-default badge-pill">1</span>
						</c:if>
						<c:if test="${empty order}">
						<span class="badge badge-default badge-pill"></span>
						</c:if>
						</a> 
					<a class="list-group-item" href="getMember.do?id=${member.id}">
						<i class="icon-head"></i>프로필 수정</a> 
					<a class="list-group-item" href="getAddress.do">
						<i class="icon-map"></i>주소록</a> 
					<a class="list-group-item with-badge active" href="getMyCanvas.do">
						<i class="icon-head"></i>마이 캔버스</a>
				</nav>
			</div>
	
			<div class="col-lg-8">
				<h4> 작가 정보 수정 </h4>
				<hr class="margin-bottom-1x">
				<div class="row">
				<div class="col-sm-6">
				<div class="form-group">
							<label for="checkout-ln">작가 사진</label>
							<div class="custom-file">
								<input class="custom-file-input" type="file" id="file-input">
								<label class="custom-file-label" for="file-input">파일
									추가...</label>
							</div>
						</div>
					</div>
				<div class="col-sm-6">
						<div class="form-group">
							<label for="checkout-ln"> 작가 소개글</label>
							<textarea class="form-control text-muted" id="textarea-input"
								rows="5">작가를 간략하게 설명해주세요 !</textarea>
						</div>
					</div>
					</div>
					<div class="d-flex justify-content-between">
					<a class="btn btn-outline-secondary" href="account-myCanvas.do">마이페이지로</a>
					<div class="text-center">
						<a class="btn btn-primary" href="account-myCanvas.do">수정하기</a>
					</div>
				</div>
					<hr class="margin-bottom-1x">
					
				<div class="padding-top-2x mt-2 hidden-lg-up"></div>
				<form class="row">
					<div class="col-md-10">
						<div class="form-group">
							<h4> 작품 추가 & 수정하기 </h4>
							<hr class="margin-bottom-1x">
							<div class="isotope-grid cols-2 grid-no-gap">
								<div class="gutter-sizer"></div>
								<div class="grid-sizer"></div>
								<div class="grid-item gallery-item">
									<a href="insert-canvas.do"><img
										src="resources/img/gallery/th05.jpg" alt="Image"></a>
										<span class="caption">새 작품 추가하기</span>
									</div>
								</div>
							</div>
					<div class="d-flex justify-content-center">
					<a class="btn btn-outline-secondary" href="account-myCanvas.do">마이페이지로</a>
					<div class="text-center">
						<a class="btn btn-primary" href="account-myCanvas.do">수정하기</a>
					</div>
				</div>
					<hr class="margin-bottom-1x">
					
				<div class="padding-top-2x mt-2 hidden-lg-up"></div>
				<form class="row">
					<div class="col-md-10">
						<div class="form-group">
							<h4> 작품 추가 & 수정하기 </h4>
							<hr class="margin-bottom-1x">
							<div class="isotope-grid cols-2 grid-no-gap">
								<div class="gutter-sizer"></div>
								<div class="grid-sizer"></div>
								<div class="grid-item gallery-item">
									<a href="insert-canvas.do">
									<img src="resources/img/gallery/th05.jpg" alt="Image"></a>
										<span class="caption">새 작품 추가하기</span>
		<!-- >>>>>>> branch 'yhg' of https://github.com/bit170/final.git -->
								</div>
								<div class="grid-item gallery-item">
									<a href="update-canvas.do">
									<img src="resources/img/gallery/th01.jpg" alt="Image"></a>
									<span class="caption">Bonsai on the table</span>
								</div>
								<div class="grid-item gallery-item">
									<a href="update-canvas.do"><img
										src="resources/img/gallery/th04.jpg" alt="Image"></a><span
										class="caption">Working desk</span>
								</div>
								<div class="grid-item gallery-item">
									<a href="update-canvas.do"><img
										src="resources/img/gallery/th06.jpg" alt="Image"></a><span
										class="caption">Table lamp</span>
								</div>
							</div>
						</div>
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
	<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
	<script src="<c:url value="resources/js/vendor.min.js" />"></script>
	<script src="<c:url value="resources/js/scripts.min.js" />"></script>
</body>
</html>