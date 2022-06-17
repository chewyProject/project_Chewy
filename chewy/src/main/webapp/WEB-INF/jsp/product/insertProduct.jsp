<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Product</title>
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<link rel="stylesheet" href="css/product/insertProduct.css" />
<script type="text/javascript" src="./js/product/insertProduct.js"></script>
</head>
<body>
	<h1>chewy 상품등록</h1>
	
	<div class="container" >
<!-- 		<form action="insertProduct.do" method="post" enctype="multipart/form-data"> -->
		<form action="insertProduct.do" method="post" id="frm" >
				
<!-- 				<div class="product_label">  -->
<!-- 					<label for="label">카테고리</label> -->
<!-- 				<select id="bCategory" class="bCategory" name="bct_no" onchange="next();"> -->
<!-- 					<option value="" selected="selected">대분류</option> -->
					
<!-- 				</select> -->
<!-- 				<select id="mCategory" class="mCategory" name="mct_no"> -->
<!-- 					<option value="" selected="selected">중분류</option> -->
<!-- 				</select> -->
				
<!-- 				<select id="sCategory" class="sCategory" name="sct_no"> -->
<!-- 					<option value="" selected="selected">소분류</option> -->
<!-- 				</select> -->
<!-- 				</div> -->
				<div class="product_label"> 
					<label for="label">카테고리</label>
					<select id="bCategory" class="bCategory" name="bct_no" onchange="bCateNext()">
						<option value="" selected="selected">대분류</option>
						<c:forEach items="${bcate }" var="bca">
							<option value="${bca.bct_no }"><c:out value="${bca.bct_name }"/></option>
						</c:forEach>
						
					</select>
					<select id="mCategory" class="mCategory" name="mct_no" onchange="mCateNext()" >   
						<option value="" selected="selected">중분류</option>
	<%-- 					<c:forEach items="${mcate }" var="mca"> --%>
	<%-- 						<option><c:out value="${mca.mct_name }"/></option> --%>
	<%-- 					</c:forEach> --%>
					</select>
					
					<select id="sCategory" class="sCategory" name="sct_no">
						<option value="" selected="selected">소분류</option>
<%-- 						<c:forEach items="${scate }" var="sca"> --%>
<%-- 							<option><c:out value="${sca.sct_name }"/></option> --%>
<%-- 						</c:forEach> --%>
					</select>
				</div>
				
				
<!-- 				<div class="product_label"> -->
<!-- 					<label for="label">대분류</label> -->
<!-- 					<input type="text" class="form-control" id="label" name="bct_no" > -->
<!-- 				</div> -->
<!-- 				<div class="product_label"> -->
<!-- 					<label for="label">중분류</label> -->
<!-- 					<input type="text" class="form-control" id="label" name="mct_no" > -->
<!-- 				</div> -->
<!-- 				<div class="product_label"> -->
<!-- 					<label for="label">소분류</label> -->
<!-- 					<input type="text" class="form-control" id="label" name="sct_no" > -->
<!-- 				</div> -->
				<div class="product_label">
					<label for="label">브랜드</label>
					<input type="text" class="form-control" id="label" name="b_no" >
				</div>
				<div class="product_label">
					<label for="label">상품이름</label>
					<input type="text" class="form-control" id="label" name="p_name" >
				</div>
				<div class="product_label">
					<label for="label">상품이미지</label>
					<input type="text" class="form-control" id="label" name="p_img" >
				</div>
<!-- 				<div class="product_label"> -->
<!-- 					<div class="form-control" id="label" name="p_img" > -->
<!-- 						<label for="label">상품이미지(파일경로)</label> -->
<!-- 					</div> -->
<!-- 					<div class="form_section_content"> -->
<!-- 						<input type="file" multiple="multiple" id="fileItem" name="uploadFile" style="height: 30px;"> -->
<!-- 						<div id="uploadResult"></div> -->
<!-- 					</div> -->
				<div class="product_label">
					<label for="label">상품가격</label>
					<input type="text" class="form-control" id="label" name="p_price" >
				</div>
				<div class="product_label">
					<label for="label">상품총수량</label>
					<input type="text" class="form-control" id="label" name="p_total" >
				</div>
				<div class="product_label">
					<label for="label">상품할인율</label>
					<input type="text" class="form-control" id="label" name="p_discount" >
				</div>
				<div class="product_label">
					<label for="label">상품별점</label>
					<input type="text" class="form-control" id="label" name="p_star" >
				</div>
				<div class="product_label">
					<label for="label">상품질문</label>
					<input type="text" class="form-control" id="label" name="p_question" >
				</div>
				<div class="product_label">
					<label for="label">상품답변</label>
					<input type="text" class="form-control" id="label" name="p_answer" >
			</div>
			<button type="button" onclick="success()">등록</button>
		</form>
	</div>
	
	
	
	

	
</body>
</html>