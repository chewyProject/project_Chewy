<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>Pet Food, Products, Supplies at Low Prices - Free Shipping | Chewy.com</title>
<link rel="stylesheet" type="text/css" href=<c:url value="css/egovframework/main2.css"/>>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	$(function() {
		$(".bxslider_first").bxSlider({
			auto : true,
			touchEnabled : (navigator.maxTouchPoints > 0), 
			speed : 500, // 애니메이션 속도
			pause : 10000, // 애니메이션 유지시간 5초
			mode : 'horizontal', // 슬라이드모드 = fade, horizontal, vertical 있다.
			//autoHover : true, // 슬라이드에 마우스를 올렸을 때 자동 전환을 멈추게 할 것인지 여부 설정
// 			autoControls : true  // 컨트롤 버튼(재생/정지) 표시 
			//stopAutoOnclick: true,  // 클릭해서 자동 실행 멈출 수 있도록 지정
			//pager : true // 현재 위치를 알리는 불빗 노출 여부 설정
		});
	});

	$(function() {
		$(".ShopByPet_photo").bxSlider({
			auto : false, // 자동전환 여부
			Controls : false, // 이전/다음 버튼 노출 여부
			touchEnabled : (navigator.maxTouchPoints > 0), // 크롬에서 a태그 안먹힐 때 사용 
			speed : 500, // 애니메이션 속도
			pause : 10000, // 애니메이션 유지시간 5초
			mode : 'horizontal', // 슬라이드모드 = fade, horizontal, vertical 있다.
			moveSlides : 1,
			//minSlides : 5, // 슬라이드 최소 노출 개수
			maxSlides : 6, // 슬라이드 최대 노출 개수
			slideWidth : 200,
			pager : false
		});
	});

</script>
<body>
	<div id="app"> <!-- 슬라이더 부분 -->
		<section id="body_container">
			<div class="slider">
				<div>
					<ul class="bxslider_first">
							<li>
								<a href="https://www.chewy.com/b/autoship-save-15682">
									<img src="https://cms-www.chewy.com/contentAsset/image/5a39bce0-cbd6-47f2-a12a-0ab9c9728814/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-April-Autoship-HP-Hero-MEDIUM-1025.jpg" style="width: 100%">
								</a>
								</li>
							<li>
								<a href="https://www.chewy.com/brands/justfoodfordogs-16614">
									<img src="https://cms-www.chewy.com/contentAsset/image/4d4e97fc-fc30-4cfa-81a3-a2a5807ae0ab/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-04-JFFD-HP-Hero-MEDIUM-1025-V2.jpg" style="width: 100%">
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/b/pharmacy-2515">
									<img src="https://cms-www.chewy.com/contentAsset/image/5adbc167-1b10-4221-94d8-7d231de0cb94/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-03-Heartworm-Awareness-HP-Hero-MEDIUM-1025.jpg" style="width: 100%">
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/app/content/connect-with-a-vet?utm_medium=bitly&utm_source=Chewy-HP&utm_campaign=Chewy-HP&utm_content=Chew-HP-Oct2021&utm_audience=Chewy-HP-Oct2021">
									<img src="https://cms-www.chewy.com/contentAsset/image/41fe6b13-a27b-4af7-9563-f1add7091199/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-02_CwaV-HP-Hero-April-DOG-Medium-1025.jpg" style="width: 100%" >
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/deals/todays-deals-2723">
									<img src="https://cms-www.chewy.com/contentAsset/image/606de30d-2269-4b12-b11b-5f2f7bb79163/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-04-NationalPetDay-HP-Hero-MEDIUM-1025-v2.jpg" style="width: 100%">
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/b/disney-14155">
									<img src="https://cms-www.chewy.com/contentAsset/image/5bd9d5a4-2fc4-43e3-adb6-874d765a6560/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-Disney-HP-Hero-MEDIUM-2.jpg" style="width: 100%">
								</a>
							</li>		
						</ul>
				</div>	
			</div>
		</section>	
		
		<section id="body_container">
			<section class="body_container__container" style="display: flex; margin: 0 auto;">
				<div class="slider_bottom">
					<ul class="slider_bottom_title">
						<li>
							<a class="tile_link_whole" href="">
								<div class="tile">
									<div class="tile_content">
										<span class="status_container">
											<p class="tile_title">HI</p>
											<p class="tile_link">Sign In</p>
										</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<div class="slider_bottom">
					<ul class="slider_bottom_title">
						<li class="">
							<a class="tile_link_whole" href="">
								<div class="tile">
									<div class="tile_content">
										<span class="icon_container">
											<img src="https://cms-www.chewy.com/images/icons/homepage/utility-belt/autoship-gray.svg"
												 alt="/" height="39" width="39">
										</span>
										<span class="status_container">
											<p class="tile_title">Save 35% Today</p>
											<p class="tile_link">Set up AutoShip</p>
										</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<div class="slider_bottom">
					<ul class="slider_bottom_title">
						<li>
							<a class="tile_link_whole" href="">
								<div class="tile">
									<div class="tile_content">
										<span class="icon_container">
											<img src="https://cms-www.chewy.com/images/icons/homepage/utility-belt/box-gray.svg"
												 alt="/" height="39" width="39">
										</span>
										<span class="status_container">
											<p class="tile_title">Recent Order</p>
											<p class="tile_link">Track Package</p>
										</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<div class="slider_bottom">
					<ul class="slider_bottom_title">
						<li>
							<a class="tile_link_whole" href="">
								<div class="tile">
									<div class="tile_content">
										<span class="status_container">
											<p class="tile_title">Chewy Pharmacy</p>
											<p class="tile_link">Shop new</p>
										</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
		
			</section>
		</section>
		
		<section id="body_container">
			
			<div class="ShopByPet">
				<div class="Shop_title_text">Shop By Pet</div>
				
				<ul class="ShopByPet_photo">
					<li>
						<a href="https://www.chewy.com/b/dog-288">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/5d711871-420a-4a49-8523-cfdd1da16389/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsDog-2x.jpg"></a>
	 					<div class="petName">Dog</div> 
					</li>
					<li>
						<a href="https://www.chewy.com/b/cat-325">
						<img src="https://cms-www.chewy.com/contentAsset/image/9b9d82af-d798-4026-be7d-86bfbe0e923a/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsCat-2x.jpg"></a>
						<div class="petName">Cat</div>
					</li>
					<li>
						<a href="https://www.chewy.com/b/small-pet-977">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/dcdf9d88-8a18-491b-94e2-15644238f7fa/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsSmallPet-2x.jpg"></a>
	 					<div class="petName">Small pet</div>
					</li>
					<li>
						<a href="https://www.chewy.com/b/bird-941">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/f0fe058f-896c-4060-a2bc-320971c93357/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsBird-2x.jpg"></a>
	 					<div class="petName">Bird</div>
					</li>
					<li>				
						<a href="https://www.chewy.com/b/fish-885">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/1fb36d70-7daf-4c6c-8e48-8cd1bfdc1c05/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsFish-2x.jpg"></a>
	 					<div class="petName">Fish</div>
					</li>
					<li>
						<a href="https://www.chewy.com/b/reptile-1025">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/07a43f5a-b000-42cc-a86d-36da0e2a0713/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsReptile-2x.jpg"></a>
	 					<div class="petName">Reptile</div>
					</li>
					<li>
						<a href="https://www.chewy.com/b/horse-1663">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/fb2ba0ba-0795-402b-a7ed-beafe0c2382b/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsHorse-2x.jpg"></a>
	 					<div class="petName">Horse</div>
					</li>
					<li>
						<a href="https://www.chewy.com/b/farm-animal-8403">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/bd2f9c28-558c-4146-aa31-a5329fea2ab4/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsChicken-2x.jpg"></a>
	 					<div class="petName">Farm Animal</div>
					</li>
					<li>
						<a href="https://www.chewy.com/b/pet-parents-15439">
	 					<img src="https://cms-www.chewy.com/contentAsset/image/b73ff3e3-c8c8-4bef-a4c0-c29803eae400/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/PET-TILES-Deal-FlagsPetParent-2x.jpg"></a>
	 					<div class="petName">And Pet Parents, Too</div>
					</li>
				</ul>
			</div>	
		</section>	
		
		<section id="body_container">
			<div class="Popular_Categories">
				<header class="Popular_Categories_header">
					<h2 class="Popular_Categories_font">Popular Categories</h2>
				</header>
				<div class="grid_content">
					<a class="grid_content_size" href="https://www.chewy.com/b/food-332">
						<div class="Categories_images">
							<img class="image_shape" alt="Dog Food" src="https://cms-www.chewy.com/contentAsset/image/7e1c4efa-1a49-426c-8024-900e35e58de5/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/259531-DogPremiumFood.jpg">
						</div>
						<div class="image_text">Dog Food</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/toys-315">
						<div class="Categories_images">
							<img class="image_shape" alt="Dog Toys" src="https://cms-www.chewy.com/contentAsset/image/654a5f98-ca2d-473a-a502-e5dbea79a608/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/248039-DogToys.jpg">
						</div>
						<div class="image_text">Dog Toys</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/treats-335">
						<div class="Categories_images">
							<img class="image_shape" alt="Dog Treats" src="https://cms-www.chewy.com/contentAsset/image/e5a4b641-fae2-43ed-bdf9-5a813dc393d7/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/61932-DogTreats.jpg">
						</div>
						<div class="image_text">Dog Treats</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/food-387">
						<div class="Categories_images">
							<img class="image_shape" alt="Cat Food" src="https://cms-www.chewy.com/contentAsset/image/2f654ebb-9a96-4e27-83b8-b33b84d05271/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/50765-CatFood.jpg">
						</div>
						<div class="image_text">Cat Food</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/litter-411">
						<div class="Categories_images">
							<img class="image_shape" alt="Cat Litter" src="https://cms-www.chewy.com/contentAsset/image/5d40c99b-91d4-4c6a-9438-84ef01fc24dd/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/141397-CatLitter.jpg">
						</div>
						<div class="image_text">Cat Litter</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/trees-condos-scratchers-456">
						<div class="Categories_images">
							<img class="image_shape" alt="Cat Furniture" src="https://cms-www.chewy.com/contentAsset/image/faa4094a-4482-41c2-a38c-ccbb12384f56/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/329344-Cat-Furniture.jpg">
						</div>
						<div class="image_text">Cat Furniture</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/beds-365">
						<div class="Categories_images">
							<img class="image_shape" alt="Dog Beds" src="https://cms-www.chewy.com/contentAsset/image/e5c5dd0e-2f3d-44ec-a45d-a0d6951980b0/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/180277-DogBeds.jpg">
						</div>
						<div class="image_text">Dog Beds</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/pharmacy-2515">
						<div class="Categories_images">
							<img class="image_shape" alt="Chewy Pharmacy" src="https://cms-www.chewy.com/contentAsset/image/aaa13a2a-f49b-45d3-b399-6cb22f54c06a/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/Pharmacy-460px-Winter21.jpg">
						</div>
						<div class="image_text">Chewy Pharmacy</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/toys-326">
						<div class="Categories_images">
							<img class="image_shape" alt="Cat Toys" src="https://cms-www.chewy.com/contentAsset/image/362e1250-563a-4032-b52e-cff4e6d841a7/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/288963-CatToys.jpg">
						</div>
						<div class="image_text">Cat toys</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/flea-tick-381">
						<div class="Categories_images">
							<img class="image_shape" alt="Dog Flea & Tick" src="https://cms-www.chewy.com/contentAsset/image/ba3e70ad-09d4-4257-8619-475ea66c38de/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/Dog-FleaTick-460px-Winter21.jpg">
						</div>
						<div class="image_text">Dog Flea & Tick</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/b/vitamins-supplements-374">
						<div class="Categories_images">
							<img class="image_shape" alt="Dog Supplements" src="https://cms-www.chewy.com/contentAsset/image/8f2646f2-e359-4b7a-828f-51991af84755/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/163821-DogSupplements.jpg">
						</div>
						<div class="image_text">Dog Supplements</div>
					</a>
					<a class="grid_content_size" href="https://www.chewy.com/deals/todays-deals-2723">
						<div class="Categories_images">
							<img class="image_shape" alt="Today's Deals" src="https://cms-www.chewy.com/contentAsset/image/84dc8526-3a14-4a79-819b-425f37129767/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/222/resize_h/222/TodaysDeals-1500px.jpg">
						</div>
						<div class="image_text">Today's Deals</div>
					</a>
				</div>
			</div>
		</section>
		
		
	</div>
	
</body>
</html>