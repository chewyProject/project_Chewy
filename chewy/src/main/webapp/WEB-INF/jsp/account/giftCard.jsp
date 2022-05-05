<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/giftCard.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>Gift Cards | Chewy.com</title>
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
					<li class="favorites other"><a>Favorites</a></li>
					<li class="buy other"><a>Buy Again</a></li>
					<li class="gift"><a>Gift Cards</a></li>
					<li class="prescriptions other"><a>Prescriptions</a></li>
					<li class="health other"><a>My Pet Health</a></li>
					<li class="vet other"><a>My Vet Clinics</a></li>
					<li class="rescue other"><a>My Rescues</a></li>
				</ul>
			</div>
		</div>
		<div class="gift_main">
			<div class="main_wrap">
				<div class="gift_top">
					<a>Account</a>
					>
					<span>Gift Cards</span>
				</div>
				<div class="gift_mid">
					<h1>Gift Cards</h1>
				</div>
				<h3>
					Gift Card Balance:
					<span>$0.00</span>
				</h3>
				<div class="gift_bottom">
					<div class="gift_bottom_wrap">
						<button class="add_btn">Add a Gift Card</button>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>

</body>
</html>