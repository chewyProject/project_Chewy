<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping Cart | Chewy.com</title>
</head>
<body>
	
	카트 페이지 입니다.
	
	<c:forEach items="${list }" var="result">
		<div>
			<p>${result.p_no }</p>
			<p>${result.m_no }</p>
			<p>${result.c_total }</p>
		<c:forEach items="${result.productVo }" var="i">
			<p>${i.p_name}</p>
		</c:forEach>
		</div>
	</c:forEach>
	
</body>
</html>