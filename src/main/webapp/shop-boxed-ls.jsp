<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Shop Boxed Left Sidebar
    </title>
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
    <link rel="stylesheet" media="screen"
	href="<c:url value="resources/css/vendor.min.css" />">
    <!-- Main Template Styles-->
	<link id="mainStyles" rel="stylesheet" media="screen"
	href="<c:url value="resources/css/styles.min.css" />">
    <!-- Modernizr-->
    <script src="<c:url value="resources/js/modernizr.min.js" />"></script>
  </head>
  <!-- Body-->
  <body>
    <!-- Navbar-->
    <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
<header class="navbar navbar-sticky">
		<!-- Site Branding-->
		<!-- 브랜드 로고 -->
      <div class="site-branding"><a class="site-logo hidden-xs-down" href="index.jsp"><img src="resources/img/logo/logo.png" alt="Unishop"></a><a class="site-logo logo-sm hidden-sm-up" href="index.jsp"><img src="resources/img/logo/logo-sm.png" alt="Unishop"></a>
      </div>
      <!-- Main Navigation-->
      <!-- 상단 메뉴 -->
      <nav class="site-menu">
        <ul>
          <!-- 해당 페이지에 class="active" 추가해줘야함-->
          <li class="active"><a href="index.jsp"><span>Home</span></a>
          </li>
          <li><a href="artist-boxed-ft.jsp"><span>Artist</span></a></li>
          <li><a href="shop-boxed-ls.jsp"><span>Shop</span></a>
            <ul class="sub-menu">
                <li><a href="shop-boxed-ls.jsp">수채화</a></li>
                <li><a href="shop-boxed-ls.jsp">유화</a></li>
                <li><a href="shop-boxed-ls.jsp">수묵화</a></li>
                <li><a href="shop-boxed-ls.jsp">크로키</a></li>
                <li><a href="shop-boxed-ls.jsp">기타</a></li>
            </ul>
          </li>
          <li><a href="#"><span>Pages</span></a>
            <ul class="sub-menu">
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contacts.jsp">Contacts</a></li>
                <li><a href="faq.jsp">Help / FAQ</a></li>
                <li><a href="404.jsp">404 Not Found</a></li>
              <li><a class="text-danger" href="docs/dev-setup.jsp">Documentation</a></li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- Toolbar-->
      <!-- 메뉴바 우측 아이콘 -->
      <div class="toolbar">
        <div class="inner"><a class="toolbar-toggle mobile-menu-toggle" href="#mobileMenu"><i class="material-icons menu"></i></a><a class="toolbar-toggle search-toggle" href="#search"><i class="material-icons search"></i></a><a class="toolbar-toggle" href="#account"><i class="material-icons person"></i></a><a class="toolbar-toggle" href="#cart"><i><span class="material-icons shopping_basket"></span>
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
                <li class="has-children active"><span><a href="index.jsp"><span>Home</span></a></span>
                </li>
                <li ><span><a href="artist-boxed-ft.jsp "><span>Artist</span></a></span></li>
                <li class="has-children"><span><a href="shop-boxed-ls.jsp"><span>Shop</span></a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                      <li><a href="shop-categories.jsp">수채화</a></li>
                      <li><a href="shop-categories.jsp">유화</a></li>
                      <li><a href="shop-categories.jsp">수묵화</a></li>
                      <li><a href="shop-categories.jsp">크로키</a></li>
                      <li><a href="shop-categories.jsp">기타</a></li>
                  </ul>
                </li>
                <li class="has-children"><span><a href="#">Pages</a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                      <li><a href="about.jsp">About Us</a></li>
                      <li><a href="contacts.jsp">Contacts</a></li>
                      <li><a href="faq.jsp">Help / FAQ</a></li>
                      <li><a href="404.jsp">404 Not Found</a></li>
                    <li><a class="text-danger" href="docs/dev-setup.jsp">Documentation</a></li>
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
                <div class="entry-thumb"><a href="shop-single.jsp"><img src="resources/img/shop/widget/01.png" alt="Product"></a></div>
                <div class="entry-content">
                  <h4 class="entry-title"><a href="shop-single.jsp">ㅇㅇ <span class='text-highlighted'>검색어와 일치하는 부분</span></a></h4><span class="entry-meta">가격</span>
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
          <!-- <div class="toolbar-section" id="account">
            <p class="text-muted text-sm mt-4"><h4>뫄뫄뫄<h4></p>
            <p class="text-muted text-sm mt-4">환영합니다</p>
            <button class="btn btn-primary btn-block" type="submit">Log Out</button>
            <button class="btn btn-primary btn-block" type="submit"><a href="account-wishlist.jsp">My page</button>
          </div> -->
          <div class="toolbar-section" id="account">
            <ul class="nav nav-tabs nav-justified" role="tablist">
              <li class="nav-item"><a class="nav-link active" href="#login" data-toggle="tab" role="tab">Log In</a></li>
              <li class="nav-item"><a class="nav-link" href="#signup" data-toggle="tab" role="tab">Sign Up</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade show active" id="login" role="tabpanel">
                <!-- 로그인 폼 -->
                <form autocomplete="off" id="login-form">
                  <div class="form-group input-group">
                    <input class="form-control" type="text" placeholder="Id" required><span class="input-group-addon"><i class="material-icons mail"></i></span>
                  </div>
                  <div class="form-group input-group">
                    <input class="form-control" type="password" placeholder="Password" required><span class="input-group-addon"><i class="material-icons lock"></i></span>
                  </div>
                  <!-- 로그인 유지 -> 어떻게? -->
                  <div class="custom-control custom-checkbox form-group">
                    <input class="custom-control-input" type="checkbox" id="logged" checked>
                    <label class="custom-control-label" for="logged">Keep me logged in</label>
                  </div>
                  <!-- 로그인 버튼 -->
                  <button class="btn btn-primary btn-block" type="submit">Log In</button>
                </form>
              </div>
              <div class="tab-pane fade" id="signup" role="tabpanel">
                <form autocomplete="off" id="signup-form">
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="Name" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="email" placeholder="Email" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="Id" required>
                    중복확인하고 싶은데에..
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="Password" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="Confirm Password" required>
                  </div>
                  <button class="btn btn-primary btn-block" type="submit">Sign Up</button>
                  <p class="text-muted text-sm mt-4">OR sign up with your social account</p><a class="media-btn media-facebook" href="#"><i class="socicon-facebook"></i><span>Signup with Facebook</span></a><a class="media-btn media-google" href="#"><i class="socicon-googleplus"></i><span>Signup with Google+</span></a><a class="media-btn media-twitter" href="#"><i class="socicon-twitter"></i><span>Signup with Twitter</span></a>
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
                      <div class="d-flex justify-content-between align-items-center">Products<a class="navi-link text-uppercase" href="cart.jsp"><span class="text-xxs">Expand Cart</span><i class="material-icons keyboard_arrow_right"></i></a></div>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.jsp"><img src="resources/img/shop/cart/01.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.jsp">작품이름</a></h4><span><em>Price:</em> 가격</span>
                        </div>
                      </div>
                    </td>
                    <!-- 삭제처리는 어떻게? 장바구니 품목을 디비에 저장하지 않으면 리스트형태로 세션이나 어딘가에 보관? 그럼 삭제버튼 클릭시 리스트에서 remove하면 될까? -->
                    <td class="text-center"><a class="remove-from-cart" href="삭제처리"><i class="material-icons icon_close"></i></a></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- 장바구니 합계 -->
            <hr class="mb-3">
            <div class="d-flex flex-wrap justify-content-between align-items-center">
              <div class="pr-2 py-1 text-sm">Subtotal: <span class='text-dark text-medium'>장바구니 합계 값</span></div><a class="btn btn-sm btn-success mb-0 mr-0" href="checkout-address.jsp">Checkout</a>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- Page Title-->
    <div class="page-title">
      <div class="container">
        <h1>제품 페이지</h1>
        <ul class="breadcrumbs">
          <li><a href="index.jsp">제품</a>
          </li>
          <li class="separator">&nbsp;/&nbsp;</li>
          <li>제품을 다 보자</li>
        </ul>
      </div>
    </div>
    <!-- Page Content-->
    <div class="container padding-bottom-3x mb-1">
      <div class="row">
        <!-- Content-->
        <div class="col-lg-9 col-md-8 order-md-2">
          <!-- Promo
          <div class="alert alert-image-bg alert-dismissible fade show text-center padding-top-2x padding-bottom-2x mb-4" style="background-image: url(img/banners/alert-bg.jpg)"><span class="alert-close text-white" data-dismiss="alert"></span><i class="d-block material-icons timer text-white mb-3" style="font-size: 50px;"></i>
            <div class="h3 text-medium text-white pb-2">Check our Limited Offers. Save up to 50%</div>
            <div><a class="btn btn-primary" href="#">View Offers</a></div>
          </div> -->
          <!-- Search-->
          <div class="d-flex flex-wrap-reverse flex-md-nowrap justify-content-center justify-content-sm-between align-items-center mb-30">
            <div class="pt-3 pb-1 pb-sm-3 text-sm text-center text-sm-left"><span class="text-muted mr-2">Showing</span>1- 12 items</div>
            <form class="input-group shop-search-box" method="get"><span class="input-group-btn">
                <button type="submit"><i class="material-icons search"></i></button></span>
              <input class="form-control" type="search" placeholder="Search shop">
            </form>
          </div>
          <!-- Products Grid-->
          <div class="row mb-2">
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"> <span class="product-badge text-danger">Sale</span><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th01.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">Storage Box</a></h3>
                  <h4 class="product-card-price">
                    <del>$49.00</del>$38.00
                  </h4>
                </div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"> <a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th04.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">File Cabinet</a></h3>
                  <h4 class="product-card-price">$265.00</h4>
                </div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><span class="product-rating text-warning"><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star_half"></i><i class="material-icons star_border"></i></span><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th03.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">Hook Basket</a></h3>
                  <h4 class="product-card-price">$112.50</h4>
                </div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th05.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">Lounge Chair</a></h3>
                  <h4 class="product-card-price">$1420.00</h4>
                </div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><span class="product-badge text-muted">Out of stock</span><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th06.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button><a class="btn btn-white btn-sm" hre="shop-single.jsp">View Details</a>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">LED Lighting</a></h3>
                  <h4 class="product-card-price">$130.00</h4>
                </div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th07.jpg" alt="Product">
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
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><span class="product-rating text-warning"><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star"></i><i class="material-icons star_border"></i></span><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th08.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">Tissue Holder</a></h3>
                  <h4 class="product-card-price">$76.40</h4>
                </div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
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
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
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
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th11.jpg" alt="Product">
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
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th14.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">Paper Table</a></h3>
                  <h4 class="product-card-price">$289.00</h4>
                </div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th13.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="material-icons check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button>
                  </div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="shop-single.jsp">Office Chair</a></h3>
                  <h4 class="product-card-price">$329.00</h4>
                </div>
              </div>
            </div>
          </div>
          <!-- Pagination-->
          <nav class="pagination">
            <div class="column">
              <ul class="pages">
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li>...</li>
                <li><a href="#">12</a></li>
              </ul>
            </div>
            <div class="column text-right hidden-xs-down"><a class="btn btn-outline-secondary btn-sm" href="#">Next&nbsp;<i class="material-icons keyboard_arrow_right"></i></a></div>
          </nav>
        </div>
        <!-- Sidebar          -->
        <div class="col-lg-3 col-md-4 order-md-1">
          <div class="sidebar-toggle position-left"><i class="material-icons filter_list"></i></div>
          <aside class="sidebar sidebar-offcanvas position-left"><span class="sidebar-close"><i class="material-icons icon_close"></i></span>
            <!-- Widget Categories-->
            <section class="widget widget-categories pt-0">
              <h3 class="widget-title">작품 Categories</h3>
              <ul>
                <li class="has-children expanded"><a href="#">Desks &amp; Benching</a><span>(1138)</span>
                  <!-- <ul>
                    <li><a href="#">Executive Desks</a><span>(508)</span>
                      <ul>
                        <li><a href="#">Standing Desks</a></li>
                        <li><a href="#">Benching Desks</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Single Desks</a><span>(423)</span>
                      <ul>
                        <li><a href="#">Standing Desks</a></li>
                        <li><a href="#">Benching Desks</a></li>
                      </ul>
                    </li>
                    <li><a href="#">File Cabinets</a><span>(97)</span></li>
                    <li><a href="#">Office Chairs</a><span>(110)</span></li>
                  </ul> -->
                </li>
                <li class="has-children"><a href="#">Lighting</a><span>(2356)</span>
                  <!-- <ul>
                    <li><a href="#">Indoor Lights</a><span>(1032)</span>
                      <ul>
                        <li><a href="#">Ceiling Lights</a></li>
                        <li><a href="#">Kitchen Lighting</a></li>
                        <li><a href="#">Wall Lights</a></li>
                        <li><a href="#">Lamps</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Outdoor Lights</a><span>(937)</span>
                      <ul>
                        <li><a href="#">Light Stands</a></li>
                        <li><a href="#">Wall Lights</a></li>
                        <li><a href="#">Light Bulbs</a></li>
                        <li><a href="#">Lamps</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Dimmers &amp; Controls</a><span>(386)</span></li>
                  </ul> -->
                </li>
                <li class="has-children"><a href="#">Storage Units</a><span>(420)</span>
                  <!-- <ul>
                    <li><a href="#">Bookcases</a><span>(180)</span></li>
                    <li><a href="#">Box Seats &amp; Benches</a><span>(132)</span></li>
                    <li><a href="#">Cupboards</a><span>(47)</span></li>
                    <li><a href="#">Caskets</a><span>(61)</span></li>
                  </ul> -->
                </li>
                <li class="has-children"><a href="#">Furniture Accessories</a><span>(874)</span>
                  <!-- <ul>
                    <li><a href="#">Cable &amp; Power Management</a><span>(211)</span></li>
                    <li><a href="#">Desk Add Ons</a><span>(195)</span></li>
                    <li><a href="#">Desk Risers</a><span>(159)</span></li>
                    <li><a href="#">Lamps</a><span>(203)</span></li>
                    <li><a href="#">Monitor Arms</a><span>(106)</span></li>
                  </ul> -->
                </li>
              </ul>
            </section>
            <!-- Widget Sorting-->
            <section class="widget widget-icon-list">
              <h3 class="widget-title">Sort By</h3>
              <ul>
                <li><a href="#"><i class="material-icons sort"></i>Default</a></li>
                <li><a href="#"><i class="material-icons favorite_border"></i>Popularity</a></li>
                <li><a href="#"><i class="material-icons vertical_align_top"></i>Last entries</a></li>
                <!-- <li><a href="#"><i class="material-icons star_border"></i>Average rating</a></li> -->
                <li><a href="#"><i class="material-icons sort_by_alpha"></i>Alphabetically</a></li>
              </ul>
            </section>
            <!-- Widget Price Range-->
            <section class="widget widget-categories">
              <h3 class="widget-title">Price Range</h3>
              <form class="price-range-slider" method="post" data-start-min="250" data-start-max="650" data-min="0" data-max="1000" data-step="1">
                <div class="ui-range-slider"></div>
                <footer class="ui-range-slider-footer">
                  <div class="column">
                    <button class="btn btn-outline-primary btn-sm" type="submit">Filter</button>
                  </div>
                  <div class="column">
                    <div class="ui-range-values">
                      <div class="ui-range-value-min">$<span></span>
                        <input type="hidden">
                      </div>&nbsp;-&nbsp;
                      <div class="ui-range-value-max">$<span></span>
                        <input type="hidden">
                      </div>
                    </div>
                  </div>
                </footer>
              </form>
            </section>
            <!-- Widget Brand Filter-->
            <!-- <section class="widget">
              <h3 class="widget-title">Filter by Brand</h3>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="aspen">
                <label class="custom-control-label" for="aspen">Aspen Home&nbsp;<span class="text-muted">(254)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="bernhardt">
                <label class="custom-control-label" for="bernhardt">Bernhardt&nbsp;<span class="text-muted">(39)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="allen">
                <label class="custom-control-label" for="allen">Ethan Allen&nbsp;<span class="text-muted">(128)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="harris">
                <label class="custom-control-label" for="harris">Henkle Harris&nbsp;<span class="text-muted">(310)</span></label>
              </div>
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="flanigan">
                <label class="custom-control-label" for="flanigan">Raymour &amp; Flanigan&nbsp;<span class="text-muted">(42)</span></label>
              </div>
            </section> -->
            <!-- Widget Colors-->
            <!-- <section class="widget widget-colors">
              <h3 class="widget-title">Filter by Color</h3>
              <ul>
                <li><a href="#"><span class="color" style="background-color: #93c4ef;"></span>Blue</a></li>
                <li><a href="#"><span class="color" style="background-color: #a7c04d;"></span>Green</a></li>
                <li><a href="#"><span class="color" style="background-color: #ef0568;"></span>Red</a></li>
                <li><a href="#"><span class="color" style="background-color: #ffce2b;"></span>Yellow</a></li>
              </ul>
            </section> -->
            <!-- Widget Tags-->
            <!-- <section class="widget widget-tags">
              <h3 class="widget-title">Popular Tags</h3><a class="tag" href="#">#furniture</a><a class="tag" href="#">#lighting</a><a class="tag" href="#">#LED</a><a class="tag" href="#">#interior</a><span class="tag active">#active tag</span><a class="tag" href="#">#office supplies</a><a class="tag" href="#">#storage</a>
            </section> -->
          </aside>
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
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="material-icons trending_flat"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="<c:url value="resources/js/vendor.min.js" />"></script>
	<script src="<c:url value="resources/js/scripts.min.js" />"></script>
	
  </body>
</html>