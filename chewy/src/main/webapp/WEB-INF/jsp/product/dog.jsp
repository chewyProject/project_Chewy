<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Dog Supplies: Best Dog &amp; Puppy Products (Free Shipping) | Chewy</title>
<link rel="stylesheet" href="css/main/dog_food.css" />
</head>

<body>

	<div class="container-fluid">
		<div class="row g-3">
			
			<div class="col-md-1"></div>
			
			<!--------------------------- sidebar ------------------------------->
				
			<div class="side-nav col-md-2">
			  	<div class="js-tracked-facet">
			  		<h3 id="categoryFacet" class="typography-section">Category</h3>
<!-- 			  		<div class="categoryEntry"> -->
<!-- 			  			<a class="categoryEntry_label" href="sCateList.do">Dry Food</a> -->
<!-- 			  			<a class="categoryEntry_count" href="#">(4036)</a> -->
<!-- 			  		</div> -->
			  		
			  		
<%-- 			  		<sql:query var="sctCount" dataSource="jdbc/myBatis"> --%>
<!-- 			  			select * from scategory where dog = 1 -->
<%-- 			  		</sql:query> --%>
			  		<c:forEach items="${mList }" var="cate">
				  		<div class="categoryEntry">
				  			<a class="categoryEntry_label" href="selectMColCateList.do?mno=${cate.mct_no}">${cate.mct_name }</a>
				  			<a class="categoryEntry_count" href="#"> (${cate.cnt })</a>
				  		</div>
			  		</c:forEach>
			  	</div>
				
				<div class="js-tracked-facet">
					<hr class="Autoship_divider divider">
					<div class="Autoship_autoship">
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-2" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-2" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">
											<div class="Autoship_iconContainer">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g fill-rule="evenodd"><path fill="#18499B" d="M19.24 4.26L17.3 6.74c-2.7-2.1-8.4-5.06-13.93 1.07-.45.5-.89 1.06-1.32 1.69L2 9.57h.01a11.5 11.5 0 016.46-1.48c2.83.18 4.05.86 5.8 2.54l-1.94 2.51s4.1 1.8 8.84-.25l-1.93-8.63z"></path><path fill="#F27123" d="M3.94 20.27l1.92-2.47c2.7 2.09 8.4 5.06 13.93-1.08.45-.5.89-1.05 1.32-1.68l.06-.07h-.01a11.5 11.5 0 01-6.46 1.47c-2.83-.17-4.05-.85-5.8-2.54l1.94-2.5s-4.1-1.8-8.84.25l1.94 8.62z"></path></g></svg>
											</div>
											<span class="Autoship_textContainer">Autoship</span>
										</a>
									</div>
								</label> 
							</div>
						</div>
						<p class="Autoship_caption">Save an extra 5% on every order!</p>
						
					</div>
				</div>
				
				<div class="js-tracked-facet">
					<hr class="FacetEntries_divider divider">
					<h3 class="typography-section FacetEnteries_facetName">Brand</h3>
					<div class="FacetEnteries_firstFacetEntries" id ="FacetEnteries_firstFacetEntries" >
						<c:forEach items="${brandList }" var="brandList" varStatus="status">
							<div class="FacetEntry_checkboxContainer checkbox">
								<div class="checkbox_field">
									<input type="checkbox" id="checkbox-3" name="chk" class="checkbox_native">
									<span class="checkbox_control" role="presentation">
										<span class="checkbox_fill">
										</span>
									</span>
									<label for="checkbox-3" class="checkbox_label" >
										<div class="FacetEntry_facetEntryContainer">
											<a href class="FacetEntry_facetLabel">${brandList.b_name }</a>
											<div class="FacetEntry_facetCount_facet-count">(${brandList.cnt }) </div>
										</div>
									</label> 
								</div>	
							</div>
						</c:forEach>
					</div>
					<button class="FacetEntries_seeMore" onclick="seeMore()"> + ${fn:length(brandList) } more</button>
				</div>
				
<!-- 				<input type="checkbox"> 가나다라마	 -->
				
				<div class="js-tracked-facet">
					<hr class="FacetEntries_divider divider">
					<h3 class="typography-section FacetEnteries_facetName">Breed Size</h3>
					<div class="FacetEnteries_firstFacetEntries">
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Extra Small & Toy Breeds</a>
										<div class="FacetEntry_facetCount_facet-count">(1060)</div>
									</div>
								</label> 
							</div>	
						</div>
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Small Breeds</a>
										<div class="FacetEntry_facetCount_facet-count">(6465)</div>
									</div>
								</label> 
							</div>	
						</div>
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Medium Breeds</a>
										<div class="FacetEntry_facetCount_facet-count">(5829)</div>
									</div>
								</label> 
							</div>	
						</div>
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Large Breeds</a>
										<div class="FacetEntry_facetCount_facet-count">(6040)</div>
									</div>
								</label> 
							</div>	
						</div>
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Giant Breeds</a>
										<div class="FacetEntry_facetCount_facet-count">(643)</div>
									</div>
								</label> 
							</div>	
						</div>
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">All Breeds</a>
										<div class="FacetEntry_facetCount_facet-count">(4784)</div>
									</div>
								</label> 
							</div>	
						</div>	
					</div>
				</div>
				
				
				<div class="js-tracked-facet">
					<hr class="FacetEntries_divider divider">
					<h3 class="typography-section FacetEnteries_facetName">Lifestage</h3>
					<div class="FacetEnteries_firstFacetEntries">
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Kitten</a>
										<div class="FacetEntry_facetCount_facet-count">(253)</div>
										
									</div>
								</label> 
							</div>	
						</div>
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Adult</a>
										<div class="FacetEntry_facetCount_facet-count">(3997)</div>
									</div>
								</label> 
							</div>	
						</div>
					</div>
				</div>
			
				
				<div class="js-tracked-facet">
					<hr class="FacetEntries_divider divider">
					<h3 class="typography-section FacetEnteries_facetName">Flavor</h3>
					<div class="FacetEnteries_firstFacetEntries">
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Poultry</a>
										<div class="FacetEntry_facetCount_facet-count">(3577)</div>
									</div>
								</label> 
							</div>	
						</div>	
					</div>
				</div>
				
				<div class="js-tracked-facet">
					<hr class="FacetEntries_divider divider">
					<h3 class="typography-section FacetEnteries_facetName">Special Diet</h3>
					<div class="FacetEnteries_firstFacetEntries">
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Extra Chicken-Free</a>
										<div class="FacetEntry_facetCount_facet-count">(846)</div>
									</div>
								</label> 
							</div>	
						</div>	
					</div>
				</div>
				
				<div class="js-tracked-facet">
					<hr class="FacetEntries_divider divider">
					<h3 class="typography-section FacetEnteries_facetName">Food Form</h3>
					<div class="FacetEnteries_firstFacetEntries">
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">Dry Food</a>
										<div class="FacetEntry_facetCount_facet-count">(4030)</div>
									</div>
								</label> 
							</div>	
						</div>	
					</div>
				</div>
				
				<div class="js-tracked-facet">
					<hr class="FacetEntries_divider divider">
					<h3 class="typography-section FacetEnteries_facetName">Shop Conscious</h3>
					<div class="FacetEnteries_firstFacetEntries">
						<div class="FacetEntry_checkboxContainer checkbox">
							<div class="checkbox_field">
								<input type="checkbox" id="checkbox-3" class="checkbox_native">
								<span class="checkbox_control" role="presentation">
									<span class="checkbox_fill">
									</span>
								</span>
								<label for="checkbox-3" class="checkbox_label">
									<div class="FacetEntry_facetEntryContainer">
										<a href class="FacetEntry_facetLabel">BPA_Free</a>
										<div class="FacetEntry_facetCount_facet-count">(567)</div>
									</div>
								</label> 
							</div>	
						</div>	
					</div>
				</div>
					
			
			  </div>
		
			
		<!------------------------------------ main ---------------------------------------------->
			
			<div class="main-content col-md-7">
				<ol class="breadcrumb">
<!-- 					<li class="breadcrumb-item"> -->
<%-- 						<c:forEach items="${bList }" var="bList"> --%>
<%-- 							<a href="#" class="breadcrumb-item_link"> ${bList.bct_name } </a> --%>
<%-- 						</c:forEach>				 --%>
<!-- 					</li> -->
					<li class="active breadcrumb-item">Dog</li>
				</ol>
				
				<div class="ProductListHeader_headingDiv">
					<h1 class="ProductListHeader_headingText">Dog Supplies</h1>
				</div>
				
				<div class="SelectedFacets">
					<span role="button" class="SelectedFacets_chip chip-input chip-input--enabled">
						<span class="chip-input_remove">By Chewy
							<span class="chip-input_icon-container">
								<svg class="chip-input__icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><title>Close</title><desc>Close an interactive element.</desc><path fill="currentColor" d="M21.56 2.46c-.6-.6-1.55-.6-2.14 0L12 9.86 4.58 2.44a1.51 1.51 0 10-2.14 2.14L9.86 12l-7.42 7.42a1.51 1.51 0 102.14 2.14L12 14.14l7.42 7.42a1.51 1.51 0 102.14-2.14L14.14 12l7.42-7.42c.57-.57.57-1.54 0-2.12z"></path></svg>
							</span>
						</span>
					</span>
				</div>
				
					<div class="bxslider-content carousel_wrapper"> <!-- bx슬라이더 자리 -->
		 				<ul class="bxslider carousel_content">
		 					<c:forEach items="${mList }" var="bxList">
			 					<li class="carousel_item">
			 						<a class="paragraph" href="#">
			 							<img src="${bxList.m_img }" alt="${bxList.mct_name }">
			 							<div class="carousel_text">${bxList.mct_name }
			 							</div>
			 						</a>
			 					</li>	
		 					</c:forEach>
<!-- 		 					<li class="carousel_item"> -->
<!-- 		 						<a class="paragraph" href="#"> -->
<!-- 		 							<img src="https://img.chewy.com/is/image/category/294-MAIN-dog-dry-food._AC_SS80_V1514926976_.jpg" srcset="https://img.chewy.com/is/image/category/294-MAIN-dog-dry-food._AC_SS80_V1514926976_.jpg 1x, https://img.chewy.com/is/image/category/294-MAIN-dog-dry-food._AC_SS120_V1514926976_.jpg 1.5x, https://img.chewy.com/is/image/category/294-MAIN-dog-dry-food._AC_SS100_V1514926976_.jpg" alt="Dry Food"> -->
<!-- 		 							<div class="carousel_text">Dry Food</div> -->
<!-- 		 						</a> -->
<!-- 		 					</li> -->
		 				</ul>
					</div>
					
					<div class="resultsSort">
						<p class="resultsCount">1 - 36 of 10000 Results</p>
						<div class="input-select input-select-has-icon">
							<div class="input-select-wrapper">
								<div class="input-select-filed"">
									<select id="input-select-1" class="input-select_control" name= "col" onchange="sortBy()">
										<option selected value="p_no DESC">Relevance</option>
										<option value="p_date" >Newest</option>
<!-- 										<option value="p_total"  >Bestselling</option> -->
										<option value="p_price" >Price: Low to High</option>
										<option value="p_price DESC" >Price: High to Low</option>
<!-- 										<option value="byRating" >Avg. Customer Review</option> -->
<!-- 										<option value="byRatingCount" >Most Reviews</option> -->
									</select>
									<span class="input-select-outline" role="presentation"></span>
									<span class="input-select_icon">
										<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path fill="currentColor" d="M17.68 9.31c.42.42.42 1.1.02 1.5l-4.94 4.88c-.42.41-1.1.41-1.51 0L6.3 10.8a1.05 1.05 0 0 1 0-1.5c.42-.41 1.1-.41 1.52 0L12 13.44l4.17-4.13c.42-.41 1.1-.41 1.51 0z"></path></svg>
									</span>
									<label for="input-select-1" class="input-select_label">
										<span class="input-select_label-content">Sort by</span>
									</label>
								</div>
							</div>
						</div>
					</div>
					
					<div class="cardList">
						<c:forEach items="${pList }" var="product">
							 <div class="card col-sm-3 productCard">
							    <div class="card_canvas-margin">	
							 	   <div class="product-card_canvas">
									    <a href="#">
										    <img class="card-img-top" src="${product.p_img }" alt="Card image">
									    </a>
									    <div class="product-card_overlay"></div>
									</div> 
							    </div>
							    <div class="card-body product-card__content">
								   	<p class="card-message product-message">More Choices Available</p>
									<a class="product-title" href="#">
										<strong class="card-title">${product.b_name }</strong> ${product.p_name }
									</a>
									<div class="product-pricing">
										<div class="prudcut-pricing_row">
											<div class="product-price product-price--md">
												$${product.p_price }
												<span role="text" class="product-price_label">chewy price</span>
											</div>
		<!-- 									<div role="text" class="product_pricing_append-content product-price--xs"> -->
		<!-- 										$55.98 -->
		<!-- 										<span role="text" class="product-price_label">List Price</span>					 -->
		<!-- 									</div> -->
										</div>
										<div class="prudcut-pricing_row">
											<div class="product-price product-price--md">
												$<fmt:formatNumber value="${product.p_price * 0.95 }" pattern="#.##" /> &nbsp;
												<span role="text" class="product-price_label">Autoship Price</span>
											</div>
											<span class="product-pricing_append-content">
												<svg class="product-pricing__autoship-icon" aria-hidden="true" focusable="false" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g fill-rule="evenodd"><path fill="#18499B" d="M19.24 4.26L17.3 6.74c-2.7-2.1-8.4-5.06-13.93 1.07-.45.5-.89 1.06-1.32 1.69L2 9.57h.01a11.5 11.5 0 016.46-1.48c2.83.18 4.05.86 5.8 2.54l-1.94 2.51s4.1 1.8 8.84-.25l-1.93-8.63z"></path><path fill="#F27123" d="M3.94 20.27l1.92-2.47c2.7 2.09 8.4 5.06 13.93-1.08.45-.5.89-1.05 1.32-1.68l.06-.07h-.01a11.5 11.5 0 01-6.46 1.47c-2.83-.17-4.05-.85-5.8-2.54l1.94-2.5s-4.1-1.8-8.84.25l1.94 8.62z"></path></g></svg>
												<span aria-hidden="true" class="product-pricing_autoship-text">AutoShip</span>
											</span>	
														
										</div>
									</div>
									<p class="product-message product-message-promotion">
										${product.p_addtext } 
									</p>
									<p class="product-message">
										${product.p_shipping }
									</p>
							    </div>
							</div>
						</c:forEach>
					</div>
					
			</div>
			
			<div class="col-md-1"></div>
		</div>	  
	</div>
	
		<!-- 	pagination start!!!	 -->
	
			<div id="paginationBox" class="pagination1">
				<ul class="pagination" style="justify-content: center;">
				
					<c:if test="${pagination.prev }">
							<li class="page-item">
								<a class="page-link" href="#" onclick="fn_prev('${pagination.page}', '${pagination.range }', '${pagination.rangeSize }'
								, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')"> 이전
								</a>
							</li>
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






			<div class="pagination2"></div>
	

<script>
	$(function(){
		  $('.bxslider').bxSlider({
			mode : 'horizontal',
			auto : false, // 자동전환 여부
// 			autoControls : false,
			Controls : false,
			moveSlides : 10,
			maxSlides : 10,
			pager : false,
			infiniteLoop : false,
			slideWidth : 80,
			slideMargin : 45
			
		  });
		  
	});
	
	// 이전 버튼 이벤트
	// 5개의 인자값을 가지고 이동 testList.do
	// 무조건 이전페이지 범위의 가장 앞 페이지로 이동
	
	function fn_prev(page, range, rangeSize, listSize, searchType) {	
		var page = ((range -2) * rangeSize) + 1;		
		var range = range - 1;

		var url = "/chewy/selectMCateList.do";  // ajax로 값 넘기기
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&rangeSize=" + rangeSize;
			url += "&listSize=" + listSize;
			url += "&searchType=" + searchType;
// 			url += "&keyword=" + keyword;
			console.log("url:", url);
			location.href = url;
	}

	// 페이지 번호 클릭
	function fn_pagination(page,  range, rangeSize, listSize, searchType) {	
		
		var url = "/chewy/selectMCateList.do";  // ajax로 값 넘기기
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&rangeSize=" + rangeSize;
			url += "&listSize=" + listSize;
			url += "&searchType=" + searchType;
// 			url += "&keyword=" + keyword;
			console.log ("url: ", url);
			location.href = url;
	}

	// 다음 버튼 이벤트
	// 다음 페이지 범위의 가장 앞 페이지로 이동
	function fn_next(page, range, rangeSize, listSize, searchType) {	
		var page = parseInt((range * rangeSize)) + 1
		var range = parseInt(range) + 1;
		
		var url = "/chewy/selectMCateList.do";  // ajax로 값 넘기기	
			url += "?page=" + page;  // 1
			url += "&range=" + range;  // 1
			url += "&rangeSize=" + rangeSize;  // 2
			url += "&listSize=" + listSize;  // 36
			url += "&searchType=" + searchType;
// 			url += "&keyword=" + keyword;
			console.log("url: ", url);
			location.href = url;
		
	}
	
	function sortBy_fn_prev(selectValues, page, range, rangeSize, listSize) {
		var page = ((range -2) * rangeSize) + 1;		
		var range = range - 1;

		var url = "/chewy/sortBy.do"; // ajax로 값 넘기기
			url += "?col="  + selectValues;
			url += "&page=" + page;
			url += "&range=" + range;
			url += "&rangeSize=" + rangeSize;
			url += "&listSize=" + listSize;
			console.log("url:", url);
			location.href = url;
	}
	
	function sortBy_fn_pagination(selectValues, page,  range, rangeSize, listSize) {
		
		var url = "/chewy/selectMCateList.do";  // ajax로 값 넘기기
			url += "?col="  + selectValues;
			url += "&page=" + page;
			url += "&range=" + range;
			url += "&rangeSize=" + rangeSize;
			url += "&listSize=" + listSize;
			console.log ("url: ", url);
			location.href = url;
	}
	
// 	function sortBy_fn_next(selectValues, page, range, rangeSize, listSize, searchType, keyword) {
	function sortBy_fn_next(selectValues, page, range, rangeSize, listSize) {
		var page = parseInt((range * rangeSize)) + 1
		var range = parseInt(range) + 1;
		
		var url = "/chewy/sortBy.do";  // ajax로 값 넘기기
			url += "?col="  + selectValues;
			url += "&page=" + page;  // 1
			url += "&range=" + range;  // 1
			url += "&rangeSize=" + rangeSize;  // 2
			url += "&listSize=" + listSize;  // 36
			
			console.log("url: ", url);
// 			location.href = url;
		
	}
	

	
	
	
	function sortBy() {
		var select = document.getElementById('input-select-1');
		
		
// 		console.log("select : " + select);
		var selectOptions = select.options[select.selectedIndex].text;
		var selectValues = select.options[select.selectedIndex].value;
		
		console.log("selectOptions : " ,  selectOptions);
		console.log("selectValues : ", selectValues);
		
		fetch('http://localhost:8080/chewy/sortBy.do?col=' + selectValues, {
			method : 'get',
// 			body : JSON.stringify ({
// 				name : selectOptions
// 			})
		})
		.then((response) => response.json())
		.then((data) => {
// 					console.log("data : " , data);
// 					console.log("data.sortList", data.sortList);
// 					console.log("data.sortList[0]", data.sortList[0]);
					let dataList = data.sortList;
					
					
					console.log("dataList : ", dataList);
					
					let dispHtml = "";
					let num = 0;					
					$.each(dataList, function(index, value) {
						
						dispHtml += "<div class='card col-sm-3 productCard'>";
						dispHtml += 	"<div class='card_canvas-margin'>";
						dispHtml += 		"<div class='product-card_canvas'>";
						dispHtml += 			"<a href='#'>";
						dispHtml += 				"<img class='card-img-top' src= "+ dataList[index].p_img  + ">";
						dispHtml += 			"</a>";
						dispHtml += 		"<div class='product-card_overlay'></div>";
						dispHtml += "	</div>";
						dispHtml += "</div>";
						dispHtml += "<div class='card-body product-card__content'>";
						dispHtml += 	"<p class='card-message product-message'>More Choices Available</p>";
						dispHtml += 	"<a class='product-title' href='#'>";
						dispHtml +=			"<strong class='card-title'>" + dataList[index].b_no + "</strong>" + dataList[index].p_name;
						dispHtml +=		"</a>";
						dispHtml +=		"<div class='product-pricing'>";
						dispHtml += 		"<div class='product-pricing-row'>";
						dispHtml += 			"<div class='product-price product-price--md'>";
						dispHtml += 			"$" + dataList[index].p_price;
						dispHtml += 				"<span role='text' class='product-price_label'>chewy price </span>";
						dispHtml += 			"</div>";
						dispHtml += 		"</div>";
						dispHtml += 		"<div class='product-pricing_row'>";
						dispHtml += 			"<div class='product-price product-price--md'>";
						dispHtml += 		"$" + (Math.round(dataList[index].p_price * 95 ) / 100).toFixed(2);
// 						// 여기 0.95 곱샘 fmt 값 넣기
						dispHtml += 				"<span role='text' class='product-price_label'>Autoship Price</span>";
						dispHtml += 			"</div>";
						dispHtml += 				"<span class='product-pricing_append-content'>";
						dispHtml += 					"<svg class='product-pricing__autoship-icon' aria-hidden='true' focusable='false' role='img' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'><g fill-rule='evenodd'><path fill='#18499B' d='M19.24 4.26L17.3 6.74c-2.7-2.1-8.4-5.06-13.93 1.07-.45.5-.89 1.06-1.32 1.69L2 9.57h.01a11.5 11.5 0 016.46-1.48c2.83.18 4.05.86 5.8 2.54l-1.94 2.51s4.1 1.8 8.84-.25l-1.93-8.63z'></path><path fill=''#F27123' d='M3.94 20.27l1.92-2.47c2.7 2.09 8.4 5.06 13.93-1.08.45-.5.89-1.05 1.32-1.68l.06-.07h-.01a11.5 11.5 0 01-6.46 1.47c-2.83-.17-4.05-.85-5.8-2.54l1.94-2.5s-4.1-1.8-8.84.25l1.94 8.62z'></path></g></svg>";
						dispHtml += 					"<span aria-hidden='true' class='product-pricing_autoship-text'>AutoShip</span>";
						dispHtml += 				"</span>";
						dispHtml += "		</div>";
						dispHtml += "</div>";
						dispHtml += "<p class='product-message product-message-promotion'>";
						dispHtml += 	dataList[index].p_addtext;
						dispHtml += "</p>";
						dispHtml += "<p class='product-message'>";
						dispHtml += 	dataList[index].p_shipping;
						dispHtml += "</p>";
						dispHtml += "</div>";
						dispHtml += "</div>";
						
						$('.cardList').html(dispHtml);
					})
						console.log("paging check prev : ", ${pagination.prev});
					
						dispHtml += "<div id='paginationBox' class='pagination1'>";
						dispHtml += "<ul class='pagination style='justify-content:center;'>";
						
						if (${pagination.prev}) {
							dispHtml += "<li class='page-item'>";
							dispHtml += 	"<a class='page-ling' href='#' onclick='sortBy_fn_prev("+selectValues +","+ ${pagination.page} + "," + ${pagination.range} + "," + ${pagination.rangeSize};
							dispHtml +=		"," + ${pagination.listSize} + ")'>이전 "; 
							dispHtml += 	"</a>";
							dispHtml += "</li>";
						}

						for (let p_no =${pagination.startPage}; p_no < ${pagination.endPage};  p_no++) {
							dispHtml += "<li class='page-item' ";
							if (${pagination.page} == p_no) {
								dispHtml += 'active'; 
							} else {
								dispHtml += '';
							}
							dispHtml += ">";
							console.log("selectValues2222: ", selectValues);
							dispHtml += 	"<a class='page-link' href='#' onclick='sortBy_fn_pagination(" + '"' + selectValues +'"' + "," + '"' + p_no + '"' + ","  + "${pagination.range}" + "," + "${pagination.rangeSize}" + "," + "${pagination.listSize}" + ")'>" + p_no + "";	
							dispHtml +=		"</a>";
							dispHtml += "</li>";
							
						}
						
// // 						<li class="page-item <c:out value="${pagination.page == p_no ? 'active' : ''}"/>">
// // 							<a class="page-link" href="#" onclick="fn_pagination('${p_no}', '${pagination.range }', '${pagination.rangeSize }'
// // 							, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')"> ${p_no }
// // 							</a>
// // 						</li> 
						
						console.log("paging check next: ", ${pagination.next});
						if (${pagination.next}) {
// 							dispHtml += "가나다라마바사ㅁㄴㅇㅁㄴㅇ";
							dispHtml += "<li class='page-item'>";
							dispHtml += 	"<a class='page-ling' href='#' onclick='sortBy_fn_next(" + '"' +  selectValues  + '"'   + "," + "${pagination.range}" + "," + "${pagination.range}" + "," + "${pagination.rangeSize}";
							dispHtml +=		"," + "${pagination.listSize}"+ ")'>다음 "; 
							dispHtml += 	"</a>";
							dispHtml += "</li>";
						}
						dispHtml += "<ul>";
						dispHtml += "</div>";
						
						$('.cardList').html(dispHtml);
							
// 						console.log("pagination" , ${pagination});
// 							 <c:if test="${pagination.next}">
// 								<li class="page-item">
// 									<a class="page-link" href="#" onclick="fn_next('${pagination.page}', '${pagination.range}', '${pagination.rangeSize }'
// 									, '${pagination.listSize }', '${search.searchType }', '${search.keyword }')">다음
// 									</a>
// 								</li>
// 							</c:if>
// 				 		</ul>
// 					</div>
					
					
		})
	}
	
	function seeMore() {
		alert ("씨 모어~~");
		
		let FacetEnteries = document.getElementById('FacetEnteries_firstFacetEntries');
		FacetEnteries.style.maxHeight = "370px";
		FacetEnteries.style.overflowY = "scroll";
		
		
		let data = document.querySelectorAll('.FacetEnteries_firstFacetEntries >*');
		
		for (var i=0; i <data.length; i++) {
			data[i].style.display = 'block';
		}

		let text = document.getElementsByClassName("FacetEntries_seeMore")[0];
		text.style.cssText = "display : none; ";
		
		console.log("text : ", text);
	}

		
	$(document).ready(function(){
		 $('input[type="checkbox"]').click(function(){
	            if($(this).prop("checked") == true){
					alert("체크체크");
	            }
	            else if($(this).prop("checked") == false){
					alert("체크헤제");	            
	            }
	        });
	});		

</script>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>

