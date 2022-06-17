<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main/dog.css" />
<title>Dog Supplies: Best Dog & Puppy Products (Free Shipping) | Chewy</title>
</head>

<body>
	<div data-cms-uid="dept-hero-10-288" class="cms-include ">
		<section class="dept__banner">
			<div class="dept__banner__title">
				<div class="container_banner">
					<h1>
						the dog<br> shop
					</h1>
				</div>
			</div>
		</section>
	</div>
	
	<div class="container-fluid">
			<div class="row g-3">
			
				<div class="col-md-2"></div>
			
				<div class="col-md-2">
					<div class="dept-sidebar">	
						<ul>
							<c:forEach items="${mList }" var="mCate">
								<li class="dept-sidebar__inner" id="dept-sidebar__inner">
									<a href="#?${mCate.mct_name }=${mCate.mct_no }">
<%-- 									<a href="selectMCateList.do?ct=${mCate.mct_no }"> --%>
								 		${mCate.mct_name }
									</a>
									<div class="dept__popover" style="visibility: hidden; opacity: 0;">
					                    <h3>
					                    	<a href="#">${mCate.mct_name }</a>
					                    </h3>
										<div class="dept__popover__inner">
											<div class="dept__popover__content" id="dept__popover__content">
										    	<ul>
										    		<c:forEach items="${sList }" var="sCate">
														<li>
											    			<a href="#food=${sCate.sct_no }">
											    				${sCate.sct_name }
															</a>
														</li>
										    		</c:forEach>
													   
											    </ul>
											</div>
											<div class="dept__popover__img">
												<img src=${mCate.m_img } alt="Food">
											</div>
										</div>
									</div>
									
								</li>
						 	</c:forEach>
							
						</ul>
					</div>	
				</div>
				
				<div class="col-md-6">
			
					<c:forEach items="${mList }" var="mCate">
						<div class="dept-slider controls">
							<div class="bxslider-header">
								<header>
									<h2>
									     <a href="#">
									     ${mCate.mct_name }<span>Shop All</span>
									     </a>
								   </h2>
								 </header>
								 <div class="bxslider_content" id="bxslider_content">
									<ul class="bxslider">
										<c:forEach items="${sList }" var="sCate">
<%-- 												<c:if test="${sCate[mCate.dog] eq 1 }"> --%>
												<li>
													<a href="#">
														<span class="dept-slider_img">
															<img src="${sCate.s_img }">
														</span>
														<p>${sCate.sct_name }</p>
													</a>
												</li>
<%-- 												</c:if> --%>
										</c:forEach>
									</ul>
								 </div>
							</div>
						</div>		
					</c:forEach>
						
				</div>
				
				<div class="col-md-2"></div>
			</div>
	</div>

<script>

	$(function() {
	
// 		var delay = 1000, setTimeoutConst;
// 		var content = document.getElementById('dept__popover__content');
		var mList = []  // 배열에 저장
		
		<c:forEach items="${mList }" var="mCate">
// 			console.log("mCate : " + '${mCate.mct_name}');
			mList.push('${mCate.mct_name}'); // 배열에 mct_name값들이 저장
		</c:forEach>
			console.log("mList: " , mList);
		
	 	$(".dept-sidebar__inner").mouseover(function(){
// 	 		var mno =$('.dept-sidebar__inner');
// 		 	console.log("mno : ", mno);
// 		 	console.log("mno[0] : ", mno[0]);
// 		 	console.log("mno[ $(this).index()].outerText : ", mno[$(this).index()].outerText);
// 	 		console.log("$(this).index() : " , $(this).index());
			console.log("mList[$(this).index()] : " , mList[$(this).index()]);   // n번째 인덱스 값
			
			var children = $(this).find('.dept__popover__content');
			console.log("$(this) : " ,$(this));
			console.log("children : " ,children);
			console.log("encodeURIComponent(mList[$(this).index()]) : " , encodeURIComponent(mList[$(this).index()]));
			
	 		fetch('http://localhost:8080/chewy/sCateList.do?name=' + 'dog' + '&mctName=' + encodeURIComponent(mList[$(this).index()]), {
			    
	 			method: 'get',
	// 		    body: JSON.stringify({
	// 		       name: bnoOptions
	// 		    })
			  })
			.then((response) => response.json())
	  		.then((data) => { 
	  			console.log("data!!! : " , data);
// 	  			console.log("data.cate : " , data.cate);
// 	  			console.log("mList[$(this).index()] : " + mList[$(this).index()]);
	  			
	  			children.html('<ul>');
	  			
	  			var cate = data.cate
	  			console.log("cate!!!! : ", cate);
	  			$.each(cate, function(index, value2) {
// 	  				console.log("value2 : " , value2);
	  				console.log("value2.sct_name : " , value2.sct_name);
	  				
	  				children.append("<li>");
	  				children.append('<a href=#' + value2.sct_no + '>');
	  				children.append(value2.sct_name);
	  				children.append("</a>");
	  				children.append("</li>");
	  				
	  			})
	  				children.append("</ul>");
// 	  				$(this).children('#dept__popover__content').append('</ul>');
// 	  			<ul>
// 	    		<c:forEach items="${sList }" var="sCate">
// 					<li>
// 		    			<a href="#food=${sCate.sct_no }">
// 		    				${sCate.sct_name }
// 						</a>
// 					</li>
// 	    		</c:forEach>
				   
// 		   		</ul>
	  		})
	 		
	 		$(".dept-sidebar li").removeClass("dept-sidebar--active");
	 		$(this).addClass("dept-sidebar--active");
	 		
	 		$(".dept-sidebar--active .dept__popover").css({
	 			"visibility" : "visible",
	 			"opacity" : "1"
	 		});
	 		
	 		$(this).removeClass("dept-sidebar--active");
			 
		});
	 	
// 	 	var delay=1000, setTimeoutConst;
// 	 	$('.dept-sidebar li').on('mouseover', function() {
// 	 	  setTimeoutConst = setTimeout(function() {
// 	 	    // do something
// 	 		 $(".dept-sidebar li").removeClass("dept-sidebar--active");
// 		 		$(this).addClass("dept-sidebar--active");
// 		 		$(".dept-sidebar--active .dept__popover").css({
// 		 			"visibility" : "visible",
// 		 			"opacity" : "1"
// 		 		});
	 	    
// 	 	  }, delay);
// 	 	}, function() {
// 	 	  clearTimeout(setTimeoutConst);
// 		 $(this).removeClass("dept-sidebar--active");
// 	 	});
		
	 	// -------------------------------------------------------------------------
	 	
		var bxslider = $(".bxslider").bxSlider({
			mode : 'horizontal',
			auto : false,
			Controls : false,
			maxSlides : 5,
			slideWidth : 150,
			slideMargin : 25,
			pager : false,
			moveSlides : 5,
			infiniteLoop : false,
			
			
			onSliderLoad : function() {
// 				console.log("mList : " , mList);
// 				console.log("mList[$(this).index()] : " , mList[$(this).index()]);
// 				console.log("$(this).index() : " , $(this).index());
// 				console.log("encodeURIComponent(mList[$(this).index()]) : " , encodeURIComponent(mList[$(this).index()]));
// 				fetch('http://localhost:8080/chewy/sCateList.do?name=' + 'dog' + '&mctName=' + encodeURIComponent(mList[$(this).index()]), {
						    
// 		 			method: 'get',
// 		// 		    body: JSON.stringify({
// 		// 		       name: bnoOptions
// 		// 		    })
// 				  })
// 				.then((response) => response.json())
// 		  		.then((data) => { 
// 		  			console.log("성공성공");	
// 		  		})
			}
		});
	 	
// 	 	console.log("bxslider : ", bxslider);
	 	
// 	 	var bxchildren = $(bxslider).find('.bxslider');
	 	
// 	 	console.log("bxchildren : " , bxchildren);
	 	
	 	
		
		
		
	});
	

	
	
//		$('a').on('click', function(e){
//			e.preventDefault();
//		});
	
// 	document.getElementById('bt1').value='show-more';

// 	$('.bx-next').on('click'). function() {
// 		goToNextSlide();
// 		return false;
// 	}


</script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>