<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>나의 주소록</title>
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
<link rel="icon" type="img/x-icon" href="resources/img/favicon.ico">
<link rel="icon" type="img/png" href="resources/img/favicon.png">
<link rel="apple-touch-icon" href="resources/img/touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="resources/img/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="resources/img/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="167x167"
	href="resources/img/touch-icon-ipad-retina.png">
<!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
<link rel="stylesheet" media="screen"
	href="<c:url value="resources/css/vendor.min.css" />">
<!-- Main Template Styles-->
<link id="mainStyles" rel="stylesheet" media="screen"
	href="<c:url value="resources/css/styles.min.css" />">
<!-- Modernizr-->
<!-- <script src="js/modernizr.min.js" /></script> -->
<script src="<c:url value="resources/js/modernizr.min.js" />"></script>

</head>
<!-- Body-->
<body>
	<!-- Navbar-->
	<!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
	<header class="navbar navbar-sticky">
		<!-- Site Branding-->
		<div class="site-branding">
			<a class="site-logo hidden-xs-down" href="index.jsp"><img
				src="resources/img/logo/logo.png" alt="Unishop"></a><a
				class="site-logo logo-sm hidden-sm-up" href="index.jsp"><img
				src="resources/img/logo/logo-sm.png" alt="Unishop"></a>
			<div class="lang-currency-switcher">
				<div class="lang-currency-toggle">
					<img src="resources/img/flags/GB.png" alt="English"><span>USD</span><i
						class="material-icons arrow_drop_down"></i>
					<ul class="lang-currency-dropdown">
						<li><select class="form-control form-control-sm">
								<option value="usd">$ USD</option>
								<option value="usd">€ EUR</option>
								<option value="usd">£ UKP</option>
								<option value="usd">¥ JPY</option>
						</select></li>
						<li><a href="#"><img src="resources/img/flags/FR.png"
								alt="Français">Français</a></li>
						<li><a href="#"><img src="resources/img/flags/DE.png"
								alt="Deutsch">Deutsch</a></li>
						<li><a href="#"><img src="resources/img/flags/IT.png"
								alt="Italiano">Italiano</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Main Navigation-->
		<nav class="site-menu">
			<ul>
				<li><a href="index.jsp"><span>Home</span></a>
					<ul class="sub-menu">
						<li class="has-children"><a href="index.jsp"><span>Hero
									Slider</span></a>
							<ul class="sub-menu w-400 p-0">
								<li><a class="p-0" href="index.jsp"><img
										src="resources/img/banners/home01.jpg"
										alt="Hero Slider Home"></a></li>
							</ul></li>
						<li class="has-children"><a
							href="home-featured-categories.jsp"><span>Categories
									Grid</span></a>
							<ul class="sub-menu w-400 p-0">
								<li><a class="p-0" href="home-featured-categories.jsp"><img
										src="resources/img/banners/home02.jpg"
										alt="Categories Grid Home"></a></li>
							</ul></li>
					</ul></li>
				<li><a href="shop-boxed-ls.jsp"><span>Shop</span></a>
					<ul class="sub-menu">
						<li><a href="shop-categories.jsp">Shop Categories</a></li>
						<li class="has-children"><a href="shop-boxed-ls.jsp"><span>Shop
									Layout</span></a>
							<ul class="sub-menu">
								<li><a href="shop-boxed-ls.jsp">Boxed Left Sidebar</a></li>
								<li><a href="shop-boxed-rs.jsp">Boxed Right Sidebar</a></li>
								<li><a href="shop-boxed-ft.jsp">Boxed Filters Top</a></li>
								<li><a href="shop-full-ls.jsp">Full Width Left Sidebar</a></li>
								<li><a href="shop-full-rs.jsp">Full Width Right
										Sidebar</a></li>
								<li><a href="shop-full-ft.jsp">Full Width Filters Top</a></li>
							</ul></li>
						<li><a href="shop-single.jsp">Single Product</a></li>
						<li><a href="cart.jsp">Cart</a></li>
						<li class="has-children"><a href="checkout-address.jsp"><span>Checkout</span></a>
							<ul class="sub-menu">
								<li><a href="checkout-address.jsp">Address</a></li>
								<li><a href="checkout-shipping.jsp">Shipping</a></li>
								<li><a href="checkout-payment.jsp">Payment</a></li>
								<li><a href="checkout-review.jsp">Review</a></li>
								<li><a href="checkout-complete.jsp">Complete</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#"><span> Mega Menu</span></a>
					<ul class="mega-menu">
						<li><span class="mega-menu-title text-uppercase">Furniture</span>
							<ul>
								<li><a href="#">Desk &amp; Benching</a></li>
								<li><a href="#">Adjustable Desks</a></li>
								<li><a href="#">File Cabinets</a></li>
								<li><a href="#">Office Chairs</a></li>
								<li><a href="#">Tables</a></li>
								<li><a href="#">Storage Units</a></li>
								<li><a href="#">Accessories</a></li>
							</ul></li>
						<li><span class="mega-menu-title text-uppercase">Lighting</span>
							<ul>
								<li><a href="#">Ceiling Lights</a></li>
								<li><a href="#">Kitchen Lighting</a></li>
								<li><a href="#">Lamps</a></li>
								<li><a href="#">Wall Lights</a></li>
								<li><a href="#">Outdoor Lights</a></li>
								<li><a href="#">Dimmers &amp; Controls</a></li>
								<li><a href="#">Light Bulbs</a></li>
							</ul></li>
						<li><span class="mega-menu-title text-uppercase">Shop
								by Color</span>
							<div class="widget widget-colors">
								<ul>
									<li><a href="#"><span class="color"
											style="background-color: #fff; border: 1px solid #dcdcdc;"></span>White</a></li>
									<li><a href="#"><span class="color"
											style="background-color: #93c4ef;"></span>Blue</a></li>
									<li><a href="#"><span class="color"
											style="background-color: #a7c04d;"></span>Green</a></li>
									<li><a href="#"><span class="color"
											style="background-color: #ef0568;"></span>Red</a></li>
									<li><a href="#"><span class="color"
											style="background-color: #ffce2b;"></span>Yellow</a></li>
									<li><a href="#"><span class="color"
											style="background-color: #b5651d;"></span>Brown</a></li>
								</ul>
							</div></li>
						<li class="banner-column"><a href="#"
							style="background-image: url(../resources/img/banners/mega-menu.jpg);"></a></li>
					</ul></li>
				<li class="active"><a href="account-orders.jsp"><span>Account</span></a>
					<ul class="sub-menu">
						<li><a href="account-orders.jsp">Orders List</a></li>
						<li><a href="account-wishlist.jsp">Wishlist</a></li>
						<li><a href="account-profile.jsp">Profile Page</a></li>
						<li class="active"><a href="account-address.jsp">Contact
								/ Shipping Address</a></li>
						<li><a href="account-tickets.jsp">My Tickets</a></li>
						<li><a href="account-single-ticket.jsp">Single Ticket</a></li>
						<li><a href="account-password-recovery.jsp">Password
								Recovery</a></li>
					</ul></li>
				<li><a href="blog.jsp"><span>Blog List</span></a>
					<ul class="sub-menu">
						<li><a href="blog.jsp">Blog List</a></li>
						<li><a href="blog-single.jsp">Single Post</a></li>
					</ul></li>
				<li><a href="#"><span>Pages</span></a>
					<ul class="sub-menu">
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="contacts.jsp">Contacts</a></li>
						<li><a href="faq.jsp">Help / FAQ</a></li>
						<li><a href="order-tracking.jsp">Order Tracking</a></li>
						<li><a href="404.jsp">404 Not Found</a></li>
						<li><a href="coming-soon.jsp">Coming Soon</a></li>
						<li><a class="text-danger" href="docs/dev-setup.jsp">Documentation</a></li>
					</ul></li>
				<li><a href="components/accordion.jsp"><span>Components</span></a>
					<ul class="mega-menu">
						<li><span class="mega-menu-title">A - F</span>
							<ul>
								<li><a href="components/accordion.jsp">Accordion</a></li>
								<li><a href="components/alerts.jsp">Alerts</a></li>
								<li><a href="components/buttons.jsp">Buttons</a></li>
								<li><a href="components/cards.jsp">Cards</a></li>
								<li><a href="components/carousel.jsp">Carousel</a></li>
								<li><a href="components/countdown.jsp">Countdown</a></li>
								<li><a href="components/forms.jsp">Forms</a></li>
							</ul></li>
						<li><span class="mega-menu-title">G - M</span>
							<ul>
								<li><a href="components/gallery.jsp">Gallery</a></li>
								<li><a href="components/google-maps.jsp">Google Maps</a></li>
								<li><a href="components/images.jsp">Images &amp;
										Figures</a></li>
								<li><a href="components/list-group.jsp">List Group</a></li>
								<li><a href="components/market-social-buttons.jsp">Market
										&amp; Social Buttons</a></li>
								<li><a href="components/media.jsp">Media Object</a></li>
								<li><a href="components/modal.jsp">Modal</a></li>
							</ul></li>
						<li><span class="mega-menu-title">P - T</span>
							<ul>
								<li><a href="components/pagination.jsp">Pagination</a></li>
								<li><a href="components/pills.jsp">Pills</a></li>
								<li><a href="components/progress-bars.jsp">Progress
										Bars</a></li>
								<li><a href="components/shop-items.jsp">Shop Items</a></li>
								<li><a href="components/spinners.jsp">Spinners</a></li>
								<li><a href="components/steps.jsp">Steps</a></li>
								<li><a href="components/tables.jsp">Tables</a></li>
							</ul></li>
						<li><span class="mega-menu-title">T - W</span>
							<ul>
								<li><a href="components/tabs.jsp">Tabs</a></li>
								<li><a href="components/team.jsp">Team</a></li>
								<li><a href="components/toasts.jsp">Toast
										Notifications</a></li>
								<li><a href="components/tooltips-popovers.jsp">Tooltips
										&amp; Popovers</a></li>
								<li><a href="components/typography.jsp">Typography</a></li>
								<li><a href="components/video-player.jsp">Video Player</a></li>
								<li><a href="components/widgets.jsp">Widgets</a></li>
							</ul></li>
					</ul></li>
			</ul>
		</nav>
		<!-- Toolbar-->
		<div class="toolbar">
			<div class="inner">
				<a class="toolbar-toggle mobile-menu-toggle" href="#mobileMenu"><i
					class="material-icons menu"></i></a><a
					class="toolbar-toggle search-toggle" href="#search"><i
					class="material-icons search"></i></a><a class="toolbar-toggle"
					href="#account"><i class="material-icons person"></i></a><a
					class="toolbar-toggle" href="#cart"><i><span
						class="material-icons shopping_basket"></span><span class="count">3</span></i></a>
			</div>
			<!-- Toolbar Dropdown-->
			<div class="toolbar-dropdown">
				<!-- Mobile Menu Section-->
				<div class="toolbar-section" id="mobileMenu">
					<!-- Currency / Language Siwtcher-->
					<div class="text-center mb-4">
						<div class="lang-currency-switcher">
							<div class="lang-currency-toggle">
								<img src="resources/img/flags/GB.png" alt="English"><span>USD</span><i
									class="material-icons arrow_drop_down"></i>
								<ul class="lang-currency-dropdown">
									<li><select class="form-control form-control-sm">
											<option value="usd">$ USD</option>
											<option value="usd">€ EUR</option>
											<option value="usd">£ UKP</option>
											<option value="usd">¥ JPY</option>
									</select></li>
									<li><a href="#"><img
											src="resources/img/flags/FR.png" alt="Français">Français</a></li>
									<li><a href="#"><img
											src="resources/img/flags/DE.png" alt="Deutsch">Deutsch</a></li>
									<li><a href="#"><img
											src="resources/img/flags/IT.png" alt="Italiano">Italiano</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Search Box-->
					<form class="input-group form-group" method="get">
						<span class="input-group-btn">
							<button type="submit">
								<i class="material-icons search"></i>
							</button>
						</span> <input class="form-control" type="search"
							placeholder="Search website">
					</form>
					<!-- Slideable (Mobile) Menu-->
					<nav class="slideable-menu mt-4">
						<ul class="menu">
							<li class="has-children"><span><a href="index.jsp"><span>Home</span></a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="index.jsp">Hero Slider</a></li>
									<li><a href="home-featured-categories.jsp">Categories
											Grid</a></li>
								</ul></li>
							<li class="has-children"><span><a
									href="shop-boxed-ls.jsp"><span>Shop</span></a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="shop-categories.jsp">Shop Categories</a></li>
									<li class="has-children"><span><a
											href="shop-boxed-ls.jsp"><span>Shop Layout</span></a><span
											class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="shop-boxed-ls.jsp">Boxed Left Sidebar</a></li>
											<li><a href="shop-boxed-rs.jsp">Boxed Right Sidebar</a></li>
											<li><a href="shop-boxed-ft.jsp">Boxed Filters Top</a></li>
											<li><a href="shop-full-ls.jsp">Full Width Left
													Sidebar</a></li>
											<li><a href="shop-full-rs.jsp">Full Width Right
													Sidebar</a></li>
											<li><a href="shop-full-ft.jsp">Full Width Filters
													Top</a></li>
										</ul></li>
									<li><a href="shop-single.jsp">Single Product</a></li>
									<li><a href="cart.jsp">Cart</a></li>
									<li class="has-children"><span><a
											href="checkout-address.jsp"><span>Checkout</span></a><span
											class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="checkout-address.jsp">Address</a></li>
											<li><a href="checkout-shipping.jsp">Shipping</a></li>
											<li><a href="checkout-payment.jsp">Payment</a></li>
											<li><a href="checkout-review.jsp">Review</a></li>
											<li><a href="checkout-complete.jsp">Complete</a></li>
										</ul></li>
								</ul></li>
							<li class="has-children"><span><a href="#">Categories</a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li class="has-children"><span><a href="#">Desks
												&amp; Benching</a><span class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="#">Executive Desks</a></li>
											<li><a href="#">Standing Desks</a></li>
											<li><a href="#">Benching Desks</a></li>
											<li><a href="#">Single Desks</a></li>
											<li><a href="#">View All</a></li>
										</ul></li>
									<li class="has-children"><span><a href="#">Office
												Furniture</a><span class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="#">File Cabinets</a></li>
											<li><a href="#">Office Chairs</a></li>
											<li><a href="#">Adjustable Tables</a></li>
											<li><a href="#">Stools</a></li>
											<li><a href="#">View All</a></li>
										</ul></li>
									<li class="has-children"><span><a href="#">Lounge
												Seating</a><span class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="#">Benches</a></li>
											<li><a href="#">Chairs</a></li>
											<li><a href="#">Pillows</a></li>
											<li><a href="#">Sofas</a></li>
											<li><a href="#">View All</a></li>
										</ul></li>
									<li class="has-children"><span><a href="#">Storage
												Units</a><span class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="#">Bookcases</a></li>
											<li><a href="#">Box Seats &amp; Benches</a></li>
											<li><a href="#">Credenza</a></li>
											<li><a href="#">View All</a></li>
										</ul></li>
									<li class="has-children"><span><a href="#">Lighting</a><span
											class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="#">Ceiling Lights</a></li>
											<li><a href="#">Kitchen Lights</a></li>
											<li><a href="#">Wall Lights</a></li>
											<li><a href="#">Lamps</a></li>
											<li><a href="#">View All</a></li>
										</ul></li>
									<li class="has-children"><span><a href="#">Furniture
												Accessories</a><span class="sub-menu-toggle"></span></span>
										<ul class="slideable-submenu">
											<li><a href="#">Power Management</a></li>
											<li><a href="#">Desk Add Ons</a></li>
											<li><a href="#">Lamps</a></li>
											<li><a href="#">Monitor Arms</a></li>
											<li><a href="#">Desk Risers</a></li>
											<li><a href="#">View All</a></li>
										</ul></li>
								</ul></li>
							<li class="has-children active"><span><a
									href="account-orders.jsp"><span>Account</span></a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="account-orders.jsp">Orders List</a></li>
									<li><a href="account-wishlist.jsp">Wishlist</a></li>
									<li><a href="account-profile.jsp">Profile Page</a></li>
									<li class="active"><a href="account-address.jsp">Contact
											/ Shipping Address</a></li>
									<li><a href="account-open-ticket.jsp">Open Ticket</a></li>
									<li><a href="account-tickets.jsp">My Tickets</a></li>
									<li><a href="account-single-ticket.jsp">Single Ticket</a></li>
									<li><a href="account-password-recovery.jsp">Password
											Recovery</a></li>
								</ul></li>
							<li class="has-children"><span><a href="blog.jsp"><span>Blog
											List</span></a><span class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="blog.jsp">Blog List</a></li>
									<li><a href="blog-single.jsp">Single Post</a></li>
								</ul></li>
							<li class="has-children"><span><a href="#">Pages</a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="about.jsp">About Us</a></li>
									<li><a href="contacts.jsp">Contacts</a></li>
									<li><a href="faq.jsp">Help / FAQ</a></li>
									<li><a href="order-tracking.jsp">Order Tracking</a></li>
									<li><a href="404.jsp">404 Not Found</a></li>
									<li><a href="coming-soon.jsp">Coming Soon</a></li>
									<li><a class="text-danger" href="docs/dev-setup.jsp">Documentation</a></li>
								</ul></li>
							<li class="has-children"><span><a
									href="components/accordion.jsp"><span>Components</span></a><span
									class="sub-menu-toggle"></span></span>
								<ul class="slideable-submenu">
									<li><a href="components/accordion.jsp">Accordion</a></li>
									<li><a href="components/alerts.jsp">Alerts</a></li>
									<li><a href="components/buttons.jsp">Buttons</a></li>
									<li><a href="components/cards.jsp">Cards</a></li>
									<li><a href="components/carousel.jsp">Carousel</a></li>
									<li><a href="components/countdown.jsp">Countdown</a></li>
									<li><a href="components/forms.jsp">Forms</a></li>
									<li><a href="components/gallery.jsp">Gallery</a></li>
									<li><a href="components/google-maps.jsp">Google Maps</a></li>
									<li><a href="components/images.jsp">Images &amp;
											Figures</a></li>
									<li><a href="components/list-group.jsp">List Group</a></li>
									<li><a href="components/market-social-buttons.jsp">Market
											&amp; Social Buttons</a></li>
									<li><a href="components/media.jsp">Media Object</a></li>
									<li><a href="components/modal.jsp">Modal</a></li>
									<li><a href="components/pagination.jsp">Pagination</a></li>
									<li><a href="components/pills.jsp">Pills</a></li>
									<li><a href="components/progress-bars.jsp">Progress
											Bars</a></li>
									<li><a href="components/shop-items.jsp">Shop Items</a></li>
									<li><a href="components/steps.jsp">Steps</a></li>
									<li><a href="components/tables.jsp">Tables</a></li>
									<li><a href="components/tabs.jsp">Tabs</a></li>
									<li><a href="components/team.jsp">Team</a></li>
									<li><a href="components/toasts.jsp">Toast
											Notifications</a></li>
									<li><a href="components/tooltips-popovers.jsp">Tooltips
											&amp; Popovers</a></li>
									<li><a href="components/typography.jsp">Typography</a></li>
									<li><a href="components/video-player.jsp">Video
											Player</a></li>
									<li><a href="components/widgets.jsp">Widgets</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
				<!-- Search Section-->
				<div class="toolbar-section" id="search">
					<form class="search-form mb-2" method="get">
						<input type="search" placeholder="Type search query"><i
							class="material-icons search"></i>
					</form>
					<!-- Products-->
					<div class="widget widget-featured-products">
						<h3 class="widget-title">Found in Products</h3>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="shop-single.jsp"><img
									src="resources/img/shop/widget/01.png" alt="Product"></a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="shop-single.jsp">Max <span
										class='text-highlighted'>Task Chair</span></a>
								</h4>
								<span class="entry-meta">$299.00</span>
							</div>
						</div>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="shop-single.jsp"><img
									src="resources/img/shop/widget/02.png" alt="Product"></a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="shop-single.jsp"><span class='text-highlighted'>Drawer</span>
										File Cabinet</a>
								</h4>
								<span class="entry-meta">$265.00</span>
							</div>
						</div>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="shop-single.jsp"><img
									src="resources/img/shop/widget/03.png" alt="Product"></a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="shop-single.jsp">Campfire <span
										class='text-highlighted'>Paper</span> Table
									</a>
								</h4>
								<span class="entry-meta">$570.00</span>
							</div>
						</div>
					</div>
					<!-- Blog-->
					<div class="widget widget-featured-products">
						<h3 class="widget-title">Found in Blog</h3>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="blog-single.jsp"><img
									src="resources/img/blog/widget/01.jpg" alt="Post"></a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="blog-single.jsp"><span class='text-highlighted'>Modern</span>
										Working Space</a>
								</h4>
								<span class="entry-meta">May 09</span>
							</div>
						</div>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="blog-single.jsp"><img
									src="resources/img/blog/widget/02.jpg" alt="Post"></a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="blog-single.jsp">Interior <span
										class='text-highlighted'>Design</span> Tricks
									</a>
								</h4>
								<span class="entry-meta">April 18</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Account Section-->
				<div class="toolbar-section" id="account">
					<ul class="nav nav-tabs nav-justified" role="tablist">
						<li class="nav-item"><a class="nav-link active" href="#login"
							data-toggle="tab" role="tab">Log In</a></li>
						<li class="nav-item"><a class="nav-link" href="#signup"
							data-toggle="tab" role="tab">Sign Up</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade show active" id="login" role="tabpanel">
							<form autocomplete="off" id="login-form">
								<div class="form-group input-group">
									<input class="form-control" type="email" placeholder="Email"
										required><span class="input-group-addon"><i
										class="material-icons mail"></i></span>
								</div>
								<div class="form-group input-group">
									<input class="form-control" type="password"
										placeholder="Password" required><span
										class="input-group-addon"><i
										class="material-icons lock"></i></span>
								</div>
								<div class="custom-control custom-checkbox form-group">
									<input class="custom-control-input" type="checkbox" id="logged"
										checked> <label class="custom-control-label"
										for="logged">Keep me logged in</label>
								</div>
								<button class="btn btn-primary btn-block" type="submit">Log
									In</button>
							</form>
						</div>
						<div class="tab-pane fade" id="signup" role="tabpanel">
							<form autocomplete="off" id="signup-form">
								<div class="form-group">
									<input class="form-control" type="text" placeholder="Full Name"
										required>
								</div>
								<div class="form-group">
									<input class="form-control" type="email" placeholder="Email"
										required>
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
													<a href="shop-single.jsp">3-Drawer File Cabinet</a>
												</h4>
												<span><em>Price:</em> $257.00</span><span><em>Quantity:</em>
													1</span>
											</div>
										</div>
									</td>
									<td class="text-center"><a class="remove-from-cart"
										href="#"><i class="material-icons icon_close"></i></a></td>
								</tr>
								<tr>
									<td>
										<div class="product-item">
											<a class="product-thumb" href="shop-single.jsp"><img
												src="resources/img/shop/cart/02.jpg" alt="Product"></a>
											<div class="product-info">
												<h4 class="product-title">
													<a href="shop-single.jsp">Plastic Tissue Holder</a>
												</h4>
												<span><em>Price:</em> $76.40</span><span><em>Quantity:</em>
													2</span>
											</div>
										</div>
									</td>
									<td class="text-center"><a class="remove-from-cart"
										href="#"><i class="material-icons icon_close"></i></a></td>
								</tr>
								<tr>
									<td>
										<div class="product-item">
											<a class="product-thumb" href="shop-single.jsp"><img
												src="resources/img/shop/cart/03.jpg" alt="Product"></a>
											<div class="product-info">
												<h4 class="product-title">
													<a href="shop-single.jsp">Campfire Paper Table</a>
												</h4>
												<span><em>Price:</em> $289.00</span><span><em>Quantity:</em>
													1</span>
											</div>
										</div>
									</td>
									<td class="text-center"><a class="remove-from-cart"
										href="#"><i class="material-icons icon_close"></i></a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<hr class="mb-3">
					<div
						class="d-flex flex-wrap justify-content-between align-items-center">
						<div class="pr-2 py-1 text-sm">
							Subtotal: <span class='text-dark text-medium'>$622.40</span>
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
						style="background-image: url(../resources/img/account/user-cover-img.jpg);">
					</div>
					<div class="user-info">
						<div class="user-avatar">
							<a class="edit-avatar" href="#"><i
								class="material-icons edit"></i>수정하기</a><img
								src="resources/img/account/user-ava.jpg" alt="User">
						</div>
						<div class="user-data">
							<h5>회원이름</h5>
							<span>Joined November 06, 2020</span>
						</div>
					</div>
				</aside>
				<!-- 마이페이지 목록 수정 (연희) -->
				<nav class="list-group">
					<a class="list-group-item" href="account-wishlist.jsp"><i
						class="icon-heart"></i>위시리스트<span
						class="badge badge-default badge-pill">6</span></a> <a
						class="list-group-item" href="account-follows.jsp"><i
						class="icon-heart"></i>팔로우<span
						class="badge badge-default badge-pill">3</span></a> <a
						class="list-group-item" href="account-orders.jsp"><i
						class="icon-heart"></i>주문목록<span
						class="badge badge-default badge-pill">3</span></a> <a
						class="list-group-item" href="account-profile.jsp"><i
						class="icon-head"></i>프로필 수정</a> <a
						class="list-group-item with-badge active"
						href="account-address.jsp"><i class="icon-map"></i>주소록</a> <a
						class="list-group-item" href="account-myCanvas.jsp"><i
						class="icon-head"></i>마이 캔버스</a>
				</nav>
			</div>
			<!-- 주소록 폼 -->
        <div class="col-lg-8">
          <div class="col-12 padding-top-1x">
            <h4>내 주소록</h4>
            <hr class="padding-bottom-1x">
            <div class="custom-control custom-radio custom-control-inline">
              <input class="custom-control-input" type="radio" id="ex-radio-4" name="radio2">
              <label class="custom-control-label" for="ex-radio-4"> 주소 1 / 주소지명 </label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
              <input class="custom-control-input" type="radio" id="ex-radio-5" name="radio2" checked>
              <label class="custom-control-label" for="ex-radio-5"> 주소 2 / 주소지명 </label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
              <input class="custom-control-input" type="radio" id="ex-radio-6" name="radio2">
              <label class="custom-control-label" for="ex-radio-6"> 주소 3 / 주소지명 </label>
            </div>
            <hr class="margin-top-1x margin-bottom-1x">
            
          </div>
          <div class="padding-top-2x mt-2 hidden-lg-up"></div>
          <h4>주소지 수정</h4>
          <hr class="padding-bottom-1x">
          <form class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="account-company">주소지명</label>
                <input class="form-control" type="text" id="account-company" value="우리집" required>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="account-country">지역</label>
                <select class="form-control" id="account-country">
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
                <input class="form-control" type="text" id="account-zip" value="16074" required>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="account-city">상세주소 입력</label>
                <input class="form-control" type="text" id="account-address" value="서초구 백암빌딩" required>
              </div>
              <div class="text-right">
                <button class="btn btn-primary margin-bottom-none" type="button" data-toast data-toast-position="topRight" data-toast-type="success" data-toast-icon="icon-circle-check" data-toast-title="Success!" data-toast-message="Your address updated successfuly.">업데이트</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
	<!-- Site Footer-->
	<footer class="site-footer">
		<div class="column text-center">
			<p class="text-sm mb-4">
				Need Support? Call<span class="text-primary">&nbsp;001 (917)
					555-4836</span>
			</p>
			<a class="social-button sb-skype" href="#" data-toggle="tooltip"
				data-placement="top" title="Skype"><i class="socicon-skype"></i></a><a
				class="social-button sb-facebook" href="#" data-toggle="tooltip"
				data-placement="top" title="Facebook"><i
				class="socicon-facebook"></i></a><a class="social-button sb-google-plus"
				href="#" data-toggle="tooltip" data-placement="top" title="Google +"><i
				class="socicon-googleplus"></i></a><a class="social-button sb-twitter"
				href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i
				class="socicon-twitter"></i></a><a class="social-button sb-instagram"
				href="#" data-toggle="tooltip" data-placement="top"
				title="Instagram"><i class="socicon-instagram"></i></a>
			<p class="text-xxs text-muted mb-0 mt-3">
				© All rights reserved. Made with <i
					class='material-icons favorite text-danger'></i> by rokaux
			</p>
		</div>
		<div class="column">
			<h3 class="widget-title text-center">
				Subscription<small>To receive latest offers and discounts
					from the shop.</small>
			</h3>
			<form class="subscribe-form input-group"
				action="//rokaux.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;id=1194bb7544"
				method="post" target="_blank" novalidate>
				<span class="input-group-btn">
					<button type="submit">
						<i class="material-icons send"></i>
					</button>
				</span> <input class="form-control" type="email" name="EMAIL"
					placeholder="Your e-mail">
				<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
				<div style="position: absolute; left: -5000px;" aria-hidden="true">
					<input type="text" name="b_c7103e2c981361a6639545bd5_1194bb7544"
						tabindex="-1" value>
				</div>
			</form>
		</div>
		<div class="column">
			<h3 class="widget-title text-center">
				Payment Methods<small>We support one of the following
					payment methods.</small>
			</h3>
			<div class="footer-cards">
				<img src="resources/img/cards.png" alt="Payment Methods">
			</div>
		</div>
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