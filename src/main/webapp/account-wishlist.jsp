<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

</head>
<!-- Body-->
<body>
	<!-- Page Title-->
	<div class="page-title">
		<div class="container">
			<h1>내 위시리스트</h1>
			<ul class="breadcrumbs">
				<li><a href="index.jsp">홈</a></li>
				<li class="separator">&nbsp;/&nbsp;</li>
				<li><a href="account-orders.jsp">나의 계정</a></li>
				<li class="separator">&nbsp;/&nbsp;</li>
				<li>My Wishlist</li>
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
					<!-- 사용자 사진 -->
						<!-- <div class="user-avatar">
							<a class="edit-avatar" href="#"><i
								class="material-icons edit"></i>Edit</a><img
								src="resources/img/account/user-ava.jpg" alt="User">
						</div> -->
						<div class="user-data">
							<h5>${member.name}</h5>
							<span>${member.joindate}</span>
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
					<a class="list-group-item with-badge active" href="account-orders.jsp">
						<i class="icon-heart"></i>주문목록
						<span class="badge badge-default badge-pill">3</span></a> 
					<a class="list-group-item" href="getMember.do?id=${member.id}">
						<i class="icon-head"></i>프로필 수정</a> 
					<a class="list-group-item" href="account-address.jsp">
						<i class="icon-map"></i>주소록</a> 
					<a class="list-group-item" href="account-myCanvas.jsp">
						<i class="icon-head"></i>마이 캔버스</a>
				</nav>
			</div>
			<div class="col-lg-8">
				<div class="padding-top-2x mt-2 hidden-lg-up"></div>
				<!-- Wishlist Table-->
				<div class="table-responsive wishlist-table margin-bottom-none">
					<table class="table">
						<thead>
							<tr>
								<th>내 위시 작품목록</th>
								<th class="text-center"><a
									class="btn btn-sm btn-outline-danger" href="#<!-- /deleteWishlist.do -->">위시리스트 비우기</a></th>
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
											<div class="text-lg text-medium text-muted">$가격</div>
											<div class="text-sm">
												가능여부 :
												<div class="d-inline text-success">구매 가능</div>
											</div>
										</div>
									</div>
								</td>
								<td class="text-center"><a class="remove-from-cart"
									href="#" data-toggle="tooltip" title="Remove item"><i
										class="material-icons icon_close"></i></a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<hr class="mb-4">
				<div class="custom-control custom-checkbox">
					<input class="custom-control-input" type="checkbox" id="inform_me"
						checked> <label class="custom-control-label"
						for="inform_me">해당 작품의 작가 새로운 작품 알림 받기</label>
				</div>
			</div>
		</div>
	</div>

</body>
</html>