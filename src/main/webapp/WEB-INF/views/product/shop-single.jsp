<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                <li class="has-children"><span><a href="getWishlists.do?id=${member.id}">MyPage</a><span class="sub-menu-toggle"></span></span>
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
    <!-- Page Content-->
    <div class="bg-secondary pb-4 padding-top-3x">
      <div class="container">
        <div class="row">
          <%-- <c:if test="${empty product}">
          <script> alert("선택한 상품이 존재하지 않습니다.")</script>
          </c:if> --%>
          <%-- <c:if test="${!empty product}"> --%>
          <!-- Product Gallery-->
          <div class="col-md-6 mb-30">
            <div class="product-gallery">
              <div class="product-carousel owl-carousel gallery-wrapper">
              <c:forEach var="productImg" items="${productImgs }">
                <div class="gallery-item" data-hash="one">
                	<a href="/download.do?p_code=${product.p_code }&pfilename=${productImg.pi_filename }" data-size="555x480"> 
                	<img src="<c:url value='/download.do?p_code=${product.p_code }&pfilename=${productImg.pi_filename }' />" alt="Product"></a></div>
              </c:forEach>  	
              </div>
              <ul class="product-thumbnails">
                <li class="active"><a href="#one"><img src="<c:url value='/thumbnails.do?p_code=${product.p_code }&pfiletype=main_image' />" alt="Product"></a></li>
                <c:if test="${fn:length(productImgs) >1 }">
                <li><a href="#two"><img src="<c:url value='/thumbnails.do?p_code=${product.p_code }&pfiletype=detail_image1' />" alt="Product"></a></li>
                </c:if>
                <c:if test="${fn:length(productImgs) >2 }">
                <li><a href="#three"><img src="<c:url value='/thumbnails.do?p_code=${product.p_code }&pfiletype=detail_image2' />" alt="Product"></a></li>
                </c:if>
              </ul>
            </div>
          </div>
          <!-- Product Info-->
          <div class="col-md-6 mb-30">
            <div class="card border-default bg-white pt-2 box-shadow">

            	<form action="insertCart.do?p_code=${product.p_code}" method="get">
              <div class="card-body">
                <h2 class="mb-3">${product.p_name}</h2>
                <c:choose>
                	<c:when test="${product.price eq 0}">
               		 <h3 class="text-normal">₩ <fmt:formatNumber pattern="###,###,###" value="판매완료" /></h3>
                	</c:when>
                	<c:otherwise>
               		 <h3 class="text-normal">₩ <fmt:formatNumber pattern="###,###,###" value="${product.price}" /></h3>
                	</c:otherwise>
               	</c:choose>
                <p class="text-sm text-muted">
                	<a class='navi-link' href="getArtist.do?a_id=${product.a_id}">${product.a_id}</a><br>
                	 작품 설명 : ${product.p_detail}</p>
                <div class="row">
                  <div class="col-sm-6">
                  </div>
                </div>
                <div class="row align-items-end mb-4">
                  <div class="col-sm-4">
                  </div>

                  <div class="col-sm-8">
                    <div class="pt-4 hidden-sm-up"></div>
                  </div>
                </div>
                <ul class="list-unstyled text-sm mb-4">
                  <li><span class='text-dark text-medium'>작품코드:</span> ${product.p_code}</li>
                  <li><span class='text-dark text-medium'>작품사이즈:</span> ${product.p_size}</li>
                  <li><span class='text-dark text-medium'>Categories:</span> 

                  	<a href='#' class='navi-link'>${product.p_category}</a>
                </ul>
                </div>
                <div class="col-sm-8">
                    <div class="pt-4 hidden-sm-up"></div>
                  <c:if test="${product.price > 0}">
                    <input class="btn btn-primary btn-block my-0" value="장바구니 담기" type="submit">
                    </c:if>
                  <c:if test="${product.price eq 0}">
                    <input class="btn btn-outline-primary btn-block my-0" value="SOLD OUT" type="text" onclick="#">
                    </c:if>
                  </div>
            	</form>
			
				<c:if test="${product.price > 0}">
					<c:if test="${empty member}">
               	 <div class="d-flex flex-wrap justify-content-between align-items-center">
                	<a class="btn btn-outline-secondary btn-sm text-danger" data-toast data-toast-type="danger" 
	                    		data-toast-position="topRight" data-toast-icon="material-icons check" 
	                    		data-toast-title="login needed" data-toast-message="로그인이 필요한 서비스입니다!"
                    		onclick="#">
                	<i class="material-icons favorite_border"></i>&nbsp;위시리스트에 담기</a>
               	 </div>
               	 </c:if>
					<c:if test="${!empty member}">
               	 <div class="d-flex flex-wrap justify-content-between align-items-center">
                	<a class="btn btn-outline-secondary btn-sm text-danger" data-toast data-toast-type="success" 
	                    		data-toast-position="topRight" data-toast-icon="material-icons check" 
	                    		data-toast-title="success!" data-toast-message="위시리스트 추가 성공!"
                		href="insertWishlist.do?p_code=${product.p_code}">
                	<i class="material-icons favorite_border"></i>&nbsp;위시리스트에 담기</a>
               	 </div>
               	 </c:if>
                </c:if>
				<c:if test="${product.price eq 0}">
               	 <div class="d-flex flex-wrap justify-content-between align-items-center">
                	<a class="btn btn-outline-secondary btn-sm text-danger" 
                		href="#">
                	<i class="material-icons favorite_border"></i>&nbsp;판매완료</a>
              	  </div>
                </c:if>
              </div>
            </div>
           <%--  </c:if> --%>
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