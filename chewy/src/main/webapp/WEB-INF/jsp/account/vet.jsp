<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/vet.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>My Vet Clinics | Chewy.com</title>
</head>
<body>

	<%@include file="../header/headerMain.jsp" %>

	<main class="main">
		<div class="account_navi">
			<div class="account_navi_wrap">
				<ul class="account_navi_list">
					<li class="overview other" onclick="location.href='/mypage.do'"><a>Overview</a></li>
					<li class="orders other"><a href="orders.do">Orders</a></li>
					<li class="autoship other"><a href="autoship.do">Autoship</a></li>
					<li class="mypets other"><a href="pet.do">My Pets</a></li>
					<li class="favorites other"><a href="favorite.do">Favorites</a></li>
					<li class="buy other"><a href="buy.do">Buy Again</a></li>
					<li class="gift other"><a href="gift.do">Gift Cards</a></li>
					<li class="prescriptions other"><a href="prescription.do">Prescriptions</a></li>
					<li class="health other"><a href="petHealth.do">My Pet Health</a></li>
					<li class="vet"><a href="vet.do">My Vet Clinics</a></li>
					<li class="rescue other"><a href="rescue.do">My Rescues</a></li>
				</ul>
			</div>
		</div>
		<div class="vet_main">
			<div class="main_wrap">
				<div class="vet_wrap">
					<div class="vet_top">
						<a>Account</a>
						>
						<span>My Vet Clinics</span>
					</div>
					<div class="vet_bottom">
						<div class="vet_bottom_wrap">
							<svg width="175px" height="142px" viewBox="0 0 175 142" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><title>vet office</title> <defs><polygon id="path-1" points="0 142 175 142 175 0 0 0"></polygon></defs> <g id="Iconography" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g id="Desktop-Copy-9" transform="translate(-425.000000, -304.000000)"><g id="vet_office_2" transform="translate(425.000000, 304.000000)"><path id="Stroke-1" d="M11,129.163787 C11,131.282356 12.5809104,133 14.5308313,133 L159.469957,133 C161.419878,133 163,131.282356 163,129.163787 L163,72.8353568 C163,70.7167869 161.419878,69 159.469957,69 L14.5308313,69 C12.5809104,69 11,70.7167869 11,72.8353568 L11,129.163787 Z" stroke="#A8AFB7" stroke-width="5.077"></path> <mask id="mask-2" fill="white"><use xlink:href="#path-1"></use></mask> <g id="Clip-4"></g> <polygon id="Fill-3" fill="#A8AFB7" mask="url(#mask-2)" points="62 134 85 134 85 90 62 90"></polygon> <polygon id="Fill-5" fill="#A8AFB7" mask="url(#mask-2)" points="90 134 113 134 113 90 90 90"></polygon> <path id="Fill-6" d="M175,142 L0,142 L0,133.500788 C0,131.56702 1.37409747,130 3.06802798,130 L171.931972,130 C173.626692,130 175,131.56702 175,133.500788 L175,142 Z" fill="#A8AFB7" mask="url(#mask-2)"></path> <path id="Fill-7" d="M45,104.133823 C45,106.260306 43.346471,108 41.3271314,108 L29.6720483,108 C27.6527088,108 26,106.260306 26,104.133823 L26,91.8653141 C26,89.7388301 27.6527088,88 29.6720483,88 L41.3271314,88 C43.346471,88 45,89.7388301 45,91.8653141 L45,104.133823 Z" fill="#A8AFB7" mask="url(#mask-2)"></path> <path id="Fill-8" d="M149,104.133823 C149,106.260306 147.347291,108 145.327952,108 L133.672869,108 C131.653529,108 130,106.260306 130,104.133823 L130,91.8653141 C130,89.7388301 131.653529,88 133.672869,88 L145.327952,88 C147.347291,88 149,89.7388301 149,91.8653141 L149,104.133823 Z" fill="#A8AFB7" mask="url(#mask-2)"></path> <path id="Fill-9" d="M173.260238,54.9667678 L151.346685,20.8083993 C150.604386,19.6027998 149.490151,19 148.190736,19 L116.620215,19.2012175 L108.698429,19.2285012 L108.698429,32.8268792 C108.698429,38.7201634 104.266704,43.5144251 98.8200332,43.5144251 L75.1799668,43.5144251 C69.7332956,43.5144251 65.3015711,38.7201634 65.3015711,32.8268792 L65.3015711,19.3751512 L57.1946044,19.4015823 L25.6248718,19.6027998 C24.3246682,19.6027998 23.210433,20.2055995 22.467347,21.4120516 L0.739762002,55.3692027 C-1.11755921,58.181984 0.739762002,62 3.89649886,62 L170.103501,61.5975651 C173.260238,61.5975651 175.117559,57.7804017 173.260238,54.9667678" fill="#A8AFB7" mask="url(#mask-2)"></path> <path id="Fill-10" d="M98.8086087,20.898913 C98.8086087,22.1918478 97.8326957,23.2499348 96.6392174,23.2499348 L91.5483478,23.2499348 C91.5006087,23.2499348 91.4614783,23.2914783 91.4614783,23.3431957 L91.4614783,28.8591522 C91.4614783,30.1512391 90.4855652,31.2084783 89.292087,31.2084783 L86.7086957,31.2084783 C85.5152174,31.2084783 84.5393043,30.1512391 84.5393043,28.8591522 L84.5393043,23.3347174 C84.5393043,23.288087 84.504087,23.2499348 84.4602609,23.2499348 L79.3615652,23.2499348 C78.168087,23.2499348 77.1921739,22.1918478 77.1921739,20.898913 L77.1921739,18.1002391 C77.1921739,16.8073043 78.168087,15.7500652 79.3615652,15.7500652 L84.382,15.7500652 C84.4688696,15.7500652 84.5393043,15.6746087 84.5393043,15.5805 L84.5393043,10.1416957 C84.5393043,8.84876087 85.5152174,7.79067391 86.7086957,7.79067391 L89.292087,7.79067391 C90.4855652,7.79067391 91.4614783,8.84876087 91.4614783,10.1416957 L91.4614783,15.6644348 C91.4614783,15.711913 91.4966957,15.7500652 91.5405217,15.7500652 L96.6392174,15.7500652 C97.8326957,15.7500652 98.8086087,16.8073043 98.8086087,18.1002391 L98.8086087,20.898913 Z M99.7391304,0 L76.2608696,0 C72.8173913,0 70,3.05132609 70,6.7826087 L70,32.2173913 C70,35.9478261 72.8173913,39 76.2608696,39 L99.7391304,39 C103.183391,39 106,35.9478261 106,32.2173913 L106,6.7826087 C106,3.05132609 103.183391,0 99.7391304,0 Z" fill="#A8AFB7" mask="url(#mask-2)"></path></g></g></g></svg>
							<h1>Welcome to My Vet Clinics</h1>
							<p>Add your vet clinic here. If you fill a prescription with Chewy Pharmacy, your vet clinic's information will automatically appear here, too.</p>
							<button href="main.do">+ Add a Vet Clinic</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../footer/footerMain.jsp" %>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript" src="../js/account.js"></script>

</body>
</html>