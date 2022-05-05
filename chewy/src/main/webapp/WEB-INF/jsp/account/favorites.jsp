<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/favorites.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>Favorites | Chewy.com</title>
</head>
<body>

	<%@include file="../header/headerMain.jsp" %>

	<main class="main">
		<div class="account_navi">
			<div class="account_navi_wrap">
				<ul class="account_navi_list">
					<li class="overview other"><a>Overview</a></li>
					<li class="orders other"><a>Orders</a></li>
					<li class="autoship other"><a>Autoship</a></li>
					<li class="mypets other"><a>My Pets</a></li>
					<li class="favorites"><a>Favorites</a></li>
					<li class="buy other"><a>Buy Again</a></li>
					<li class="gift other"><a>Gift Cards</a></li>
					<li class="prescriptions other"><a>Prescriptions</a></li>
					<li class="health other"><a>My Pet Health</a></li>
					<li class="vet other"><a>My Vet Clinics</a></li>
					<li class="rescue other"><a>My Rescues</a></li>
				</ul>
			</div>
		</div>
		<div class="favorites_main">
			<div class="main_wrap">
				<div class="favorites_top">
					<a>Account</a>
					>
					<span>Favorites</span>
				</div>
				<div class="favorites_mid">
					<h1>Favorites</h1>
				</div>
				<div class="favorites_bottom">
					<div class="favorites_bottom_wrap">
						<img src="../images/account/orderBox.svg">
						<h1>No Favorite Items</h1>
						<p>Look for the heart to save favorites while you shop.</p>
						<a href="main.do">Start Shopping</a>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>

</body>
</html>