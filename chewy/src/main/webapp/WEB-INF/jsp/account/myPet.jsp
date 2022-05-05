<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/myPet.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>Pet Food, Products, Supplies at Low Prices | Chewy</title>
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
					<li class="mypets"><a>My Pets</a></li>
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
		<div class="mypets_main">
			<div class="mypets_left">
			</div>
			<div class="mypets_right">
				<div class="right_wrap">
					<h1>Create Your Pet's Profile</h1>
					<p>
						From the chill weirdos to the total goofballs, every pet is unique. Tell us about yours, and we'll create a go-to space just for them.
					</p>
					<div class="pet_btn_wrap">
						<button>
							<span>Start with the Basics</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</main>
		
	<%@include file="../footer/footerMain.jsp" %>
</body>
</html>