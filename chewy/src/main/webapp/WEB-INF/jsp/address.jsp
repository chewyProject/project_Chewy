<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 주소 추가 테스트</h1>
	<p>Full name : ${info[0].m_name}</p>
	<p>road : ${info[0].m_road}</p>
	<p>city : ${info[0].m_city }</p>
	<p>state : ${info[0].m_state }</p>
	<p>zipcode : ${info[0].m_zipcode }</p>
	<form action="addressupdateForm.do" method="GET">
		<button type="submit" >address 등록</button>
	</form>
</body>
</html>