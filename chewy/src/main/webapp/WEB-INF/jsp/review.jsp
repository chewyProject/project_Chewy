<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>마리아DB 연동 확인</h1>
	
	<form id="review" name="review">
<!-- 	<form action="product.do" method="post"> -->
<!-- 	<form action="productList.do" method="post"> -->
		<table border="1px solid ">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>제목</th>
					<th>내용</th>
					<th>별점</th>
					<th>점수</th>
					<th>피드백</th>
					<th>사진경로</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var ="review" items="${review }">
					<tr>
						<td>${review.r_no}</td>
						<td>${review.r_nick}</td>
						<td>${review.r_title}</td>
						<td>${review.r_content}</td>
						<td>${review.r_star}</td>
						<td>${review.r_grade}</td>
						<td>${review.r_gcontent}</td>
						<td>${review.r_photo}</td>
						
					</tr>
				</c:forEach>		
			</tbody>
		</table>
		
		<a href="insertReview.do">리뷰 등록</a>
<!-- 		<a href="history.back();">뒤로가기</a> -->
	</form>
	
</body>
</html>