<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int m_no = 1;
	session.setAttribute("m_no", m_no);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header/category.css" />
</head>
<body>

<%@ include file="header/category.jsp" %>
<!-- <button type="button" onclick="location.href='/cart.do'">your cart</button> -->

</body>
</html>