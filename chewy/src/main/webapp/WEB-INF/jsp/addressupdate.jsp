<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>주소 등록 테스트</h1>
	<form action="addressupdate.do" method="POST">
		<input name="m_name" type="text" placeholder="Full Name"/>
		<input name="m_road" type="text" placeholder="Street Address"/>
		<input name="m_city" type="text" placeholder="city"/>
		<input name="m_state" type="text" placeholder="state Name"/>
		<input name="m_zipcode" type="text" placeholder="zip code"/>
		<button type="submit">등록</button>
	</form>
</body>
</html>