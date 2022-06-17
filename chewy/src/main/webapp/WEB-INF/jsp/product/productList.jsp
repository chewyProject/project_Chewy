<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!-- <!DOCTYPE html> -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link  href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="css/product/productList.css" />
<script type="text/javascript" src="./js/product/productList.js"></script>
</head>
<body>
	<h1 class="title">상품 전체리스트</h1>
 
 	<form class="pContainer">
 		<table>
 			<thead>
 				<tr>
 					<th>번호</th>
					<th>대분류</th>
					<th>중분류</th>
					<th>소분류</th>
					<th>브랜드</th>
					<th>이름</th>
					<th>이미지</th>
					<th>가격</th>
					<th>총갯수</th>
					<th>할인</th>
					<th>별점</th>
					<th>질문</th>
					<th>답변</th>
 				</tr>
 			</thead>
 			<tbody>
 				<c:forEach items="${list }" var ="product" >
					<tr>
						<td>${product.p_no }</td>
						<td class="category">${product.bct_no }</td>
						<td class="category">${product.mct_no }</td>
						<td class="category">${product.sct_no }</td>
<!-- 						</select> -->
						<td>${product.b_no }</td>
						<td><a href="productDetail.do?p_no=${product.p_no }">${product.p_name }</a>
						</td>
						<td>${product.p_img }</td>
<%-- 						<td><img src= "/upload/${product.p_img }" width="80" height="80"> --%>
						</td>
						<td>${product.p_price }원</td>
						<td>${product.p_total }개</td>
						<td>${product.p_discount }%</td>
						<td>${product.p_star }</td>
						<td>${product.p_question }</td>
						<td>${product.p_answer }</td>
					</tr>
				</c:forEach>		
 			</tbody>
 		</table>
 	
 	</form>
 	
 	<!-- 	pagination start!!!	 -->
	
	<div id="paginationBox" class="pagination1">
		<ul class="pagination" style="justify-content: center;">
		
			<c:if test="${pagination.prev }">
					<li class="page-item">
						<a class="page-link" href="#" onclick="fn_prev('${pagination.page}', '${pagination.range }', '${pagination.rangeSize }'
						, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')"> 이전
						</a>
					</li>
					 <li class="page-item">
			</c:if>
			
			<c:forEach begin="${pagination.startPage }" end="${pagination.endPage }" var="p_no">
				<li class="page-item <c:out value="${pagination.page == p_no ? 'active' : ''}"/>">
					<a class="page-link" href="#" onclick="fn_pagination('${p_no}', '${pagination.range }', '${pagination.rangeSize }'
					, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')"> ${p_no }
					</a>
				</li> 
			</c:forEach>
			
			 <c:if test="${pagination.next}">
				<li class="page-item">
					<a class="page-link" href="#" onclick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize }'
					, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')">다음
					</a>
				</li>
			</c:if>
 		</ul>
	</div>
 	
<!-- 	pagination end !!!!!!! -->
	
<!-- 	<hr> -->
	
<!-- 	search start !!! -->
	<div class="form-group row">
	
		<div class="w100" style="padding-right: 10px">
			<select class="form-control form-control-sm" name="searchType" id="searchType">
				<option value="p_name">이름</option>
				<option value="p_img">이미지</option>
<!-- 				<option value="p_name">이름</option> -->
			</select>
		</div>
	
		<div class="w300" style="padding-right: 10px">
			<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
		</div>
		
		<div>
			<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
		</div>	
		<!-- search end !!! -->

		
		<!--  페이지 목록 갯수 -->
		<div class="form-group row justify-content-center">
		<p>게시판 목록 갯수</p>
		<div class="w100" style="padding-right: 10px">
			<select class="form-control form-control-sm" name="searchType"
				id="listSize" onchange="page(1)">
				<option value="10"
					<c:if test="${pagination.getListSize() == 10 }">selected="selected"</c:if>>10개</option>
				<option value="15"
					<c:if test="${pagination.getListSize() == 15 }">selected="selected"</c:if>>15개</option>
				<option value="20"
					<c:if test="${pagination.getListSize() == 20 }">selected="selected"</c:if>>20개</option>
			</select>
		</div>

		</div>

		
		<a href="insertProduct.do">등록</a>
		<a href="main.jsp">뒤로가기</a>
	</div> 	
	
 	
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</body>
</html> 