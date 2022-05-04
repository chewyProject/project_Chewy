<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<style>
  .bxslider_first {text-align: center;}
  .bx-wrapper {position: relative;}
  .bx-controls-direction {font-size: 30px;}
  .bx-controls-direction a {position: absolute; display: block; top:50%; width: 100px; height: 120px; overflow: hidden;
  	transform:translateY(-50%); color: blue; font-weight: normal;}
  .bx-controls-direction .bx-prev {left: 0;}
  .bx-controls-direction .bx-next {right: 0;}
  .bx-controls-direction .bx-prev:before { content: "\e93d"; font-family: 'xeicon'; }
  .bx-controls-direction .bx-next:before { content: "\e940"; font-family: 'xeicon'; }
  .bx-pager {position: absolute; left: 0; bottom: 60px; width:100%; text-align: center;}
  .bx-pager div {display: inline-block; padding: 0 5px; }
  .bx-pager div a {display: block; width: 10px; height: 10px; background: #f8f9fa; font-size: 0; color: transparent; border-radius: 50%;}
  .bx-pager div a.active {background:#000;}
  .bx-controls-auto .bx-stop {left: 0;}

</style>

</head>
<body>

	 	
<!-- <i class="xi-angle-left-thin"></i> -->
<!-- <i class="xi-angle-right-thin"></i> -->

<!-- 	<div class="bxslider1"> -->
<!-- 		<div><img src="https://cms-www.chewy.com/contentAsset/image/5a39bce0-cbd6-47f2-a12a-0ab9c9728814/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-April-Autoship-HP-Hero-MEDIUM-1025.jpg"></div> -->
<!-- 		<div><img src="https://cms-www.chewy.com/contentAsset/image/4d4e97fc-fc30-4cfa-81a3-a2a5807ae0ab/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-04-JFFD-HP-Hero-MEDIUM-1025-V2.jpg"></div> -->
<!-- 		<div><img src="https://cms-www.chewy.com/contentAsset/image/5adbc167-1b10-4221-94d8-7d231de0cb94/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-03-Heartworm-Awareness-HP-Hero-MEDIUM-1025.jpg"></div> -->
<!-- 		<div><img src="https://cms-www.chewy.com/contentAsset/image/41fe6b13-a27b-4af7-9563-f1add7091199/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-02_CwaV-HP-Hero-April-DOG-Medium-1025.jpg"></div> -->
<!-- 	</div> -->
	

	<div class="slider"  style="width:800px; height: 300px; ">
				<div>
					<ul class="bxslider_first">
							<li>
								<a href="https://www.chewy.com/b/autoship-save-15682">
									<img src="https://cms-www.chewy.com/contentAsset/image/5a39bce0-cbd6-47f2-a12a-0ab9c9728814/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-April-Autoship-HP-Hero-MEDIUM-1025.jpg">
								</a>
								</li>
							<li>
								<a href="https://www.chewy.com/brands/justfoodfordogs-16614">
									<img src="https://cms-www.chewy.com/contentAsset/image/4d4e97fc-fc30-4cfa-81a3-a2a5807ae0ab/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-04-JFFD-HP-Hero-MEDIUM-1025-V2.jpg">
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/b/pharmacy-2515">
									<img src="https://cms-www.chewy.com/contentAsset/image/5adbc167-1b10-4221-94d8-7d231de0cb94/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-03-Heartworm-Awareness-HP-Hero-MEDIUM-1025.jpg">
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/app/content/connect-with-a-vet?utm_medium=bitly&utm_source=Chewy-HP&utm_campaign=Chewy-HP&utm_content=Chew-HP-Oct2021&utm_audience=Chewy-HP-Oct2021">
									<img src="https://cms-www.chewy.com/contentAsset/image/41fe6b13-a27b-4af7-9563-f1add7091199/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-02_CwaV-HP-Hero-April-DOG-Medium-1025.jpg">
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/deals/todays-deals-2723">
									<img src="https://cms-www.chewy.com/contentAsset/image/606de30d-2269-4b12-b11b-5f2f7bb79163/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-04-NationalPetDay-HP-Hero-MEDIUM-1025-v2.jpg">
								</a>
							</li>
							<li>
								<a href="https://www.chewy.com/b/disney-14155">
									<img src="https://cms-www.chewy.com/contentAsset/image/5bd9d5a4-2fc4-43e3-adb6-874d765a6560/fileAsset/byInode/1/filter/Resize,Jpeg/jpeg_q/100/resize_w/1025/resize_h/296/2022-Disney-HP-Hero-MEDIUM-2.jpg">
								</a>
							</li>		
						</ul>
				</div>	
			</div>
	
	<script>
		$('.bxslider_first').bxSlider({
			  auto: true,
			  autoControls: true,
	//		  stopAutoOnClick: true,
			  pager: true,
	//		  slideWidth: 600
			});
	</script>

</body>
</html>