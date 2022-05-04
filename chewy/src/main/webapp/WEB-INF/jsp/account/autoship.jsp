<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/autoship.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>My Autoships | Chewy.com</title>
</head>
<body>
	<%@include file="../header/headerMain.jsp" %>

	<main class="main">
		<div class="account_navi">
			<div class="account_navi_wrap">
				<ul class="account_navi_list">
					<li class="overview other"><a>Overview</a></li>
					<li class="orders other"><a>Orders</a></li>
					<li class="autoship"><a>Autoship</a></li>
					<li class="mypets other"><a>My Pets</a></li>
					<li class="favorites other"><a>Favorites</a></li>
					<li class="buy other"><a>Buy Again</a></li>
					<li class="gift other"><a>Gift Cards</a></li>
					<li class="prescriptions other"><a>Prescriptions</a></li>
					<li class="health other"><a>My Pet Health</a></li>
					<li class="vet other"><a>My Vet Clinics</a></li>
					<li class="rescue other"><a>My Rescues</a></li>
				</ul>
			</div>
		</div>
		<div class="autoship_main">
			<div class="main_wrap">
				<div class="autoship_top">
					<a>Account</a>
					>
					<span>Manage Autoship</span>
				</div>
				<div class="autoship_mid">
					<h1>Manage Autoship</h1>
				</div>
				<div class="autoship_bottom">
					<p>
						You don't have any Autoship orders set up yet.
						<br>
						To start an Autoship order, select the Autoship option on eligible items when you're shopping and choose your frequency.
						<br>
						You can also choose to Autoship items from your cart or checkout.
						<br>
						It's that easy!
					</p>
					<a href="main.do">Start Shopping!</a>
					<div>
						<img src="../images/account/autoship.jpg">
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>
</body>
</html>