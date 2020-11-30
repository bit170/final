<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>작품 페이지</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Unishop - Universal E-Commerce Template">
    <meta name="keywords" content="shop, e-commerce, modern, flat style, responsive, online store, business, mobile, blog, bootstrap 4, html5, css3, jquery, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Rokaux">
    <!-- Mobile Specific Meta Tag-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Favicon and Apple Icons-->
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="icon" type="image/png" href="favicon.png">
    <link rel="apple-touch-icon" href="touch-icon-iphone.png">
    <link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="180x180" href="touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="167x167" href="touch-icon-ipad-retina.png">
    <!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="resources/css/vendor.min.css">
    <!-- Main Template Styles-->
    <link id="mainStyles" rel="stylesheet" media="screen" href="resources/css/styles.min.css">
    <!-- Modernizr-->
    <script src="resources/js/modernizr.min.js"></script>
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
          <li class="active"><a href="main.do"><span>Home</span></a>
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
          <li><a href="#"><span>Pages</span></a>
            <ul class="sub-menu">
            <!-- 홈페이지 소개글?? (연희) -->
                <li><a href="about.do">우리 사이트는요</a></li>
                <li><a href="contacts.do">문의</a></li>
                <li><a href="faq.do">FAQ</a></li>
            </ul>
          </li>
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
                <li class="has-children active"><span><a href="main.do"><span>Home</span></a></span>
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
                <li class="has-children"><span><a href="#">Pages</a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                <li><a href="about.do">우리 사이트는요</a></li>
                <li><a href="contacts.do">문의</a></li>
                <li><a href="faq.do">FAQ</a></li>
                  </ul>
                </li>
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
                  <h4 class="entry-title"><a href="작가상세"><span class='text-highlighted'>검색어 일치부분</span> 블라블라</a></h4><span class="entry-meta">아이디?</span>
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
	            <!-- <a class="btn btn-primary mx-0 scale-up delay-1" href="shop-boxed-ls.jsp">Log Out</a> -->
	            <!-- <button class="btn btn-primary btn-block" type="submit"><a href="account-wishlist.jsp">My page</button> -->

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
                      <c:if test="${!empty cartList }">
                      <a class="navi-link text-uppercase" href="getCart.do"><span class="text-xxs">Expand Cart</span><i class="material-icons keyboard_arrow_right"></i></a>
                      </c:if>
                      <c:if test="${empty cartList }">
                      <a class="navi-link text-uppercase" href="getProductList.do"><span class="text-xxs">작품 보러가기</span><i class="material-icons keyboard_arrow_right"></i></a>
                      </c:if>
                      </div>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                    <c:if test="${empty cartList }">
                   	 장바구니가 비었습니다.
                    </c:if>
                    <c:if test="${!empty cartList }">
                      <div class="product-item"><a class="product-thumb" href="getProduct.do"><img src="resources/img/shop/cart/01.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="getProduct.do">작품이름</a></h4><span><em>Price:</em> 가격</span>
                        </div>
                      </div>
                    <!-- 삭제처리는 어떻게? 장바구니 품목을 디비에 저장하지 않으면 리스트형태로 세션이나 어딘가에 보관? 그럼 삭제버튼 클릭시 리스트에서 remove하면 될까? -->
                    <td class="text-center"><a class="remove-from-cart" href="삭제처리"><i class="material-icons icon_close"></i></a></td>
                    </c:if>  
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- 장바구니 합계 -->
            <hr class="mb-3">
            <div class="d-flex flex-wrap justify-content-between align-items-center">
              <div class="pr-2 py-1 text-sm">Subtotal: <span class='text-dark text-medium'>장바구니 합계 값</span></div>
              <c:if test="${!empty cartList }">
              <a class="btn btn-sm btn-success mb-0 mr-0" href="checkout.do">Checkout</a>
              </c:if>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- Page Content-->
    <div class="bg-secondary pb-4 padding-top-3x">
      <div class="container">
        <div class="row">
          <c:if test="${!empty product}">
          <!-- Product Gallery-->
          <div class="col-md-6 mb-30">
            <div class="product-gallery">
              <div class="product-carousel owl-carousel gallery-wrapper">
                <div class="gallery-item" data-hash="one">
                	<a href="img/shop/single/01.jpg" data-size="555x480">
                	<img src="resources/img/product/${product.p_img}" alt="Product"></a></div>
                <div class="gallery-item" data-hash="two">
                	<a href="img/shop/single/02.jpg" data-size="555x480">
                	<img src="resources/img/shop/single/02.jpg" alt="Product"></a></div>
                <div class="gallery-item" data-hash="three">
                	<a href="img/shop/single/03.jpg" data-size="555x480">
                	<img src="resources/img/shop/single/03.jpg" alt="Product"></a></div>
                <div class="gallery-item" data-hash="four">
                	<a href="img/shop/single/04.jpg" data-size="555x480">
                	<img src="resources/img/shop/single/04.jpg" alt="Product"></a></div>
              </div>
              <ul class="product-thumbnails">
                <li class="active"><a href="#one"><img src="resources/img/product/${product.p_img}" alt="Product"></a></li>
                <li><a href="#two"><img src="resources/img/shop/single/th02.jpg" alt="Product"></a></li>
                <li><a href="#three"><img src="resources/img/shop/single/th03.jpg" alt="Product"></a></li>
                <li><a href="#four"><img src="resources/img/shop/single/th04.jpg" alt="Product"></a></li>
              </ul>
            </div>
          </div>
          <!-- Product Info-->
          <div class="col-md-6 mb-30">
            <div class="card border-default bg-white pt-2 box-shadow">
            <!-- product 추가시 name 값 바꿔주기 -->
            	<form action="insertCart.do?p_code=p0001" method="get">
              <div class="card-body">
                <h2 class="mb-3">${product.p_name}</h2>
                <h3 class="text-normal">₩${product.price}</h3>
                <p class="text-sm text-muted"> ${product.a_id}<br> 작품 설명 : ${product.p_detail}</p>
                <div class="row">
                  <div class="col-sm-6">
                  </div>
                </div>
                <div class="row align-items-end mb-4">
                  <div class="col-sm-4">
                  </div>
                  <div class="col-sm-8">
                    <div class="pt-4 hidden-sm-up"></div>
                    <input class="btn btn-primary btn-block my-0" value="장바구니 담기" type="submit">
                  </div>
                </div>
                <ul class="list-unstyled text-sm mb-4">
                  <li><span class='text-dark text-medium'>상품코드:</span> ${product.p_code}</li>
                  <li><span class='text-dark text-medium'>Categories:</span> 
                  	<a href='#' class='navi-link'>${product.p_category}</a>, 
                  	<a href='#' class='navi-link'></a></li>
                </ul>
                </div>
            	</form>
                <div class="d-flex flex-wrap justify-content-between align-items-center">
                	<!-- 상품 업로드 시 href 루트 변경하기!! -->
                	<a class="btn btn-outline-secondary btn-sm text-danger" 
                		href="insertWishlist.do?p_code=${product.p_code}">
                	<i class="material-icons favorite_border"></i>&nbsp;위시리스트에 담기</a>
                </div>
              </div>
            </div>
            </c:if>
          </div>
        </div>
      </div>
    <div class="container padding-bottom-3x pt-5 mb-1">
      <!-- 추천 상품 Products Carousel-->
      <h3 class="text-center padding-top-2x mt-2 padding-bottom-1x">이런 상품은 어떠세요 ? </h3>
      <!-- Carousel-->
      <div class="owl-carousel" data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: true, &quot;margin&quot;: 30, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;576&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;991&quot;:{&quot;items&quot;:4},&quot;1200&quot;:{&quot;items&quot;:4}} }">
        <!-- Product-->
        <div class="product-card">
          <div class="product-card-thumb"> <span class="product-badge text-danger">Sale</span><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th10.jpg" alt="Product">
            <div class="product-card-buttons">
              <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
              <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
            </div>
          </div>
          <div class="product-card-details">
            <h3 class="product-card-title"><a href="shop-single.jsp">Pendant Lamp</a></h3>
            <h4 class="product-card-price">
              <del>$54.00</del>$27.00
            </h4>
          </div>
        </div>
        <!-- Product-->
        <div class="product-card">
          <div class="product-card-thumb">
	          	<a class="product-card-link" href="getProduct.do"></a>
	          	<img src="resources/img/shop/th11.jpg" alt="Product">
            <div class="product-card-buttons">
              <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
              <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
            </div>
          </div>
          <div class="product-card-details">
            <h3 class="product-card-title"><a href="shop-single.jsp">Stylish Chair</a></h3>
            <h4 class="product-card-price">$417.00</h4>
          </div>
        </div>
        <!-- Product-->
        <div class="product-card">
          <div class="product-card-thumb"><span class="product-rating text-warning"><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star_border"></i></span><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th07.jpg" alt="Product">
            <div class="product-card-buttons">
              <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
              <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
            </div>
          </div>
          <div class="product-card-details">
            <h3 class="product-card-title"><a href="shop-single.jsp">Lounge Chair</a></h3>
            <h4 class="product-card-price">$1099.00</h4>
          </div>
        </div>
        <!-- Product-->
        <div class="product-card">
          <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th16.jpg" alt="Product">
            <div class="product-card-buttons">
              <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
              <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
            </div>
          </div>
          <div class="product-card-details">
            <h3 class="product-card-title"><a href="shop-single.jsp">Navy Box Bench</a></h3>
            <h4 class="product-card-price">$75.00</h4>
          </div>
        </div>
        <!-- Product-->
        <div class="product-card">
          <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th09.jpg" alt="Product">
            <div class="product-card-buttons">
              <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
              <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
            </div>
          </div>
          <div class="product-card-details">
            <h3 class="product-card-title"><a href="shop-single.jsp">Campfire Table</a></h3>
            <h4 class="product-card-price">$1087.00</h4>
          </div>
        </div>
        <!-- Product-->
        <div class="product-card mb-30">
          <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th06.jpg" alt="Product">
            <div class="product-card-buttons">
              <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
              <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
            </div>
          </div>
          <div class="product-card-details">
            <h3 class="product-card-title"><a href="shop-single.jsp">LED Lighting</a></h3>
            <h4 class="product-card-price">$130.00</h4>
          </div>
        </div>
      </div>
    </div>
    <!-- Site Footer-->
    <footer class="site-footer">
      <div class="column text-center">
        <p class="text-sm mb-4">Need Support? Call<span class="text-primary">&nbsp;010 - 4335 - 2504</span></p>
        <p class="text-xxs text-muted mb-0 mt-3">© All rights reserved. Made with <i class='material-icons favorite text-danger'></i> by 곽연희, 송희, 오서현, 이동희</p>
      </div>
    </footer>
    <!-- Photoswipe container-->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="pswp__bg"></div>
      <div class="pswp__scroll-wrap">
        <div class="pswp__container">
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
        </div>
        <div class="pswp__ui pswp__ui--hidden">
          <div class="pswp__top-bar">
            <div class="pswp__counter"></div>
            <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
            <button class="pswp__button pswp__button--share" title="Share"></button>
            <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
            <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
            <div class="pswp__preloader">
              <div class="pswp__preloader__icn">
                <div class="pswp__preloader__cut">
                  <div class="pswp__preloader__donut"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
            <div class="pswp__share-tooltip"></div>
          </div>
          <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>
          <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>
          <div class="pswp__caption">
            <div class="pswp__caption__center"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="material-icons trending_flat"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="resources/js/vendor.min.js"></script>
    <script src="resources/js/scripts.min.js"></script>
  </body>
</html>