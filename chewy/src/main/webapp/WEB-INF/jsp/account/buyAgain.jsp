<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/buyAgain.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>Buy Again | Chewy.com</title>
</head>
<body>

	<%@include file="../header/headerMain.jsp" %>

	<main class="main">
		<div class="account_navi">
			<div class="account_navi_wrap">
				<ul class="account_navi_list">
					<li class="overview other" onclick="location.href='/mypage.do'"><a>Overview</a></li>
					<li class="orders other"><a href="orders.do">Orders</a></li>
					<li class="autoship other"><a href="autoship.do">Autoship</a></li>
					<li class="mypets other"><a href="pet.do">My Pets</a></li>
					<li class="favorites other"><a href="favorite.do">Favorites</a></li>
					<li class="buy"><a href="buy.do">Buy Again</a></li>
					<li class="gift other"><a href="gift.do">Gift Cards</a></li>
					<li class="prescriptions other"><a href="prescription.do">Prescriptions</a></li>
					<li class="health other"><a href="petHealth.do">My Pet Health</a></li>
					<li class="vet other"><a href="vet.do">My Vet Clinics</a></li>
					<li class="rescue other"><a href="rescue.do">My Rescues</a></li>
				</ul>
			</div>
		</div>
		<div class="buy_main">
			<div class="main_wrap">
				<div class="buy_top">
					<a>Account</a>
					>
					<span>Buy Again</span>
				</div>
				<div class="buy_mid">
					<h1>Buy Again</h1>
				</div>
				<div class="buy_bottom">
					<div class="buy_bottom_wrap">
						<img src="../images/account/orderBox.svg">
						<h1>No previous orders.</h1>
						<p>We'll save items you buy here for fast and easy shopping.</p>
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