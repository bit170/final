<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Unishop | Universal E-Commerce Template</title>
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
    Main Template Styles
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
          <li><a href="getProductList.do"><span>Shop</span></a>
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
                    <input class="form-control" type="text" placeholder="Id" name="id" required><span class="input-group-addon"><i class="material-icons mail"></i></span>
                  </div>
                  <div class="form-group input-group">
                    <input class="form-control" type="password" placeholder="Password" name="pwd" required><span class="input-group-addon"><i class="material-icons lock"></i></span>
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
                <form method="post" autocomplete="off" id="signup-form">
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
                    <div style="display:flex">
                      <input class="form-control" type="text" placeholder="Id" name="id" required style="max-width:80%">
                      <a class="btn btn-primary" style="margin:0;margin-left:2%" href="/idCheck.do" >중복확인</a>
                      
                      <%-- <a class="btn btn-primary" style="margin:0;margin-left:2%" href="idCheck.jsp?id=<%= %>">중복확인</a> --%>
                      <!-- <script type="text/javascript">
                         var id = $(document).getElementByName("id").value();
                         function idCheck() {
                        	alert(id); 
                     		location.href = 'idCheck.jsp?id='+id;
                  		 }
                      </script> -->
                    </div>
                    <!-- <script type="text/javascript">
                       function idCheck() {
                          var id = document.getbyName("id").value;
                          var href = "idCheck.jsp?id="+id;
                     document.location.href = href;
                  }
                    </script> -->
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="Password" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="Confirm Password" name="pwd" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="NickName" name="nickname" required>
                  </div>
                  <button class="btn btn-primary btn-block" type="submit">Sign Up</button>
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
              <div class="pr-2 py-1 text-sm">Subtotal: <span class='text-dark text-medium'>장바구니 합계 값</span></div><a class="btn btn-sm btn-success mb-0 mr-0" href="checkout-address.jsp?id=${member.id}">Checkout</a>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- Page Content-->
    <!-- Hero Slider-->
    <section class="hero-slider">
      <div class="owl-carousel large-controls dots-inside pb-4" data-owl-carousel="{ &quot;nav&quot;: true, &quot;dots&quot;: true, &quot;loop&quot;: true, &quot;autoplay&quot;: true, &quot;autoplayTimeout&quot;: 8000 }">
        <div class="container-fluid">
          <div class="row align-items-center">
            <div class="col-md-6">
              <div class="pr-3 pt-5 pb-0 py-md-5"><img class="d-block" src="resources/img/hero-slider/01.png" alt="Product"></div>
            </div>
            <div class="col-xl-4 col-md-6">
              <div class="padding-top-3x padding-bottom-3x px-3 px-lg-5 text-center text-md-left from-bottom">
                <h2>그림 사러 오세요~</h2>
                <p class="text-sm text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p><a class="btn btn-primary mx-0 scale-up delay-1" href="shop-boxed-ls.jsp">View Collection</a>
              </div>
            </div>
          </div>
        </div>
        <div class="container-fluid">
          <div class="row align-items-center">
            <div class="col-md-6">
              <div class="pr-3 pt-5 pb-0 py-md-5"><img class="d-block" src="resources/img/hero-slider/02.png" alt="Product"></div>
            </div>
            <div class="col-xl-4 col-md-6">
              <div class="padding-top-3x padding-bottom-3x px-3 px-lg-5 text-center text-md-left from-bottom">
                <h2> &amp; 세상에 알려지지 않은 작가들~ </h2>
                <p class="text-sm text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p><a class="btn btn-primary mx-0 scale-up delay-1" href="artist-boxed-ft.jsp">더 많은 작가들</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Top Categories-->
    <!-- 작가  -->
    <!-- 설정이 네개로 픽스돼있음. 네명만 추천하는 걸로.. -->
    <section class="container padding-top-3x padding-bottom-3x">
      <h3 class="text-center mb-30">인기 작가</h3>
      <div class="row">
        <div class="col-md-3 col-sm-6 mb-30"><a class="category-card flex-wrap text-center pt-0" href="artist-single.jsp">
            <div class="category-card-thumb w-100"><img src="resources/img/shop/categories/03.jpg" alt="Category"></div>
            <div class="category-card-info w-100">
              <h3 class="category-card-title">작가이름?</h3>
              <h4 class="category-card-subtitle">뭘 넣을까</h4>
            </div></a></div>
        <!-- <div class="col-md-3 col-sm-6 mb-30"><a class="category-card flex-wrap text-center pt-0" href="shop-boxed-ls.jsp">
            <div class="category-card-thumb w-100"><img src="resources/img/shop/categories/04.jpg" alt="Category"></div>
            <div class="category-card-info w-100">
              <h3 class="category-card-title">작가2</h3>
              <h4 class="category-card-subtitle">Starting from $220.00</h4>
            </div></a></div>
        <div class="col-md-3 col-sm-6 mb-30"><a class="category-card flex-wrap text-center pt-0" href="shop-boxed-ls.jsp">
            <div class="category-card-thumb w-100"><img src="resources/img/shop/categories/05.jpg" alt="Category"></div>
            <div class="category-card-info w-100">
              <h3 class="category-card-title">작가3</h3>
              <h4 class="category-card-subtitle">Starting from $198.00</h4>
            </div></a></div>
        <div class="col-md-3 col-sm-6 mb-30"><a class="category-card flex-wrap text-center pt-0" href="shop-boxed-ls.jsp">
            <div class="category-card-thumb w-100"><img src="resources/img/shop/categories/02.jpg" alt="Category"></div>
            <div class="category-card-info w-100">
              <h3 class="category-card-title">작가4</h3>
              <h4 class="category-card-subtitle">Starting from $95.99</h4>
            </div></a></div> -->
      </div>
      <div class="text-center"><a class="btn btn-outline-secondary mb-0" href="artist-boxed-ft.jsp">모든 작가</a></div>
    </section>
    <!-- 작품 추천 -->
    <section class="container-fluid padding-top-3x pb-5">
      <h3 class="text-center mb-30">인기 작품? 작품들</h3>
      <div class="row" >
        <!-- Special Offer-->

        <!-- Fetured Products-->
        <div class="col-xl-9 col-md-8">
          <div class="row">
            <!-- Item-->
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb"> <span class="product-badge text-danger">Sale</span><a class="product-card-link" href="shop-single.jsp"></a><img src="resources/img/shop/th01.jpg" alt="Product">
                  <div class="product-card-buttons">
                    <!-- 버튼 클릭시 위시리스트 디비작업 -->
                    <button class="btn btn-white btn-sm btn-wishlist" data-toggle="tooltip" title="Wishlist"><i class="material-icons favorite_border"></i></button>
                    <!-- 버튼 클릭시 해당 제품 데이터 어딘가에 저장 후 장바구니에 넣을것 -->
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
          </div>
        </div>
        <!-- <div class="col-xl-3 col-md-4" style="display:flex" >
            <div class="text-center" style="margin-top:65%"><a class="btn btn-outline-secondary mb-0" href="shop-boxed-ls.jsp">모든 작품</a></div>
        </div> -->
        <div class="col-xl-3 col-md-4" style="display:flex">
          <div class="card pt-3 pb-2 mb-30">
            <div class="card-body text-center">
              <div class="text-center" style="margin-top:65%">
                <h2>  더 많은 작품이 궁금하세요?</h2>
                <a class="btn btn-outline-secondary mb-0" href="shop-boxed-ls.jsp">모든 작품</a>
              </div>
              <!-- <h2>Special Offer <span class='text-danger'>-30%</span></h2><a class="d-inline-block" href="shop-single.jsp"><img src="resources/img/shop/special-offer02.jpg" alt="Special Offer"></a>
              <h3 class="h5 text-normal pt-3"><a class="navi-link" href="shop-single.jsp">FLOS Indoor Lighting</a></h3>
              <del class="lead text-muted mr-2">$800.00</del><span class="h4 text-danger">$560.00</span> -->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Video Popup-->
    <!-- <section class="fw-section padding-top-9x padding-bottom-9x" style="background-image: url(img/backgrounds/video_popup.jpg);">
      <div class="container">
        <div class="gallery-wrapper text-center">
          <div class="gallery-item video-btn text-center"><a href="#" data-type="video" data-video="&lt;div class=&quot;wrapper&quot;&gt;&lt;div class=&quot;video-wrapper&quot;&gt;&lt;iframe class=&quot;pswp__video&quot; width=&quot;960&quot; height=&quot;640&quot; src=&quot;https://player.vimeo.com/video/67001156?color=dc9814&amp;title=0&amp;byline=0&amp;portrait=0&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;&lt;/div&gt;&lt;/div&gt;"></a><span class="caption text-center">Unishop - your reliable partner</span></div>
        </div>
      </div>
    </section> -->
    <!-- Features-->
    <!-- <section class="container padding-top-3x padding-bottom-3x">
      <div class="row pt-2">
        <div class="col-md-3 col-sm-6 text-center mb-30"><span class="d-block display-4 text-gray-light mb-4"><i class="material-icons flight"></i></span>
          <h4 class="h6 mb-2">Free World Wide Shipping</h4>
          <p class="text-sm text-muted mb-0">Free shipping on all orders over $999</p>
        </div>
        <div class="col-md-3 col-sm-6 text-center mb-30"><span class="d-block display-4 text-gray-light mb-4"><i class="material-icons autorenew"></i></span>
          <h4 class="h6 mb-2">Money Back Guarantee</h4>
          <p class="text-sm text-muted mb-0">We return money within 30 days</p>
        </div>
        <div class="col-md-3 col-sm-6 text-center mb-30"><span class="d-block display-4 text-gray-light mb-4"><i class="material-icons headset_mic"></i></span>
          <h4 class="h6 mb-2">24/7 Online Support</h4>
          <p class="text-sm text-muted mb-0">Friendly 24/7 customer support</p>
        </div>
        <div class="col-md-3 col-sm-6 text-center mb-30"><span class="d-block display-4 text-gray-light mb-4"><i class="material-icons credit_card"></i></span>
          <h4 class="h6 mb-2">Secure Online Payments</h4>
          <p class="text-sm text-muted mb-0">We posess SSL / Secure Certificate</p>
        </div>
      </div>
    </section> -->
    <!-- Site Footer-->
    <footer class="site-footer">
      <div class="column text-center">
        <p class="text-sm mb-4">Need Support? Call<span class="text-primary">&nbsp;001 (917) 555-4836</span></p><a class="social-button sb-skype" href="#" data-toggle="tooltip" data-placement="top" title="Skype"><i class="socicon-skype"></i></a><a class="social-button sb-facebook" href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="socicon-facebook"></i></a><a class="social-button sb-google-plus" href="#" data-toggle="tooltip" data-placement="top" title="Google +"><i class="socicon-googleplus"></i></a><a class="social-button sb-twitter" href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="socicon-twitter"></i></a><a class="social-button sb-instagram" href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="socicon-instagram"></i></a>
        <p class="text-xxs text-muted mb-0 mt-3">© All rights reserved. Made with <i class='material-icons favorite text-danger'></i> by rokaux</p>
      </div>
      <div class="column">
        <h3 class="widget-title text-center">Subscription<small>To receive latest offers and discounts from the shop.</small></h3>
        <form class="subscribe-form input-group" action="//rokaux.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;id=1194bb7544" method="post" target="_blank" novalidate><span class="input-group-btn">
            <button type="submit"><i class="material-icons send"></i></button></span>
          <input class="form-control" type="email" name="EMAIL" placeholder="Your e-mail">
          <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
          <div style="position: absolute; left: -5000px;" aria-hidden="true">
            <input type="text" name="b_c7103e2c981361a6639545bd5_1194bb7544" tabindex="-1" value>
          </div>
        </form>
      </div>
      <div class="column">
        <h3 class="widget-title text-center">Payment Methods<small>We support one of the following payment methods.</small></h3>
        <div class="footer-cards"><img src="resources/img/cards.png" alt="Payment Methods">
        </div>
      </div>
    </footer>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="material-icons trending_flat"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="resources/js/vendor.min.js"></script>
    <script src="resources/js/scripts.min.js"></script>
  </body>
</html>














    