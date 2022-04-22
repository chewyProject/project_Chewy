<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert review</title>
</head>
<body>
	<h1>리뷰 등록</h1>
	
	<div class="container">
		<form method="post" id="insertReview">
<!-- 		<form action="insertreview.do" method="post" id="insertreview"> -->
			<div class="Review">
<!-- 				<div class="review_label"> -->
<!-- 					<label for="label">상품번호</label> --> 
<!-- 					<input type="text" id="label" name="p_id" > -->
<!-- 				</div>  <- 인덱스번호 자동 생성 !!!-->
				</div>

				<div class="review_label">
					<label for="label">닉네임</label>
					<input type="text" id="label" name="r_nick" >
				</div>
				<div class="review_label">
					<label for="label">제목</label>
					<input type="text" id="label" name="r_title" >
				</div>
				<div class="review_label">
					<label for="label">내용</label>
					<input type="text" id="label" name="r_content" >
				</div>
				<div class="review_label">
					<label for="label">별점</label>
					<input type="text" id="label" name="r_star" >
				</div>
				<div class="review_label">
					<label for="label">평점</label>
					<input type="text" id="label" name="r_grade" >
				</div>
				<div class="review_label">
					<label for="label">피드백</label>
					<input type="text" id="label" name="r_gcontent" >
				</div>
				<div class="review_label">
					<label for="label">사진경로</label>
					<input type="text" id="label" name="r_photo" >
				</div>
							
			<input type="submit" value="등록">
			
<!-- 			<input type="submit" value="reviewList" onclick="javascript: form.action="> -->
<!-- 			<button>목록</button> -->
<!-- 			<button>등록</button> -->
<!-- 			<button>재설정</button> -->
		</form>
			<button type="button" onclick="location.href='reviewList.do'"></button>
	</div>
</body>
</html>