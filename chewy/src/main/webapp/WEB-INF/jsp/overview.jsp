<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/header/headerMain.css" />
<link rel="stylesheet" href="css/account/overview.css" />
<link rel="stylesheet" href="css/footer/footerMain.css" />
<title>Insert title here</title>
</head>
<body>
<%@include file="header/headerMain.jsp" %>

	<main class="main">
		<div class="account_navi">
			<div class="account_navi_wrap">
				<ul class="account_navi_list">
					<li class="overview other" onclick="location.href='/mypage.do'"><a>Overview</a></li>
					<li class="orders other"><a>Orders</a></li>
					<li class="autoship"><a>Autoship</a></li>
					<li class="mypets other"><a>My Pets</a></li>
					<li class="favorites other"><a>Favorites</a></li>
					<li class="buy other"><a>Buy Again</a></li>
					<li class="gift other"><a>Gift Cards</a></li>
					<li class="prescriptions other"><a>Prescriptions</a></li>
					<li class="health other"><a>My Pet Health</a></li>
					<li class="vet other"><a>My Vet Clinics</a></li>
					<li class="rescue other"><a>My Rescues</a></li>
				</ul>
			</div>
		</div>
	
		<div class="overview_main">
			<div class="main_wrap">
				<div class="overview_top">
					<h1>Welcomeback, ${info[0].m_name }!</h1>
					<p class="overview_summary">Welcome to your Chewy.com account! Here you can modify your account information, check the status of your orders and manage your Autoship(s).</p>
				</div>
				<div class="overview_mid">
					<div class="account__pethealth-links">
                        <div id="vue-mount__sfw-account-overview-pethealth-links-app" class="vue-portal-target ">
                        <section class="account-pethealth-links">
                        <header>
                        <h2> My Pet Health</h2>
                        </header> 
                        <ul class="cw-list__reset"><li><a href="/pethealth/my-prescriptions" class="cw-card cw-card--action account-pethealth-links__link">

          My Prescriptions and Vet Diet Authorizations
        </span></a></li> <li><a href="/app/content/connect-with-a-vet" class="cw-card cw-card--action account-pethealth-links__link"><span class="account-pethealth-links__icon-wrapper"><span class="cw-icon--large"><span role="presentation" class="cw-icon__image"><svg viewBox="0 0 70 70" xmlns="http://www.w3.org/2000/svg" color="#1C49C2"><path d="M62 17.123v-1.035c0-.37-.302-.67-.676-.672v-5.269C61.324 7.858 59.438 6 57.125 6H30.87c-2.312 0-4.19 1.858-4.19 4.147v3.483a.677.677 0 0 0-.68.673v2.137c0 .371.305.673.68.673V49.23h2.467c.19 0 .345-.152.345-.34v-6.311c0-1.41.67-2.666 1.723-3.465V11.95H56.79V56.16H31.215v-3.402a4.457 4.457 0 0 1-2.068.512H26.68v5.574c0 2.289 1.878 4.156 4.19 4.156h26.255c2.313 0 4.2-1.867 4.2-4.156V22.023A.676.676 0 0 0 62 21.35v-1.036c0-.37-.302-.67-.676-.672v-1.846a.676.676 0 0 0 .676-.673zM47.349 9.635h-6.503a.682.682 0 0 1-.68-.673c0-.368.308-.673.68-.673h6.503c.372 0 .68.305.68.673a.682.682 0 0 1-.68.673zM44.002 60.98c-.78 0-1.414-.628-1.414-1.4s.634-1.4 1.414-1.4c.78 0 1.415.628 1.415 1.4s-.635 1.4-1.415 1.4z"></path><path d="M49 27.773V20.71c0-1.044-.865-1.9-1.918-1.9h-1.514a.516.516 0 0 0-.162.027 1.433 1.433 0 0 0-1.297-.811c-.81 0-1.468.65-1.468 1.453s.658 1.445 1.468 1.445c.568 0 1.063-.321 1.297-.803a.514.514 0 0 0 .162.027h1.514c.315 0 .567.25.567.562v7.062a6.453 6.453 0 0 1-.739 2.978.126.126 0 0 0-.018.054 1.574 1.574 0 0 0-1.45.526c-.099.107-.198.223-.297.32a5.61 5.61 0 0 1-4.305 1.588c-1.441-.098-2.775-.776-3.747-1.908a1.561 1.561 0 0 0-1.46-.526.125.125 0 0 0-.017-.054 6.753 6.753 0 0 1-.811-3.192V20.71c0-.303.261-.562.576-.562h1.487a.424.424 0 0 0 .153-.027c.234.49.747.83 1.333.83.82 0 1.486-.66 1.486-1.472 0-.82-.667-1.48-1.486-1.48a1.47 1.47 0 0 0-1.333.838.424.424 0 0 0-.153-.027H35.38c-1.062 0-1.927.856-1.927 1.9v6.848c0 1.32.333 2.64.973 3.816a.47.47 0 0 0 .144.179 1.495 1.495 0 0 0 .144 1.774c1.333 1.552 3.107 2.568 5.062 2.898h-.045V38.1c0 .606.36 1.141.891 1.373a.412.412 0 0 0-.027.151v9.363c0 .927-.765 1.676-1.702 1.676h-.9a1.685 1.685 0 0 1-1.703-1.676v-6.268c0-1.668-1.369-3.023-3.053-3.023s-3.054 1.355-3.054 3.023v6.268c0 .927-.756 1.676-1.693 1.676H15.278c-.937 0-1.703-.749-1.703-1.676v-10.46c2.387-.32 4.234-2.345 4.234-4.797 0-2.684-2.198-4.86-4.91-4.86C10.199 28.87 8 31.046 8 33.73c0 2.452 1.846 4.477 4.224 4.798v10.46c0 1.658 1.37 3.013 3.054 3.013H28.49c1.675 0 3.044-1.355 3.044-3.014v-6.268c0-.928.766-1.686 1.703-1.686.936 0 1.702.758 1.702 1.686v6.268c0 1.659 1.37 3.014 3.053 3.014h.901c1.684 0 3.053-1.355 3.053-3.014v-9.363a.413.413 0 0 0-.027-.151c.163-.072.307-.17.433-.294.279-.277.45-.66.45-1.08V36.2a8.658 8.658 0 0 0 4.549-2.363c.162-.16.315-.33.459-.499.441-.517.486-1.24.153-1.792a.625.625 0 0 0 .135-.17c.595-1.105.901-2.345.901-3.602zm-36.091 7.66a1.723 1.723 0 0 1-1.739-1.713c0-.945.775-1.712 1.739-1.712.946 0 1.73.767 1.73 1.712 0 .946-.784 1.712-1.73 1.712z"></path></svg></span> <!----></span></span> <span class="kib-typography-title2 account-pethealth-links__link-label">
          Connect with a Vet
        </span></a></li> <li><a href="/app/account/clinics" class="cw-card cw-card--action account-pethealth-links__link"><span class="account-pethealth-links__icon-wrapper"><span class="cw-icon--large"><span role="presentation" class="cw-icon__image"><svg viewBox="0 0 70 70" xmlns="http://www.w3.org/2000/svg" color="#1C49C2"><path d="M55.903 60.267v-31.22l2.228 1.329 3.368-6.017L35 8 8.501 24.349l3.368 6.027 2.228-1.329v31.22H8V62h54v-1.733h-6.097zm-40.058 0V28.006L35 16.6l19.155 11.416v32.251h-38.31z"></path><path d="M47 31v25H22V31h25zm-9.168 5h-6.664v4.17H27v6.67h4.168V51h6.664v-4.17H42v-6.67h-4.168V36z"></path></svg></span> <!----></span></span> <span class="kib-typography-title2 account-pethealth-links__link-label">
          My Vets
        </span></a></li></ul></section></div>
                    </div>
				</div>
				<div class="autoship_bottom">
					<p>
						You don't have any Autoship orders set up yet.
						<br>
						To start an Autoship order, select the Autoship option on eligible items when you're shopping and choose your frequency.
						<br>
						You can also choose to Autoship items from your cart or checkout.
						<br>
						It's that easy!
					</p>
					<a href="main.do">Start Shopping!</a>
					<div>
						<img src="../images/account/autoship.jpg">
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="footer/footerMain.jsp" %>
</body>
</html>