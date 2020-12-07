<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>체크아웃 - 배송지입력
    </title>
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
<script src="resources/js/card.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/webjars/jquery/2.2.4/jqueyr.min.js"></script>

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
          <c:if test="${!empty member}">
          <li><a href="getWishlists.do?id=${member.id}"><span>MyPage</span></a>
            <ul class="sub-menu">
                <li><a href="getFollowList.do?id=${member.id}">팔로우</a></li>
                <li><a href="getOrderList.do?id=${member.id}">주문목록</a></li>
                <li><a href="getSellList.do?id=${member.id}">판매목록</a></li>
                <li><a href="getMember.do?id=${member.id}">프로필 수정</a></li>
                <li><a href="getAddress.do">주소록</a></li>
                <li><a href="getMyCanvas.do">마이 캔버스</a></li>
            </ul>
          </li>
          </c:if>
          <c:if test="${empty member}">
          <li><a href="#" data-toast data-toast-type="danger" 
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
              data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다.">판매목록</a></li>
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
                <c:if test="${!empty member}">
                <li class="has-children"><span><a href="getWishlists.do?id=${member.id}">MyPage</a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                <li><a href="getFollowList.do?id=${member.id}">팔로우</a></li>
                <li><a href="getOrderList.do?id=${member.id}">주문목록</a></li>
                <li><a href="getSellList.do?id=${member.id}">판매목록</a></li>
                <li><a href="getMember.do?id=${member.id}">프로필 수정</a></li>
                <li><a href="getAddress.do">주소록</a></li>
                <li><a href="getMyCanvas.do">마이 캔버스</a></li>
                  </ul>
                </li>
                </c:if>
                <c:if test="${empty member}">
                <li class="has-children"><span><a class="btn btn-sm btn-success mb-0 mr-0" href="#" data-toast data-toast-type="danger" 
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
            <form class="search-form mb-2" onsubmit="return false">
              <input type="search" placeholder="태그/작가/작품을 검색" onkeyup="if( event.keyCode==13 ){enter(this.value);}"><i class="material-icons search"></i>
            </form>
            <!-- 검색 결과 -->
            <!-- Products-->
            <%-- <c:if test="${not empty searchProduct }"> --%>
	            <div class="widget widget-featured-products">
	              <h3 class="widget-title">Found in Products</h3>
	              <!-- Entry-->
	              <!-- 검색결과 주르륵 -->
	              <div class="entry">
	                <div class="entry-thumb">
	                	<a href="getProduct.do">
	                	<img src="<c:url value='/aThumbnails.do?a_id=${item.a_id }' />" alt="Image" alt="Product">
	                	</a></div>
	                <div class="entry-content">
	                  <h4 class="entry-title">
	                  	<a href="getProduct.do">ㅇㅇ <span class='text-highlighted'>검색어와 일치하는 부분</span></a></h4><span class="entry-meta">가격</span>
	                </div>
	              </div>
	            </div>
            <%-- </c:if> --%>
            <!-- 작가결과-->
            <c:if test="${not empty searchArtist }">
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
          	</c:if>
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

	            <a class="btn btn-primary mx-0 scale-up delay-1" href="getWishlists.do?id=${member.id}">My page</a>

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
                    <input class="form-control" type="text" placeholder="아이디" id="signup_id" name="id" required>
                    <div id="idCheck_result"></div>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="비밀번호" id="pw1" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="password" placeholder="비밀번호 확인" id="pw2" name="pwd" required>
                    <div id="pwCheck_result"></div>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="닉네임" name="nickname" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="이름" name="name" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="email" placeholder="이메일" name="email" required>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" placeholder="전화번호" name="phone" required>
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
                      <img src="<c:url value='/thumbnails.do?p_code=${cart.p_code}' />" alt="Product"></a>
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
        <h1>체크아웃</h1>
        <ul class="breadcrumbs">
          <li><a href="main.do">Home</a>
          </li>
          <li class="separator">&nbsp;/&nbsp;</li>
          <li>Checkout - Address</li>
        </ul>
      </div>
    </div>
    <!-- Page Content-->
    <div class="container padding-bottom-3x mb-2">
      <!-- <div class="row"> -->
     <!--  <h4>내 주소록</h4>
          <hr class="padding-bottom-1x"> -->
      <!-- <form name="radiobtn" action="getAddress.do" method="get" >
					
					<div class="custom-control custom-radio custom-control-inline">
						<input class="custom-control-input" type="radio" id="ex-radio-4" 
							name="a_name" value="home" checked> 
							<label class="custom-control-label" for="ex-radio-4"> 집 </label>
							
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input class="custom-control-input" type="radio" id="ex-radio-5" 
							name="a_name" value="work"> 
							<label class="custom-control-label" for="ex-radio-5" disable> 직장/학교 </label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input class="custom-control-input" type="radio" id="ex-radio-6"
							name="a_name" value="etc"> 
							<label class="custom-control-label" for="ex-radio-6" disable> 기타 </label>
					</div>
					<input class="btn btn-sm btn-secondary" type="submit" value="주소록 불러오기">
					</form>
					<hr class="padding-bottom-1x"> -->
      
         <!-- radio 체크여부 확인 -->
	   <!--  <script>
			function fn1() {
				var rd1 = document.getElementById("ex-radio-4").value;
				var rd2 = document.getElementById("ex-radio-5").value;
				var rd3 = document.getElemnetById("ex-radio-6").value;

				if(rd1.checked == true)
					alert (rd1.value);
				else if(rd2.checked == true)
					alert (rd2.value);
				else if(rd3.checked == true)
					alert (rd3.value);
				}
	    </script> -->
      <form name="address" class="row" action="insertAddress.do" method="post" enctype="multipart/form-data">
        <!-- Checkout Address-->
        <div class="col-xl-9 col-lg-8">
          <div class="steps flex-sm-nowrap mb-5">
          	<a class="step active" href="#">
              <h4 class="step-title">1. 배송지 입력</h4></a>
            <a class="step" href="payment.do">
              <h4 class="step-title">2. 결제</h4></a>
            <a class="step" href="review.do">
              <h4 class="step-title">3. 리뷰</h4></a></div>
          <h4>배송지 입력</h4>
          <hr class="padding-bottom-1x">
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="checkout-fn">이름</label>
                <input class="form-control" type="text" id="checkout-name"
                placeholder="이름을 입력해주세요" value="${member.name}" required>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="checkout-phone">전화번호</label>
                <input class="form-control" type="text" id="checkout-phone"
                 value="${member.phone}" placeholder="(예)010-1111-1234">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="checkout-company">배송지명</label>
                <input class="form-control" type="text" name="a_name"
                 value="${address.a_name}" placeholder="(예) 집 / 학교 / 회사 " required>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
               
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="checkout-zip">우편번호</label>
                <input class="form-control" type="number" id="post" name="post"
                 value="${address.post}" placeholder="우편번호" readonly>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
              <label for="account-city"></label> 
				<input type="button" class="btn btn-outline-secondary" onclick="showPostcode()" 
				value="우편번호 찾기">      
			  </div>      
			</div>
          </div>
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="checkout-address1">주소 입력</label>
                <input class="form-control" type="text" name="address" id="address"
                value="${address.address}" placeholder="도로명 주소 or 지번 주소" required>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="checkout-address1">상세주소 입력</label>
                <input class="form-control" type="text" name="extra_address" id="extra_address"
                value="${address.extra_address}" placeholder="상세주소" required>
              </div>
            </div>
            	<!-- 아이디 전달을 위한 hidden tag -->
            	<input type="hidden" value="${member.id}" name="id">
          </div>
          
          <hr class="padding-bottom-1x">
          <div class="d-flex justify-content-between">
          <button class="btn btn-outline-secondary m-0" href="cart.do">카트로 돌아가기</button>
          <button class="btn btn-primary m-0" type="submit">결제하기</button>
          </div>
        </div>
        
        
        <!-- 우편번호 받아오기 api script -->
        <script>
        function showPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraRoadAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraRoadAddr !== ''){
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }

                    document.getElementById('post').value = data.zonecode;
                    document.getElementById("address").value = roadAddr;
                    document.getElementById("address").value = data.jibunAddress;
                    
                    if(roadAddr !== ''){
                        document.getElementById("extra_address").value = extraRoadAddr;
                    } else {
                        document.getElementById("extra_address").value = '';
                    }

                    var guideTextBox = document.getElementById("guide");
                    if(data.autoRoadAddress) {
                        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                        guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                        guideTextBox.style.display = 'block';

                    } else if(data.autoJibunAddress) {
                        var expJibunAddr = data.autoJibunAddress;
                        guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                        guideTextBox.style.display = 'block';
                    } else {
                        guideTextBox.innerHTML = '';
                        guideTextBox.style.display = 'none';
                    }
                }
            }).open();
        }
    </script>
	    
   
        <!-- Sidebar          -->
        <div class="col-xl-3 col-lg-4">
          <aside class="sidebar">
            <div class="padding-top-2x hidden-lg-up"></div>
            <!-- Order Summary Widget-->
            <section class="widget widget-order-summary bg-secondary border-0 p-4">
              <h3 class="widget-title">주문 요약</h3>
              <table class="table text-sm mb-0">
                <tr>
                  <td>총 금액 : </td>
                  <td class="text-medium">₩ <fmt:formatNumber pattern="###,###,###" value="${total}" /></td>
                </tr>
               <!--  <tr>
                  <td>배송비 :</td>
                  <td class="text-medium">$35.50</td>
                </tr> -->
                <tr>
                  <td></td>
                  <td class="text-lg text-medium">₩ <fmt:formatNumber pattern="###,###,###" value="${total}" /></td>
                </tr>
              </table>
            </section>
            </aside>
            </div>
            </form>
        </div>
    <!-- Site Footer-->
   <footer class="site-footer">
      <div class="column text-center">
        <p class="text-sm mb-4">Need Support? Call<span class="text-primary">&nbsp;010 - 1111 - 2222</span></p>
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

  </body>
</html>