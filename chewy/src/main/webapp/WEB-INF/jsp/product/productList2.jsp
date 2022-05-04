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

<style type="text/css">
text-decoration: auto;
.row>*{
width:auto;
}
 
</style>
</head>
<body>
	<h1>상품 전체 리스트</h1>
	
	<form>
<!-- 	<form action="product.do" method="post"> -->
<!-- 	<form action="productList.do" method="post"> -->

 		<select id="category"> 
 			<option value="bCategory">대분류</option>
 			<option value="dog">dog</option> 
 			<option value="dog">cat</option> 
 			<option value="dog">fish</option> 
 			<option value="dog">bird</option> 
			<option value="dog">small_pet</option>
			<option value="dog">reptile</option>
			<option value="dog">farm_animal</option>
			<option value="dog">horse</option>
			<option value="dog">pharmacy</option>
			<option value="dog">pet_parent</option>
		</select>
		
		<select id="mCategory"> 
			<option value="bCategory">중분류</option>
			<option value="food">food</option>
			<option value="treats">treats</option>
			<option value="supplies">supplies</option>
			<option value="litter&accessories">litter&accessories</option>
			<option value="shop_by_">shop_by_</option>
			<option value="feeds_treats">feeds_treats</option>
			<option value="health&wellness">health&wellness</option>
			<option value="presonlized_gifts">presonlized_gifts</option>
			<option value="home_goods">home_goods</option>
			<option value="explore_more">explore_more</option>
		</select> 
		
		<select id="sCategory">
			<option value="sCategory">소분류</option>
			<option value="Dry_Food">Dry_Food</option>
			<option value="Wet_Food">Wet_Food</option>
			<option value="Veterinary_Diets">Veterinary_Diets</option>
			<option value="Premium_Food">Premium_Food</option>
			<option value="Fresh&PrePared_Meals">Fresh&PrePared_Meals</option>
			<option value="Soft&Chewy_Treats">Soft&Chewy_Treats</option>
			<option value="Dental_Treats">Dental_Treats</option>
			<option value="Biscuits_Cookies&Crunchy_Treats">Biscuits_Cookies&Crunchy_Treats</option>
			<option value="Bones&Natural_Chews">Bones&Natural_Chews</option>
			<option value="Bully_Sticks">Bully_Sticks</option>
			<option value="Toys">Toys</option>
			<option value="HealthCare">HealthCare</option>
			<option value="Vitamins&Suppliments">Vitamins&Suppliments</option>
			<option value="Cleaning&Potty">Cleaning&Potty</option>
			<option value="Crates_Pens&Gates">Crates_Pens&Gates</option>
			<option value="Beds">Beds</option>
			<option value="Leashes_Collars&Harnesses">Leashes_Collars&Harnesses</option>
			<option value="Bowls&Feeders">Bowls&Feeders</option>
			<option value="Grooming">Grooming</option>
			<option value="Flea&Tick">Flea&Tick</option>
			<option value="Clothing&Aeecssories">Clothing&Aeecssories</option>
			<option value="Food_Toppings">Food_Toppings</option>
			<option value="Litter">Litter</option>
			<option value="Litter_Boxes">Litter_Boxes</option>
			<option value="Litter_Boxes_Accessories">Litter_Boxes_Accessories</option>
			<option value="Waste_Disposal">Waste_Disposal</option>
			<option value="Cleaner&Deodorizers">Cleaner&Deodorizers</option>
			<option value="Treats">Treats</option>
			<option value="Cat_Tect&Smart_Home">Cat_Tect&Smart_Home</option>
			<option value="Trees_Condos&Scratchers">Trees_Condos&Scratchers</option>
			<option value="Carries&Travel">Carries&Travel</option>
			<option value="Tropical_Freshwater">Tropical_Freshwater</option>
			<option value="Goldfish">Goldfish</option>
			<option value="Koi&Pond_Fiesh">Koi&Pond_Fiesh</option>
			<option value="Betta">Betta</option>
			<option value="Bottom_Feeder">Bottom_Feeder</option>
			<option value="Water_Conditioners">Water_Conditioners</option>
			<option value="Algaecides&Water_Clarity">Algaecides&Water_Clarity</option>
			<option value="Water_test_Kits">Water_test_Kits</option>
			<option value="pH_Treatments">pH_Treatments</option>
			<option value="Plant_Care">Plant_Care</option>
			<option value="Tanks&Aquariums">Tanks&Aquariums</option>
			<option value="Decor">Decor</option>
			<option value="Filter&Media">Filter&Media</option>
			<option value="Health&Wellness">Health&Wellness</option>
			<option value="Cleaner&Pumps">Cleaner&Pumps</option>
			<option value="Heating&Lighting">Heating&Lighting</option>
			<option value="Feeders">Feeders</option>
			<option value="Gifts&Books">Gifts&Books</option>
			<option value="Pond_Shop">Pond_Shop</option>
			<option value="Food_Toppings">Food_Toppings</option>
		</select>
		
		<hr>
		
		<table border="1px solid ">
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
<%-- 						<td>${product.bct_no }</td> --%>
						<td>${product.mct_no }</td>
						<td>${product.sct_no }</td>
						<td>${product.b_no }</td>
						<td><a href="product.do?p_no=${product.p_no }">${product.p_name }</a>
						</td>
						<td>${product.p_img }</td>
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
	
	<hr>
	
<!-- 	search start !!! -->
	<div class="form-group row">
	
		<div class="w100" style="padding-right: 10px">
			<select class="form-control form-control-sm" name="searchType" id="searchType">
				<option value="p_name">이름</option>
				<option value="p_img">이미지</option>
				<option value="p_name">이름</option>
			</select>
		</div>
	
		<div class="w300" style="padding-right: 10px">
			<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
		</div>
		
		<div>
			<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
			
		</div>	
		
		<a href="insertProduct.do">등록</a>
		<a href="history.back();">뒤로가기</a>
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