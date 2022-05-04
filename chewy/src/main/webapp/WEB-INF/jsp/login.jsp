<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In | Chewy.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/footer/footerPw.css" />
<link rel="stylesheet" href="css/header/headerPw.css" />
<link rel="stylesheet" href="css/login/login.css" />
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
	
	<div class="is-desktop">
	<%@ include file="header/headerPw.jsp" %>
	<main id="page-content" class="main-content">
		<div id="container">
			<div id="wrap">
				<form method="post" action="login.do" id="form-login" class="login" novalidate="novalidate">
					<div class="signin form-fields-section kaxsdc" data-event="load">
						<h1>Sign in or register</h1>
						<div id="cookie-disabled-error-message"></div>
						<div class="returningCustomer bg-form">
							<h2>I'm a Returning Customer</h2>
							<fieldset>
								<ol class="shelterFieldList">
									<li class="field">
<!-- 										<label for="username" class=""></label> -->
										<label for="username" class="">Email Address</label>
										<div class="field__wrapper" data-hj-suppress="">
											<input size="40" name="m_email" id="m_email" type="email" class="field__input field__input--email input--email" value="">
										</div>
									</li>

									<li class="field">
<!-- 										<label for="password" class=""></label> -->
										<label for="password" class="">Password</label>
										<div class="field__wrapper" data-hj-suppress="">
											<input size="25" name="m_password" id="m_password" type="password" class="field__input field__input--pw input--password">
										</div>
									</li>
									<li>
										<a id="forgotPassword" href="/app/resetpassword/start" class="js-forgot-password">Forgot your password?</a>
									</li>
								</ol>
								<input type="hidden" name="_eventName" value="submit">
								<input type="hidden" name="forceChallenge" value="false">
								<input type="hidden" name="srcPageUuid" value="e99307e1d4394c5ea4eb67fa2f9c5d87">
								<input type="hidden" name="collectBeganTimestamp" value="">
								<input type="hidden" name="collectEndedTimestamp" value="">
								<input name="submitForm" id="form-login--submit-button" type="submit" class="cw-btn cw-btn--action input--submit js-login" value="Sign In">
							</fieldset>
						</div>

						<div class="newCustomer">
							<h2>I'm a New Customer</h2>
							<p>Creating an account is fast, easy, and free. You'll be
								able to manage your autoships, track your orders, write reviews,
								and more!</p>
							<a href="register.do" class="cw-btn cw-btn--default js-create-account">Create Account</a>
						</div>
					</div>

					<input name="targetUrl" type="hidden" value="/app/account">
					<div style="display: none;">
						<input type="hidden" name="_sourcePage" value="fEEtLIuM0jM0JSSDSr9L8Xyap6ttx7rNLRp__uMMy8iBS8v7lhkmQifNvyJPE6PpqK7nM5vwY5KR2Gq8bmaO9A4_3DDT-Jo0eC1m8a-dQuc=">
						<input type="hidden" name="__fp" value="BGDOC4i4z_esGy0zdu4YpxxqhnZgFKt14D7G5b9YG8mn6pqPcFkX2XWlisMjvPVJ">
					</div>
				</form>
			</div>
		</div>
	</main>

</div>


<!-- <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	 <%@ include file="footer/footerPw.jsp" %>
</body>
</html>