<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerPw.css" />
<link rel="stylesheet" href="css/account/create.css" />
<link rel="stylesheet" href="css/footer/footerPw.css" />
<title>Register at Chewy.com</title>
</head>
<body>
	<%@ include file="../header/headerPw.jsp" %>
	
	<main class="main">
		<div class="main_wrap">
			<h1>Create an Account</h1>
			<div class="main_container">
				<h3>Please enter your information</h3>
				<div class="main_container_wrap">
					<div class="main_left">
						<form class="main_form" action="register2.do" method="post">
							<ul>
								<li class="input_li">
									<label for="Full_name">Full Name</label>
									<div class="li_wrap">
										<input type="text" name="m_name" id="Full_name" class="FullName">
									</div>
								</li>
								<li class="input_li">
									<label for="Email">Email Address</label>
									<div class="li_wrap">
										<input type="text" name="m_email" id="Email" class="Email">
									</div>
								</li>
								<li class="input_li">
									<label for="password">Password</label>
									<div class="li_wrap">
										<input type="text" name="m_password" id="password" class="password">
									</div>
								</li>
								<li class="input_li">
									<label for="confirm">Confirm Password</label>
									<div class="li_wrap">
										<input type="text" name="m_confirmpw" id="confirm" class="confirm">
									</div>
								</li>
							</ul>
							
							<input type="submit" class="input_btn main_btn" value="Create Account">
							<div class="legal">
								<p>
								By creating your account, you agree to Chewy's
								<a href="https://www.chewy.com/app/content/privacy">Privacy Policy</a>
								and
								<a href="https://www.chewy.com/app/content/terms">Terms of Use.</a>
								</p>
							</div>
							<div class="Already">
								<hr>
								<span>Already have an account?</span>
							</div>
							<a href="login.do" class="signIn_btn main_btn">Sign In</a>
						</form>
					</div>
					<div class="main_right">
						<p>Creating an account is fast, easy, and free. You'll be able to manage your autoships, track your orders, write reviews, and more!</p>
						<ul>
							<li>TRACK YOUR ORDERS</li>
							<li>MANAGE AUTOSHIP</li>
							<li>VIEW YOUR ORDER HISTORY</li>
							<li>RATE AND REVIEW PRODUCTS</li>
							<li>GET EXCLUSIVE OFFERS, DISCOUNTS, AND MORE!</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<%@ include file="../footer/footerPw.jsp" %>
</body>
</html>