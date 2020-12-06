<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>작품 전체 페이지
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript">

    	$(document).ready(function () {
    		/* 회원가입 성공 후  model attribute에 바인딩한 객체를 확인, 한 번만 알리기 위해선 ajax사용이 답인가? */
            /* var signedUp= '${signedUp.id}';
            if(signedUp != ""){
            	alert("회원가입을 축하합니다. 이메일 인증 후 사용할 수 있습니다.");
            }
            signedUp = ""; */

    		 $("#signup_id").blur(function () {
    			 var signup_id = $("#signup_id").val();
 				console.log(signup_id);
 				if(signup_id != ""){
    			 	checkId(signup_id);
 				}else{
 					$("#idCheck_result").html("");
 				}
    		 });

    	/* 아이디 중복체크 == 성공!!
    		리턴값에 따른 후처리 필요
    	*/
    		/* $('#signup-form').submit(
	    		function () {
	    			var formData = $('#signup-form').serialize();
	    			alert("signUp() 실행");
					$.ajax({
						type : 'POST',
						url : '${pageContext.request.contextPath}/signup.do',
						data : formData,
						dataType : 'json'
					}).done(function (data) {
						console.log(data);
					}).fail(function (request, status, error) {
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					})
				}
    		); */
    		 function checkId(signup_id) {
 				$.ajax({
 					type : 'POST',
 					url : '${pageContext.request.contextPath}/idCheck.do',
 					data : {"signup_id" : signup_id}
 				}).done(function (data) {
					console.log(data);
					idResult(data);
				}).fail(function (request,status,error) {
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				})
			}

    		function idResult(data) {
    			if(data==0){
					$("#idCheck_result").html("사용가능한 아이디입니다.").css("color","green");
    			}else{
    				$("#idCheck_result").html("이미 사용중인 아이디입니다.").css("color","red");
    			}
			}

    		$("#pw1").blur(function () {
   			 	pwCheck();
   		 	});
    		$("#pw2").blur(function () {
				pwCheck();
			});
    		function pwCheck() {
    			var pw1 = $("#pw1").val();
      			 var pw2 = $("#pw2").val();
   				console.log(pw1);
   				if(pw2 == "" || pw1 ==""){
   					$("#pwCheck_result").html("비밀번호를 입력해주세요").css("color","red");
   				}else if(pw1 == pw2){
   					$("#pwCheck_result").html("비밀번호가 일치합니다").css("color","green");
   				}else{
   					$("#pwCheck_result").html("비밀번호가 일치하지 않습니다.").css("color","red");
   				}
			}

		});
    		/* 검색기능(엔터 입력시 실행)  */
    		function enter(keyword) {
					search(keyword);
			}
     		function search(keyword){
    			alert("search() 실행");
    			$.ajax({
 					type : 'POST',
 					url : '${pageContext.request.contextPath}/search.do',
 					data : {"keyword" : keyword},
 					dataType : 'json'
 				}).done(function (data) {	//ajax는 실행결과와 상관없이 리턴값이 없으면 오류발생
 					if(data.productList){
						alert(data.productList);
 						showResult(data.productList);
 					}
					sessionStorage.setItem("searchProduct", JSON.stringify(data.productList));
					/* alert(sessionStorage.getItem("searchProduct")); */
					/* getResult(); */
					if(data.artistList){
						showResult(data.artistList);
					}
				}).fail(function (request,status,error) {
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				})
    		}
    		function showResult(result) {

			}

    </script>
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
          <li class="active"><a href="getProductList.do"><span>Shop</span></a>
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
                <li class="has-children active"><span><a href="getProductList.do"><span>Shop</span></a><span class="sub-menu-toggle"></span></span>
                  <ul class="slideable-submenu">
                <li><a href="getProductList.do?category=water">수채화</a></li>
                <li><a href="getProductList.do?category=oil">유화</a></li>
                <li><a href="getProductList.do?category=black">수묵화</a></li>
                <li><a href="getProductList.do?category=crocky">크로키</a></li>
                <li><a href="getProductList.do?category=etc">기타</a></li>
                  </ul>
                </li>
                <c:if test="${!empty member}">
                <li class="has-children"><span><a href="getWishlist.do?id=${member.id}">MyPage</a><span class="sub-menu-toggle"></span></span>
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
      	<h1>작품 페이지</h1>
        <ul class="breadcrumbs">
          <li><a href="main.do">Home</a>
          </li>
          <li class="separator">&nbsp;/&nbsp;</li>
          <li>Whole Product</li>
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
            <form class="input-group shop-search-box" action="searchByPname.do" method="post"><span class="input-group-btn">
                <button type="submit"><i class="material-icons search"></i></button></span>
              <input class="form-control" type="text" placeholder="작품명을 입력한 후, 엔터를 누르세요" id="p_name" name="p_name">
            </form>
          </div>
          <!-- Products Grid-->
                <c:if test="${!empty productList}">
          <div class="row mb-2">
 <!-- Item-->
                <c:forEach var="product" items="${productList}">
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
                <div class="product-card-thumb">
                <a class="product-card-link" href="getProduct.do?p_code=${product.p_code}"></a>
                <img src="<c:url value='/thumbnails.do?p_code=${product.p_code }' />" alt="Product">
                  <div class="product-card-buttons">
                  <c:choose>
					<c:when test="${product.price eq 0}">    
					 <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="danger" 
	                    		data-toast-position="topRight" data-toast-icon="material-icons check" 
	                    		data-toast-title="sold out" data-toast-message="이미 판매된 제품입니다."
                    		onclick="#">
                    		<i class="material-icons favorite_border"></i></button>
                    <button class="btn btn-outline-primary btn-sm" data-toast data-toast-type="danger" 
	                    		data-toast-position="topRight" data-toast-icon="material-icons check" 
	                    		data-toast-title="sold out" data-toast-message="이미 판매된 제품입니다."
                    		onclick="#">sold out</button>          
					</c:when>
					<c:otherwise>
	                    <button class="btn btn-white btn-sm" data-toast data-toast-type="info" 
	                    		data-toast-position="topRight" data-toast-icon="material-icons check" 
	                    		data-toast-title="성공!" data-toast-message="성공적으로 위시리스트에 담겼습니다!" 
	                    		onclick="location.href='insertWishlist.do?p_code=${product.p_code}'">
	                    		<i class="material-icons favorite_border"></i></button>
	                    <button class="btn btn-primary btn-sm" data-toast data-toast-type="success" 
	                    		data-toast-position="topRight" data-toast-icon="material-icons check" 
	                    		data-toast-title="성공!" data-toast-message="성공적으로 장바구니에 담겼습니다!" 
	                    		onclick="location.href='insertCart.do?p_code=${product.p_code}'">장바구니에 담기</button>
                 	</c:otherwise>
                </c:choose>
                    		                 
                    		</div>
                </div>
                <div class="product-card-details">
                  <h3 class="product-card-title"><a href="getProduct.do?p_code=${product.p_code}">${product.p_name}</a></h3>
                  <h4 class="product-card-price">
                  <c:choose>
					<c:when test="${product.price eq 0}"> 
                    	<h6>Sold out</h6>
                    	</c:when>
                    <c:otherwise>
                    	₩ <fmt:formatNumber pattern="###,###,###" value="${product.price}" />
                    </c:otherwise>
                    
                 </c:choose>
                  </h4>
                </div>
              </div>
            </div>
                </c:forEach>
          </div>
                </c:if>
                <c:if test="${empty productList}">
          <div class="row mb-2">
            <div class="col-lg-4 col-sm-6">
              <div class="product-card mb-30">
				<h2>작품이 없습니다.</h2>
              </div>
            </div>
            </div>
                </c:if>
          <!-- Pagination-->
          <nav class="pagination">
            <div class="column">
              <ul class="pages">
                <li class="active"><a href="#">1</a></li>
                <!-- <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li>...</li>
                <li><a href="#">12</a></li> -->
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
                <li class="has-children"><a href="getCategory.do?category=water" >수채화</a><span id="water">	${categoryCnt[0] }</span></li>
                <li class="has-children"><a href="getCategory.do?category=oil" >유화</a><span id="oil">	${categoryCnt[1] }</span></li>
                <li class="has-children"><a href="getCategory.do?category=black" >수묵화</a><span id="black">	${categoryCnt[2] }</span></li>
                <li class="has-children"><a href="getCategory.do?category=crocky" >크로키</a><span id="crocky">	${categoryCnt[3] }</span></li>
                <li class="has-children"><a href="getCategory.do?category=etc" >기타</a><span id="etc">	${categoryCnt[4] }</span></li>
              </ul>
            </section>
            <!-- Widget Sorting-->
            <section class="widget widget-icon-list">
              <h3 class="widget-title">정렬</h3>
              <ul>
                <li><a href="getProductList.do"><i class="material-icons sort"></i>기본 정렬</a></li>
                <!-- <li><a href="#"><i class="material-icons favorite_border"></i>인기순</a></li> -->
                <li><a href="sortLatest.do"><i class="material-icons vertical_align_top"></i>최신순</a></li>
                <li><a href="sortCheap.do"><i class="material-icons vertical_align_top"></i>가격낮은순</a></li>
                <li><a href="sortExpensive.do"><i class="material-icons vertical_align_top"></i>가격높은순</a></li>
                <!-- <li><a href="#"><i class="material-icons star_border"></i>Average rating</a></li> -->
                <li><a href="sortAlpha.do"><i class="material-icons sort_by_alpha"></i>가나다순</a></li>
              </ul>
            </section>
            <!-- Widget Price Range-->
            <section class="widget widget-categories">
              <h3 class="widget-title">가격 범위</h3>
              <form action="priceRange.do" class="price-range-slider" method="POST" data-start-min="0" data-start-max="100" data-min="0" data-max="300" data-step="1">
                <div class="ui-range-slider"></div>
                <footer class="ui-range-slider-footer">
                  <div class="column">
                    <button class="btn btn-outline-primary btn-sm" type="submit">분류</button>
                  </div>
                  <div class="column">
                    <div class="ui-range-values">
                      <div class="ui-range-value-min">₩<span></span>
                        <input id="minp" type="hidden">
                      </div>&nbsp;-&nbsp;
                      <div class="ui-range-value-max">₩<span></span>
                        <input id="maxp" type="hidden">
                      </div>(만원)
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
    <script src="<c:url value="resources/js/vendor.min.js" />"></script>
	<script src="<c:url value="resources/js/scripts.min.js" />"></script>
	
  </body>
</html>