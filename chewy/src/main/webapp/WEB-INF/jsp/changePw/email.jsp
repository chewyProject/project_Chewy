<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password | Chewy.com</title>
<link rel="stylesheet" href="../css/header/headerPw.css" />
<link rel="stylesheet" href="../css/footer/footerPw.css" />
<link rel="stylesheet" href="../css/changePw/email.css" />
</head>
<body>

	<div class="header_div">
		<%@ include file="../header/headerPw.jsp" %>
	</div>
		
	<main>
		<div class="mainContainer">
			<div class="wrap">
				<h1>Reset Password</h1>
				<div class="a_wrap"><a>Please enter the email address associated with your Chewy account.</a></div>
				<div class="reset_Container">
					<form method="post">
						<div class="input_wrap">
							<input name="m_email" type="text" placeholder="Email">
						</div>
						<div class="button_wrap">
							<button type="submit">Reset Password</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>	
		
	<%@ include file="../footer/footerPw.jsp" %>
</body>
</html>