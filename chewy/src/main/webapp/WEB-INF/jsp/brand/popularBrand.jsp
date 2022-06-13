<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/header/headerMain.css">
<link rel="stylesheet" href="../../css/brand/popularBrand.css">
<link rel="stylesheet" href="../../css/footer/footerMain.css">
<title>Insert title here</title>
</head>
<body>
	
	<%@include file="../header/headerMain.jsp" %>
	
	<main>
		<div class="main_wrap">
			<h1>Shop ${title } by Brand</h1>
			<div class="popular_logo">
				<ul>
					<c:forEach items="${popular }" var="result" end="5">
						<li class="logo_li">
							<a>
								<span class="brandlogo_wrap">
									<span class="brandbackground">
										<img src="../../images/cart/img_none.svg">
									</span>
									<img src="${result.b_logo }">
								</span>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi">
				<ul>
					<li>
						<button class="brand_navi_btn all btnAll" onclick="allClick()">All</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnA" onclick="aClick()">A</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnB" onclick="bClick()">B</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnC" onclick="cClick()">C</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnD" onclick="dClick()">D</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnE" onclick="eClick()">E</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnF" onclick="fClick()">F</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnG" onclick="gClick()">G</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnH" onclick="hClick()">H</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnI" onclick="iClick()">I</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnJ" onclick="jClick()">J</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnK" onclick="kClick()">K</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnL" onclick="lClick()">L</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnM" onclick="mClick()">M</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnN" onclick="nClick()">N</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnO" onclick="oClick()">O</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnP" onclick="pClick()">P</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnQ" onclick="qClick()">Q</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnR" onclick="rClick()">R</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnS" onclick="sClick()">S</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnT" onclick="tClick()">T</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnU" onclick="uClick()">U</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnV" onclick="vClick()">V</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnW" onclick="wClick()">W</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnX" onclick="xClick()">X</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnY" onclick="yClick()">Y</button>
					</li>
					<li>
						<button class="brand_navi_btn alphabet btnZ" onclick="zClick()">Z</button>
					</li>
				</ul>
			</div>
			<div class="brand_navi_alphabet Aa">
				<h2>A</h2>
				<ul class="alphabet_list">
					<c:forEach items="${a }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Bb">
				<h2>B</h2>
				<ul class="alphabet_list">
					<c:forEach items="${b }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Cc">
				<h2>C</h2>
				<ul class="alphabet_list">
					<c:forEach items="${c }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Dd">
				<h2>D</h2>
				<ul class="alphabet_list">
					<c:forEach items="${d }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Ee">
				<h2>E</h2>
				<ul class="alphabet_list">
					<c:forEach items="${e }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Ff">
				<h2>F</h2>
				<ul class="alphabet_list">
					<c:forEach items="${f }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Gg">
				<h2>G</h2>
				<ul class="alphabet_list">
					<c:forEach items="${g }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Hh">
				<h2>H</h2>
				<ul class="alphabet_list">
					<c:forEach items="${h }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Ii">
				<h2>I</h2>
				<ul class="alphabet_list">
					<c:forEach items="${i }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Jj">
				<h2>J</h2>
				<ul class="alphabet_list">
					<c:forEach items="${j }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Kk">
				<h2>K</h2>
				<ul class="alphabet_list">
					<c:forEach items="${k }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Ll">
				<h2>L</h2>
				<ul class="alphabet_list">
					<c:forEach items="${l }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Mm">
				<h2>M</h2>
				<ul class="alphabet_list">
					<c:forEach items="${m }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Nn">
				<h2>N</h2>
				<ul class="alphabet_list">
					<c:forEach items="${n }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Oo">
				<h2>O</h2>
				<ul class="alphabet_list">
					<c:forEach items="${o }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Pp">
				<h2>P</h2>
				<ul class="alphabet_list">
					<c:forEach items="${p }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Qq">
				<h2>Q</h2>
				<ul class="alphabet_list">
					<c:forEach items="${q }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Rr">
				<h2>R</h2>
				<ul class="alphabet_list">
					<c:forEach items="${r }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Ss">
				<h2>S</h2>
				<ul class="alphabet_list">
					<c:forEach items="${s }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Tt">
				<h2>T</h2>
				<ul class="alphabet_list">
					<c:forEach items="${t }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Uu">
				<h2>U</h2>
				<ul class="alphabet_list">
					<c:forEach items="${u }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Vv">
				<h2>V</h2>
				<ul class="alphabet_list">
					<c:forEach items="${v }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Ww">
				<h2>W</h2>
				<ul class="alphabet_list">
					<c:forEach items="${w }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Xx">
				<h2>X</h2>
				<ul class="alphabet_list">
					<c:forEach items="${x }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet Yy">
				<h2>Y</h2>
				<ul class="alphabet_list">
					<c:forEach items="${y }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="brand_navi_alphabet_B Zz">
				<h2>Z</h2>
				<ul class="alphabet_list">
					<c:forEach items="${z }" var="result">
						<li>
							<a href="#?no=${result.b_no }">${result.b_name }</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</main>
	
	<%@include file="../footer/footerMain.jsp" %>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript" src="../js/brand.js"></script>
	<script type="text/javascript" src="../js/header/headerMain.js"></script>
</body>
</html>