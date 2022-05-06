<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/rescue.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>Chewy Shelters and Rescues</title>
</head>
<body>

	<%@include file="../header/headerMain.jsp" %>

	<main class="main">
		<div class="rescue_main">
			<div class="main_wrap">
				<div class="rescue_wrap">
					<div class="rescue_top">
						<ol>
							<li class="top_left">
								<a>My Account</a>
							</li>
							<li class="top_right">
								<span>My Rescues</span>
							</li>
						</ol>
					</div>
				</div>
				<div class="rescue_mid">
					<h1>My Rescues</h1>
					<div class="mid_first">
						<div class="first_wrap">
							<div class="first_top">
								<h6>
								<svg width="22" height="19" viewBox="0 0 22 19" fill="none" xmlns="http://www.w3.org/2000/svg" class=""><path d="M12.3497 17.6307C11.5897 18.3207 10.4197 18.3207 9.65967 17.6207L9.54967 17.5207C4.29967 12.7707 0.869665 9.66065 0.999665 5.78065C1.05966 4.08065 1.92966 2.45065 3.33966 1.49065C5.97966 -0.309346 9.23967 0.530654 10.9997 2.59065C12.7597 0.530654 16.0197 -0.319346 18.6597 1.49065C20.0697 2.45065 20.9397 4.08065 20.9997 5.78065C21.1397 9.66065 17.6997 12.7707 12.4497 17.5407L12.3497 17.6307Z" fill="black"></path></svg>
								<span> My Favorite Pets</span>
								</h6>
							</div>
							<div class="first_bottom">
								<p>You can favorite dogs and cats available for adoption and then find your favorites here!</p>
								<a>
									<span>Find Adoptable Pets</span>
								</a>
							</div>
						</div>
					</div>
					<hr>
					<div class="mid_second">
						<div class="second_wrap">
							<div class="second_top">
								<h6>
									<svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg" class=""><path d="M7.99956 20C9.09956 20 9.99956 19.1 9.99956 18H5.99956C5.99956 19.1 6.88956 20 7.99956 20ZM13.9996 14V9C13.9996 5.93 12.3596 3.36 9.49956 2.68V2C9.49956 1.17 8.82956 0.5 7.99956 0.5C7.16956 0.5 6.49956 1.17 6.49956 2V2.68C3.62956 3.36 1.99956 5.92 1.99956 9V14L0.709563 15.29C0.0795632 15.92 0.519563 17 1.40956 17H14.5796C15.4696 17 15.9196 15.92 15.2896 15.29L13.9996 14Z" fill="black"></path></svg>
									<span>Notifications</span>
								</h6>
								<div class="second_top_down">
									<div class="top_down_wrap">
										<input type="checkbox" id="noti_check">
										<span></span>
										<label for="noti_check">Send me adoption confirmation emails</label>
									</div>
								</div>
							</div>
							<div class="second_mid">
								<h6>
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg" class=""><path fill-rule="evenodd" clip-rule="evenodd" d="M12.9867 6.2963H13.1947C13.6802 6.2963 14.1657 6.1502 14.5818 5.78496C15.2753 5.27362 15.8301 4.324 15.8995 3.37437C16.1075 1.62122 15.0673 0.160254 13.6802 0.0141578C13.1254 -0.0588903 12.5706 0.160254 12.0851 0.452447C11.3916 0.963783 10.8368 1.91341 10.7674 2.86303C10.5594 4.61619 11.5996 6.1502 12.9867 6.2963ZM5.36697 5.78529C5.78848 6.07729 6.28025 6.2963 6.77201 6.2963H6.98277C8.45806 6.1503 9.44159 4.61728 9.23083 2.93827C9.16058 1.84326 8.66881 0.967257 7.9663 0.456253C7.47453 0.0912506 6.91252 -0.0547504 6.3505 0.0182501C4.87521 0.164251 3.89168 1.69726 4.10244 3.37627C4.17269 4.32528 4.66445 5.20129 5.36697 5.78529ZM13.6896 9.63975C12.7291 8.59627 11.3993 8 9.99559 8C8.59188 8 7.26206 8.59627 6.30163 9.63975L3.1987 13.0683C2.23827 14.0373 1.795 15.4534 2.09051 16.795C2.38603 18.2112 3.34646 19.2547 4.82404 19.7764C6.22775 20.2981 7.85309 19.8509 8.8874 18.7329C9.18292 18.4348 9.55231 18.2857 9.99559 18.2857C10.4389 18.2857 10.8083 18.4348 11.1038 18.7329C11.8426 19.5528 12.8769 20 13.9112 20C14.3545 20 14.7239 19.9255 15.1671 19.7764C16.5708 19.2547 17.6052 18.1366 17.9007 16.795C18.1962 15.4534 17.8268 14.0373 16.8664 13.0683L13.6896 9.63975ZM4.073 9.79646C3.79757 9.93221 3.45329 10.0001 3.17787 10.0001C2.9713 10.0001 2.76473 10.0001 2.48931 9.86433C1.66304 9.66071 0.905621 9.04984 0.423629 8.30322C-0.333787 6.94574 -0.0583626 5.4525 1.11219 4.97738C1.59418 4.77376 2.14503 4.77376 2.69588 4.90951C3.52215 5.11313 4.27956 5.724 4.76156 6.47062C5.51897 7.8281 5.24355 9.32134 4.073 9.79646ZM17.3293 4.90951C17.875 4.77376 18.4207 4.77376 18.8982 4.97738C20.0579 5.52037 20.3308 7.01361 19.5804 8.3711C19.1029 9.11772 18.3525 9.72859 17.5339 9.93221C17.3293 10.0001 17.0564 10.0001 16.8518 10.0001C16.5107 10.0001 16.2378 9.93221 15.965 9.79646C14.7371 9.25346 14.4642 7.76023 15.2828 6.47062C15.7603 5.724 16.5107 5.11313 17.3293 4.90951Z" fill="black"></path></svg>
									<span>Find More Pets to Adopt</span>
								</h6>
								<div class="second_mid_btn">
									<a class="btn_label btn_left">
										<span>Find More Dogs</span>
									</a>
									<a class="btn_label btn_right">
										<span>Find More Cats</span>
									</a>
								</div>
							</div>
							<div class="second_bottom">
								<div class="bottom_up">
									<h6>
										<div class="bottom_up_svg">
											<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path fill="currentColor" d="M17 3H7c-1.1 0-2 .9-2 2v16l7-3 7 3V5c0-1.1-.9-2-2-2z"></path></svg>
										</div>
										<span>My Saved Pet Searches</span>
									</h6>
								</div>
								<div class="bottom_down">
									<p>You can save searches for adoptable pets and then view them here.</p>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="mid_third">
						<div class="third_wrap">
							<div class="third_top">
								<h6>
									<svg width="22" height="19" viewBox="0 0 22 19" fill="none" xmlns="http://www.w3.org/2000/svg" class=""><path d="M12.3497 17.6307C11.5897 18.3207 10.4197 18.3207 9.65967 17.6207L9.54967 17.5207C4.29967 12.7707 0.869665 9.66065 0.999665 5.78065C1.05966 4.08065 1.92966 2.45065 3.33966 1.49065C5.97966 -0.309346 9.23967 0.530654 10.9997 2.59065C12.7597 0.530654 16.0197 -0.319346 18.6597 1.49065C20.0697 2.45065 20.9397 4.08065 20.9997 5.78065C21.1397 9.66065 17.6997 12.7707 12.4497 17.5407L12.3497 17.6307Z" fill="black"></path></svg>
									<span>My Favorite Rescues</span>
								</h6>
							</div>
							<div class="third_bottom">
								<p>You can favorite shelters or rescues to quickly donate items from their Wish List or find adoptable pets.</p>
								<div class="third_btn">
									<a>
										<span>Find a Rescue</span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="mid_fourth">
					
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>

</body>
</html>