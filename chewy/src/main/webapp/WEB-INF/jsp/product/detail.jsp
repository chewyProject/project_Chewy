<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/product/detail.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	    $('.slider').bxSlider( {
	        mode: 'vertical',// 가로 방향 수평 슬라이드
	        speed: 500,        // 이동 속도를 설정
	        pager: false,      // 현재 위치 페이징 표시 여부 설정
	        moveSlides: 6,     // 슬라이드 이동시 개수
	        slideWidth: 90,   // 슬라이드 너비
	        minSlides: 6,      // 최소 노출 개수
	        maxSlides: 6,      // 최대 노출 개수
	        auto: false,        // 자동 실행 여부
	        controls: true    // 이전 다음 버튼 노출 여부
	    });
	});
</script>
</head>
<body>
	상품 상세 페이지
	
	<c:forEach items="${productInfo }" var="result">
		<c:forEach items="${result.img }" var="i">
		<div class="slider">
			<div class="imgwrap_slider">
				<div class="img"><img alt="feed" src="${i.i_first }"/></div>
				<div class="img"><img alt="feed" src="${i.i_second }"/></div>
				<div class="img"><img alt="feed" src="${i.i_third }"/></div>
				<div class="img"><img alt="feed" src="${i.i_fourth }"/></div>
				<div class="img"><img alt="feed" src="${i.i_fifth }"/></div>
				<div class="img"><img alt="feed" src="${i.i_sixth }"/></div>
				<div class="img"><img alt="feed" src="${i.i_seventh }"/></div>
				<div class="img"><img alt="feed" src="${i.i_eighth }"/></div>
				<div class="img"><img alt="feed" src="${i.i_ninth }"/></div>
				<div class="img"><img src="${i.i_tenth }"/></div>
			</div>
		</div>
			
		</c:forEach>
		<div>
			<p>${result.p_name }</p>
			<p>${result.b_no }</p>
			<p>${result.p_star }</p>
			<p>${result.p_price }</p>		
		</div>
	</c:forEach>
	
</body>
</html>