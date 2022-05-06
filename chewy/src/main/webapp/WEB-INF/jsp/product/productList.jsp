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
						<td><a href="product.do?p_no=${product.p_no }">${product.p_name }</a>
						</td>
						<td>${product.img }</td>
						<td>${product.p_price }</td>
						<td>${product.p_total }</td>
						<td>${product.p_discount }</td>
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
					<a class="page-link" href="#" onclick="fn_next('${pagination.page}', '${pagination.range}', '${pagination.rangeSize }'
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
				<option value="img">이미지</option>
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
		
		<a href="insertProduct.do">등록</a>
		<a href="main.jsp">뒤로가기</a>
		
	</div> 	
 	
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</body>
 <script type="text/javascript">
	
	// 이전 버튼 이벤트
	// 5개의 인자값을 가지고 이동 testList.do
	// 무조건 이전페이지 범위의 가장 앞 페이지로 이동
	function fn_prev(page, range, rangeSize, listSize, searchType, keyword) {
		var page = ((range -2) * rangeSize) + 1;		
		var range = range - 1;
		
		var url = "/chewy/productList.do";
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&listSize" + listSize;
			url += "&searchType" + searchType;
			url += "&keyword" + keyword;
			location.href = url;

	}

	// 페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, listSize, searchType, keyword) {
		
		var url = "/chewy/productList.do";
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&listSize" + listSize;
			url += "&searchType" + searchType;
			url += "&keyword" + keyword;
			location.href = url;
	}

	// 다음 버튼 이벤트
	// 다음 페이지 범위의 가장 앞 페이지로 이동
	function fn_next(page, range, rangeSize, listSize, searchType, keyword) {
		
		var page = parseInt((range * rangeSize)) + 1
		var range = parseInt(range) + 1;
		
		var url = "/chewy/productList.do";
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&listSize" + listSize;
			url += "&searchType" + searchType;
			url += "&keyword" + keyword;
			location.href = url;
			
	}
	
	// 검색 이벤트
	$(document).on('click', '#btnSearch', function(e) {
		e.preventDefault();
		var url = "/chewy/productList.do";
		url += "?searchType=" + $('#searchType').val();
		url += "&keyword=" + $('#keyword').val();
		
		location.href = url;
		
		console.log(url);
	});
		
	
	
	
</script>
</html> 