<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	int m_no = 1;
	session.setAttribute("m_no", m_no);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<button type="button" onclick="location.href='/cart.do'">your cart</button>

</body>
</html>