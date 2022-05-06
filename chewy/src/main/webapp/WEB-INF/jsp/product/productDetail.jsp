<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/product/detailProduct.css" />


</head>
<body>
	<h1>상세상품</h1>
	
	<div class="container">
		<form action="updateProduct.do" method="post" id="updateProduct">
			<div class="product">
				<div class="product_label">
					<label for="label">대분류 : </label>
					<input type="text" id="label" class="form-control" name="bct_no" value="${product.bct_no }">
				</div>
				<div class="product_label">
					<label for="label">중분류</label>
					<input type="text" id="label" class="form-control" name="mct_no" value="${product.mct_no }">
				</div>
				<div class="product_label">
					<label for="label">소분류</label>
					<input type="text" id="label" class="form-control" name="sct_no" value="${product.sct_no }">
				</div>
				<div class="product_label">
					<label for="label">브랜드</label>
					<input type="text" id="label" class="form-control" name="b_no" value="${product.b_no }">
				</div>
				<div class="product_label">
					<label for="label">상품이름</label>
					<input type="text" id="label" class="form-control" name="p_name" value="${product.p_name }">
				</div>
				<div class="product_label">
					<label for="label">상품이미지</label>
					<input type="text" id="label" class="form-control" name="p_img" value="${product.p_img }">
				</div>
				<div class="product_label">
					<label for="label">상품가격</label>
					<input type="text" id="label" class="form-control" name= "p_price"value= "${product.p_price }">
				</div>
				<div class="product_label">
					<label for="label">상품총수량</label>
					<input type="text" id="label" class="form-control" name="p_total" value="${product.p_total }">
				</div>
				<div class="product_label">
					<label for="label">상품할인율</label>
					<input type="text" id="label" class="form-control" name="p_discount" value="${product.p_discount }">
				</div>
				<div class="product_label">
					<label for="label">상품별점</label>
					<input type="text" id="label" class="form-control" name="p_star" value="${product.p_star }">
				</div>
				<div class="product_label">
					<label for="label">질문</label>
					<input type="text" id="label" class="form-control" name="p_question" value="${product.p_question }">
				</div>
				<div class="product_label">
					<label for="label">답변</label>
					<input type="text" id="label" class="form-control" name="p_answer" value="${product.p_answer }">
				</div>
			</div>
			
<!-- 			<button>수정하기</button> -->
			<a href="deleteProduct.do?p_no=${product.p_no }">삭제</a>
			<a href="productList.do">뒤로가기</a>			
		</form>
<!-- 		<form action="deleteProduct.do" method="get"> -->
<%-- 		<button type="submit" name="p_no" value="${product.p_no}">삭제하기</button> --%>
<!-- 		</form> -->
	</div>
</body>
</html>