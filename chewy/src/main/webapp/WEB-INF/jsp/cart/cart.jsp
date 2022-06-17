<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<link rel="stylesheet" href="css/cart/cart.css" />
<title>Shopping Cart | Chewy.com</title>
</head>
<body>
	
	<input type="hidden" id="size" value="${size }">
	
	<%@ include file="../header/headerMain.jsp" %>
	
	<main class="cart_main">
		<div class="cart_wrap">
			<div class="cart_container">
				<div class="container_wrap">
					<h2>Your cart is empty.</h2>
					<p>Something missing?
						<a href="login.do">Sign in</a>
						to see items you may have added from another computer or device.
					</p>
					<div class="cart_img_wrap">
						<div class="empty_img">
							<div class="img_wrap">
							</div>
							<img src="../../images/cart/cart_empty.png">
						</div>
					</div>
					<a>
						<button class="continue" onclick="location.href='main.do'">Continue Shopping</button>
					</a>
				</div>
				<div class="cartlist">
					<div class="cartlist_wrap">
						<h2>Your Shopping Cart</h2>
						<div class="list_wrap">
							<div class="list_items">
								<c:forEach items="${list }" var="result">
									<c:forEach items="${result.productVo }" var="i">
									<div class="item">
										<div class="item_wrap">
											<div class="item_img">
												<a>
													<div class="item_img_a_wrap">
														<div class="item_img_top">
															<div class="img_top_wrap">
																<img src="../../images/cart/img_none.svg">
															</div>
														</div>
														<img src="${i.p_img }">
													</div>
												</a>
												<p>In Stock</p>
											</div>
											<div class="item_title">
												<div class="title_top">
													<p class="title" id="pno" value="${i.p_no }">
														<a>
															<strong>${i.p_name}</strong>
														</a>
													</p>
													<strong>${i.p_price }</strong>
													<p class="br"></p>
												</div>
												<div class="title_bottom">
													<div class="bottom_wrap">
														<svg class="kib-product-pricing__autoship-icon" aria-hidden="true" focusable="false" role="img" data-qa-id="cart-autoship-badge" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g fill-rule="evenodd"><path fill="#18499B" d="M19.24 4.26L17.3 6.74c-2.7-2.1-8.4-5.06-13.93 1.07-.45.5-.89 1.06-1.32 1.69L2 9.57h.01a11.5 11.5 0 016.46-1.48c2.83.18 4.05.86 5.8 2.54l-1.94 2.51s4.1 1.8 8.84-.25l-1.93-8.63z"></path><path fill="#F27123" d="M3.94 20.27l1.92-2.47c2.7 2.09 8.4 5.06 13.93-1.08.45-.5.89-1.05 1.32-1.68l.06-.07h-.01a11.5 11.5 0 01-6.46 1.47c-2.83-.17-4.05-.85-5.8-2.54l1.94-2.5s-4.1-1.8-8.84.25l1.94 8.62z"></path></g></svg>
														<span>Autoship</span>
														<span class="span_br"></span>
													</div>
												</div>
											</div>
											<div class="item_count">
												<div class="count_wrap">
													<div class="count_option">
														<div class="option">
															<select id="count">
																<option class="hidden_option" value="${result.c_total }">${result.c_total }</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
															</select>
														</div>
													</div>
													<form action="delete.do">
														<button name="p_no"  class="delete_btn" value="${i.p_no }">Delete</button>
													</form>
												</div>
											</div>
										</div>
									</div>
									</c:forEach>
								</c:forEach>
							</div>
							<div class="itmes_total">
								<div class="total_wrap">
									<div class="total_container">
										<div class="items_price">
											<div class="shipping">
												<div class="shipping_free">
													<span class="free_top">
														<span>
															<strong></strong>
															until FREE shipping
														</span>
													</span>
													<span class="free_bottom">
														<span>
															<svg aria-hidden="true" focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><title>Truck</title><desc>Represents shipping.</desc><g fill="currentColor"><path d="M18.48 7.03l4.38 5.23c.05.04.1.14.14.23v5.04c0 .1-.1.19-.19.19h-.99c-.09 0-.14-.05-.14-.14a3.6 3.6 0 00-7.2 0c0 .09-.04.14-.14.14H9.92c-.1 0-.14-.05-.14-.14a3.5 3.5 0 00-2.26-3.18 3.92 3.92 0 00-4.1 1.03c-.5.65-.74 1.4-.8 2.15 0 .09-.04.14-.13.14h-1.3c-.1 0-.19-.1-.19-.2V4.24c0-.14.1-.23.24-.23h13.95c.1 0 .19.05.14.19v2.66c0 .04.05.09.1.09h2.87c.09 0 .14.05.18.1zm-3.02 5.74h5.94c.05 0 .1-.1.1-.14l-3.58-4.38c-.05-.05-.05-.05-.1-.05h-2.36c-.04 0-.09.05-.09.1v4.38c0 .04.05.1.1.1z"></path><path d="M6.17 15.5c1.2 0 2.17.96 2.17 2.15 0 1.18-.97 2.14-2.17 2.14S4 18.83 4 17.65c0-1.19.97-2.15 2.17-2.15M18.17 15.5c1.2 0 2.17.96 2.17 2.15 0 1.18-.97 2.14-2.17 2.14S16 18.83 16 17.65c0-1.19.97-2.15 2.17-2.15"></path></g></svg>
														</span>
													</span>
												</div>
												<div class="shipping_gage">
												
												</div>
											</div>
											<div class="total_price">
											
											</div>
										</div>
										<div class="items_buy">
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<%@ include file="../footer/footerMain.jsp" %>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript" src="../js/cart.js"></script>
	<script type="text/javascript" src="../js/header/headerMain.js"></script>
</body>
</html>