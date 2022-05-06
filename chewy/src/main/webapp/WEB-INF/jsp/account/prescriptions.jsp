<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/prescriptions.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>prescriptions | Chewy</title>
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
					<li class="profile other"><a>Profile</a></li>
					<li class="address other"><a>Addresses</a></li>
					<li class="payment other"><a>Payment Methods</a></li>
					<li class="gift other"><a>Gift Cards</a></li>
					<li class="prescriptions"><a>Prescriptions</a></li>
					<li class="health  other"><a>My Pet Health</a></li>
					<li class="vet other"><a>My Vet Clinics</a></li>
				</ul>
			</div>
		</div>
		<div class="prescriptions_main">
			<div class="main_wrap">
				<div class="prescriptions_top">
					<a class="top_prect">Account</a>
					<span class="top_prect">My Pet Health</span>
					<span>prescriptions</span>
				</div>
				<div class="prescriptions_mid">
					<h2>prescriptions</h2>
				</div>
				<div class="prescriptions_bottom">
					<div class="prescriptions_bottom_wrap">
						<div class="pre_btn_wrap">
							<div class="pre_wrap">
								<img src="../images/account/pre.png">
								<p class="img_top">No prescriptions to show yet.</p>
								<p class="img_mid">This is where you'll view, refill, and manage your Chewy Pharmacy prescriptions.</p>
								<button class="img_bottom" href="main.do">Shop Pharmacy</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>

</body>
</html>