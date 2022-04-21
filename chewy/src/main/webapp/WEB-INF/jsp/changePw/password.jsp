<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password | Chewy.com</title>
</head>
<body>
	<header></header>


	<div>
		<div>
			<h1>Create a New Password</h1>
		</div>
		<div>
			<p>Password must be at least 6 characters.</p>
			<form method="post">
			<input name="m_no" type="hidden" value="${no }">
			<input name="m_password" type="text">
			<input name="m_confirmpw" type="text">
			<button type="submit"></button>
			</form>
		</div>
		
	</div>


	<footer></footer>
</body>
</html>