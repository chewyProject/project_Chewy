<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Mypage Test</h1>
<div>
	<p>이름 : ${info[0].m_name }</p>
	<p>이메일 : ${info[0].m_email }</p>
	
	<form action="profile.do" method="POST">
		<button type="submit" >profile 수정</button>
	</form>
</div>
</body>
</html>