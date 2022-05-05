<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/petHealth.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>My Pet Health</title>
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
					<li class="prescriptions other"><a>Prescriptions</a></li>
					<li class="health"><a>My Pet Health</a></li>
					<li class="vet other"><a>My Vet Clinics</a></li>
				</ul>
			</div>
		</div>
		<div class="health_main">
			<div class="main_wrap">
				<div class="health_top">
					<a>Account</a>
					>
					<span>My Pet Health</span>
				</div>
				<div class="health_mid">
					<div class="health_img"></div>
					<div class="mid_btn">
						<button>
							<div class="btn_img">
								<svg viewBox="0 0 70 70" focusable="false" aria-hidden="true" fill="#060E8B" data-testid="prescription-manager-svg"><path d="M43.7 24.9H26.2c-2.5 0-4.6 2-4.6 4.5v22.4c0 1.4 1.2 2.6 2.7 2.6h21.3c1.5 0 2.7-1.2 2.7-2.6V29.4c0-2.5-2-4.5-4.6-4.5zm3.3 24H23V31.7h24v17.2z"></path><path d="M35 0C15.7 0 0 15.7 0 35s15.7 35 35 35 35-15.7 35-35S54.3 0 35 0zM24.1 16.2c0-1.2 1-2.2 2.3-2.2h17.3c1.3 0 2.3 1 2.3 2.2v4c-.1 1.2-1.1 2.1-2.4 2.1H26.4c-1.3 0-2.3-1-2.3-2.2v-3.9zM50 51.8c0 2.3-1.9 4.2-4.3 4.2H24.3c-2.4 0-4.3-1.9-4.3-4.2V29.4c0-3.3 2.8-6.1 6.3-6.1h17.4c3.4 0 6.3 2.7 6.3 6.1v22.4z"></path><path d="M32.5 46.4h4.8V43h3.5v-4.7h-3.5V35h-4.8v3.4H29V43h3.5z"></path></svg>
							</div>
							<span>Prescriptions</span>
						</button>
						<button class="btn_center">
							<div class="btn_img">
								<svg viewBox="0 0 70 70" focusable="false" aria-hidden="true" fill="#0061A6" data-testid="vet-clinic-svg"><path d="M21.2 27.9v23.4h27.6V28L35 19.7l-13.8 8.2zm22.5 20.3H25.6V30.1h18.1v18.1z"></path><path d="M32.2 44.5H37v-3h3v-4.8h-3v-3h-4.8v3h-3v4.8h3z"></path><path d="M35 0C15.7 0 0 15.7 0 35s15.7 35 35 35 35-15.7 35-35S54.3 0 35 0zm19.5 52.5h-39v-1.3h4.4V28.7l-1.6 1-2.4-4.4L35 13.5l19.1 11.9-2.4 4.3-1.6-1v22.5h4.4v1.3z"></path></svg>
							</div>
							<span>My Vet Clinics</span>
						</button>
						<button class="btn_right">
							<div class="btn_img">
								<svg viewBox="0 0 70 70" focusable="false" aria-hidden="true" fill="#192C55" data-testid="connect-with-a-vet-svg"><path d="M41.7 16.1h-4.6c-.3 0-.5.2-.5.5s.2.5.5.5h4.6c.2 0 .4-.3.5-.5 0-.3-.2-.5-.5-.5z"></path><circle cx="17.5" cy="34" r="1.2"></circle><path d="M35 0C15.7 0 0 15.7 0 35s15.7 35 35 35 35-15.7 35-35S54.3 0 35 0zM17.4 44.7v-7.3c-1.7-.3-3-1.7-3-3.4 0-1.9 1.5-3.4 3.4-3.4s3.4 1.5 3.4 3.4c0 1.8-1.3 3.2-3 3.4v7.3c0 .7.5 1.2 1.2 1.2h9.3c.7 0 1.2-.5 1.2-1.2v-4.4c0-1.1 1-2.1 2.1-2.1s2.1.9 2.1 2.1v4.4c0 .7.5 1.2 1.2 1.2h.6c.7 0 1.2-.5 1.2-1.2V38c-.3-.2-.6-.6-.6-1v-1.3c-1.4-.2-2.7-.9-3.6-2-.3-.3-.3-.8-.1-1.2 0 0-.1 0-.1-.1-.5-.8-.7-1.8-.7-2.7v-4.8c0-.7.7-1.3 1.4-1.3h1.1c.1-.4.5-.6.9-.6.5 0 1 .4 1 1 0 .5-.4 1-1 1-.4 0-.7-.3-.9-.6h-1.1c-.2 0-.4.2-.4.4v4.8c0 .7.2 1.5.6 2.2.3 0 .7.1 1 .4.7.8 1.6 1.2 2.6 1.3 1.1.1 2.2-.3 3-1.1.1 0 .1-.1.2-.2.2-.3.6-.5 1-.4.3-.6.5-1.4.5-2.1v-5c0-.2-.2-.4-.4-.4h-1.2c-.2.4-.5.6-.9.6-.5 0-1-.4-1-1 0-.5.4-1 1-1 .4 0 .7.3.9.6h1.2c.7 0 1.3.6 1.3 1.3v5c0 .9-.2 1.7-.4 2.4l-.1.1c.2.4.2.9-.1 1.3-.1.2-.2.3-.3.4-.9.9-2 1.5-3.2 1.7V37c0 .3-.1.6-.3.8-.1.1-.2.1-.3.2v6.7c0 1.1-.9 2.1-2.1 2.1h-.6c-1.1 0-2.1-.9-2.1-2.1v-4.4c0-.7-.5-1.2-1.2-1.2s-1.2.5-1.2 1.2v4.4c0 1.1-.9 2.1-2.1 2.1h-9.3c-1.1 0-2.1-.9-2.1-2.1zm34.5-22.4c0 .3-.2.5-.6.4V24c.3 0 .5.2.5.5v.7c0 .3-.2.5-.5.5v25.9c0 1.6-1.3 2.9-2.9 2.9H30c-1.6 0-2.9-1.3-2.9-2.9v-3.9h1.7c.6 0 1.1-.2 1.5-.4v2.4h17.9v-31H30.3v19.1c-.7.5-1.2 1.4-1.2 2.4v4.4c0 .1-.1.2-.2.2h-1.7V22.3c-.3 0-.5-.2-.5-.5v-1.5c0-.3.2-.5.5-.5v-2.4c0-1.6 1.3-2.9 2.9-2.9h18.4c1.6 0 2.9 1.3 2.9 2.9v3.7c.3 0 .5.2.5.5v.7z"></path><circle cx="39.3" cy="52.1" r="1"></circle></svg>
							</div>
							<span>Connect with a Vet</span>
						</button>
					</div>
				</div>
				<h2>My Pets</h2>
				<button class="add_btn">Add Another Pet</button>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>

</body>
</html>