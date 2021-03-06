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
				<form method="post" action="login.do" id="form-login" class="login" name="loginForm">
					<div class="signin form-fields-section kaxsdc" data-event="load">
						<h1 style="	font-size: 2.4rem; line-height: 1.25; margin-top: -0.2916666667em; margin-bottom: 1em; padding-top: 1.25em; font-weight: 400; color: #333; border: none;">Sign in or register</h1>
						<div id="cookie-disabled-error-message"></div>
						<div class="returningCustomer bg-form">
							<h2>I'm a Returning Customer</h2>
							<fieldset>
								<ol class="shelterFieldList">
									<li class="field">
										<div class="field__wrapper" data-hj-suppress="">
											<input size="40" name="m_email" id="m_email" type="email" class="field__input field__input--email input--email" value=""  placeholder="Email Address">
											<span class="error"></span>
										</div>
									</li>

									<li class="field">
										<div class="field__wrapper" data-hj-suppress="">
											<input size="25" name="m_password" id="m_password" type="password" class="field__input field__input--pw input--password" value= "" placeholder="Password">
											<span class="error"></span>
										</div>
									</li>
									<li>
										<a id="forgotPassword" href="email.do" class="js-forgot-password">Forgot your password?</a>
									</li>
								</ol>
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
				</form>
			</div>
		</div>
	</main>

</div>

<script>
	const email = document.querySelector("#m_email");
	const password = document.querySelector("#m_password");
	const error = document.querySelectorAll(".error");
	
	// ????????? ?????????
	email.addEventListener("input", checkEmail);
	password.addEventListener("input", checkPassword);
	
	// ?????? ??????
	function checkEmail() {
// 	  const korPattern = /[a-zA-Z0-9_-]{5,20}/;
	  const korPattern = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
	  if (email.value === "") {
	    error[0].innerHTML = "???????????? ??????????????????.";
	    error[0].style.color = "red";
	  } else if (!korPattern.test(email.value)) {
	    error[0].innerHTML =
	      "????????? ????????? ?????? ??????????????????";
	    error[0].style.color = "red";
	  } else if (korPattern.test(email.value)) {
	    error[0].innerHTML = "";
	    error[0].style.color = "red";
	  }
	}
	
	function checkPassword() {
	  const pwPattern = /[a-zA-Z0-9\[\]\{\}\/\(\)\.\?\<\>!@#$%^&*]{8,16}/;
	  if (password.value === "") {
	    error[1].innerHTML = "??????????????? ??????????????????.";
	    error[1].style.color = "red";
	  } else if (pwPattern.test(password.value)) {
	    error[1].innerHTML = "";
	  } else if (!pwPattern.test(password.value)) {
	    error[1].innerHTML = "8~16??? ?????? ??? ?????????, ??????, ??????????????? ???????????????.";
	    error[1].style.color = "red";
	  }
	}
	
	function logIn_btn() {
		var form = document.logInForm // ??? ????????? ???????????? loginForm ?????? (name?????? ??????)
		if (!form.m_email.value){
			alert(" ???????????? ??????????????????");
			return;
		}
		
		if (!form.m_password.value) {
			alert("??????????????? ??????????????????");
			return;
		}
		form.submit();
	}
	
	
	

</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	 <%@ include file="footer/footerPw.jsp" %>
</body>
</html>