<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/header/headerPw.css" />
<link rel="stylesheet" href="../css/footer/footerPw.css" />
<link rel="stylesheet" href="../css/changePw/password.css" />
<title>Reset Password | Chewy.com</title>
</head>
<body>
	<%@ include file="../header/headerPw.jsp" %>

	<main>
		<div class="mainContainer">
			<div class="wrap">
				<h1>Create a New Password</h1>
				<div class="a_wrap"><p>Password must be at least 6 characters.</p></div>
			</div>
			<div class="reset_Container">
				<form method="post">
					<input name="m_no" type="hidden" value="${no }">
					<div class="pw_wrap"><input name="m_password" type="text" placeholder="New Password"></div>
					<div class="pw_wrap"><input name="m_confirmpw" type="text" placeholder="Confirm Password"></div>
					<div class="button_wrap"><button type="submit">Save</button></div>
				</form>
			</div>
		</div>
	</main>

	<div>
	<%@ include file="../footer/footerPw.jsp" %>
	</div>
</body>
</html>