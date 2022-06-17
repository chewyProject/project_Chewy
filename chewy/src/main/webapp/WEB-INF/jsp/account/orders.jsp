<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/orders.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>Orders | Chewy.com</title>
</head>
<body>

	<%@include file="../header/headerMain.jsp" %>

	<main class="main">
		<div class="account_navi">
			<div class="account_navi_wrap">
				<ul class="account_navi_list">
					<li class="overview other" onclick="location.href='/mypage.do'"><a>Overview</a></li>
					<li class="orders"><a href="orders.do">Orders</a></li>
					<li class="autoship other"><a href="autoship.do">Autoship</a></li>
					<li class="mypets other"><a href="pet.do">My Pets</a></li>
					<li class="favorites other"><a href="favorite.do">Favorites</a></li>
					<li class="buy other"><a href="buy.do">Buy Again</a></li>
					<li class="gift other"><a href="gift.do">Gift Cards</a></li>
					<li class="prescriptions other"><a href="prescription.do">Prescriptions</a></li>
					<li class="health other"><a href="petHealth.do">My Pet Health</a></li>
					<li class="vet other"><a href="vet.do">My Vet Clinics</a></li>
					<li class="rescue other"><a href="rescue.do">My Rescues</a></li>
				</ul>
			</div>
		</div>
		<div class="orders_main">
			<div class="main_wrap">
				<div class="order_top">
					<a>Account</a>
					>
					<span>Orders</span>
				</div>
				<div class="order_mid">
					<h1>Orders</h1>
					<div class="order_mid_right">
						<p>
							<strong>0</strong>
							orders placed in
						</p>
						<label for="filter"></label>
						<select class="filter" name="filter" id="filter">
							<option value="past 30 days" selected="selected">past 30 days</option>
							<option value="past 6 months">past 6 months</option>
							<option value="2022">2022</option>
						</select>
					</div>
				</div>
				<div class="order_bottom">
					<div class="order_bottom_wrap">
						<img src="../images/account/orderBox.svg">
						<h1>No recent orders.</h1>
						<p>You have not placed any orders in the past 30 days.</p>
						<a href="main.do">Start Shopping</a>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript" src="../js/account.js"></script>
</body>
</html>