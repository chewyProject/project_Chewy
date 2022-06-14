<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/account/mypetInsert.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="add-a-pet__page-header">
		<header class="add-a-pet__page-header__content">
			<a href="/">
			<svg class="add-a-pet__page-header__chewy-logo" role="img" aria-label="Chewy Home" focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 106 32">
				<title>Chewy</title>
					<path fill="currentColor" d="M54.24 15.5c-.66 1.37-.93 2.77-3.22 3.7a4.03 4.03 0 01-4.96-1.67s7.41-3.42 9.6-4.74c.65-.4 1.16-.86 1.5-1.37.26.68.59 1.48.94 2.35-1.44-.55-3.06.03-3.86 1.73m-8-6.59c3.07-1.45 4.77 1.53 4.77 1.53L44.3 13.6s-1.1-3.25 1.96-4.7m57.3-2.55a3.34 3.34 0 00-4.31 2.24L96 18.67h-.08L93.48 8.36a3.35 3.35 0 00-4.12-2.59c-.78.2-1.41.61-1.86 1.15a3.26 3.26 0 00-2.88-2.81c-1.97-.26-3.52 1.14-3.76 3l-1.34 10.38h-.08L76.7 9.86c-1.13-3.1-2.04-4.72-4.83-4.4-2.79.31-3.34 2.1-3.76 5.38l-1.05 8.07-.08.01-3.53-9.83A3.3 3.3 0 0059.12 7c-.8.3-1.4.82-1.78 1.47-1.4-3.65-6.8-7.16-13.45-3.52-3.46 1.9-5.07 4.5-5.6 7.13A6.61 6.61 0 0032.7 8c-3.57-.32-5.58 1.78-5.58 1.78h-.07l.52-5.97A3.4 3.4 0 0024.42 0a3.4 3.4 0 00-3.75 3.18l-1.24 14.2a2.62 2.62 0 00-2.63-.77c-2.2.53-2.75 3.19-5.08 3.68-2.65.55-4.32-1.55-4.83-4.08-.42-2.07-.06-5.14 2.88-5.59 2.58-.4 3.18 2.35 6.05 1.77 1.7-.34 2.52-1.7 2.12-3.45-.62-2.64-4.73-4.58-9.24-3.63-5.81 1.21-9.74 6.5-8.46 13.12 1.32 6.84 7.66 9.06 12.68 7.94 3.1-.7 4.98-2.13 6.05-3.61l-.07.77a3.4 3.4 0 003.13 3.8 3.4 3.4 0 003.75-3.18l.71-8.11c.2-2.27 1.7-3.1 3-2.98 1.32.12 2.63 1.37 2.46 3.48l-.7 8.1a3.4 3.4 0 003.13 3.8 3.4 3.4 0 003.75-3.17l.62-7.17c.14.41.3.8.46 1.17 3.06 6.72 9.32 7.15 14.2 4.84 2.84-1.34 4.5-2.97 5.5-4.47.44-.67.73-1.29.89-1.86.37.84.74 1.67 1.1 2.44 2.35 5.09 3.17 6.35 6.92 6.02 3.73-.52 4.1-2.08 5.1-10.78h.07c2.85 8.25 3.54 9.7 7.29 9.37 3.73-.53 4.26-1.93 5.46-7.43.46-2.12.93-4.62 1.3-6.76l.84 2.73c2 6.58 4.08 10.95 2.83 11.58-1.12.57-1.76-1.41-3.9-1.28-1.49.1-2.8 1.67-2.32 3.62.66 2.69 4.8 5.54 9.54 4.11 4.78-1.44 6.17-5.38 11.68-20.62a3.4 3.4 0 00-2.16-4.43"></path>
				</svg>
			</a>
			<button class="kib-chip-action kib-chip-action--default kib-chip-action--content-spacing">
				<span class="kib-chip-action__icon"><svg class="add-a-pet__page-header__call-svg" role="img" aria-label="Contact Us" focusable="false" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path fill="currentColor" d="M19.52 5.79L18.04 4.3c-.4-.41-1.07-.41-1.48 0l-2.22 2.96c-.34.5-.41 1.07 0 1.48l.9.9a25.56 25.56 0 0 1-5.58 5.52l-.88-.87c-.4-.41-.98-.34-1.48 0l-2.96 2.22c-.5.34-.4 1.07 0 1.48l1.48 1.48c.82.82 1.88.56 2.96 0 0 0 3.27-1.83 6.07-4.63a34.97 34.97 0 0 0 4.67-6.1c.43-1.17.82-2.15 0-2.96"></path></svg></span>
				<span class="kib-chip-action__label">24/7 Help</span>
			</button>
		</header>
	</nav>
	<main class="add-a-pet__navigation-content-area">
	<form method="post" id="petInsert">
	<button value="dog">Dog</button>
	<button value="cat">Cat</button>
	<button value="smallpet">Small Pet</button>
	<button value="Reptile">Reptile</button>
	<button value="Horse">Horse</button>
	<button value="Fish">Fish</button>
	<button value="Farm Animal">Farm Animal</button>
	</form>
		<div class="add-a-pet__navigation-content-container">
			<section class="add-a-pet__progress-header">
				<div class="add-a-pet__progress-header__header">
					<button aria-label="Back" class="add-a-pet__back" type="button">
						<svg class="add-a-pet__back__icon" role="img" aria-label="go back" focusable="false" xmlns="http://www.w3.org/2000/svg" iewBox="0 0 24 24">
							<path fill="currentColor" d="M14.69 6.32c.4.41.4 1.1 0 1.51L10.56 12l4.13 4.17c.4.42.4 1.1 0 1.52-.42.41-1.1.41-1.5 0L8.3 12.75a1.08 1.08 0 010-1.51L13.2 6.3c.4-.4 1.08-.4 1.5.02h-.01z"></path></svg>
					</button>
			<span class="add-a-pet__chewy-logo kib-media-icon kib-media-icon--huge">
				<span class="kib-media-icon__image" role="presentation">
					<svg color="#fff" class="add-a-pet__chewy-logo__image" aria-hidden="true" focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
						<title>Chewy</title>
							<path fill="currentColor" d="M18.8 12.6c-2 .5-2.6 3-4.8 3.4-2.5.5-4-1.4-4.5-3.7-.4-2 0-4.8 2.7-5.2 2.4-.3 3 2.2 5.7 1.7 1.6-.4 2.3-1.6 2-3.2-.6-2.5-4.5-4.2-8.7-3.4a10 10 0 00-8 12.1c1.3 6.3 7.2 8.4 12 7.3 6-1.3 7-5.6 6.7-7a2.6 2.6 0 00-3.1-2"></path></svg>
				</span>
			</span>
					<button aria-label="Exit" class="add-a-pet__close" type="button">
						<svg class="add-a-pet__close__icon" role="img" aria-label="exit form" focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
							<title>Close</title><desc>Close an interactive element.</desc>
								<path fill="currentColor" d="M21.56 2.46c-.6-.6-1.55-.6-2.14 0L12 9.86 4.58 2.44a1.51 1.51 0 10-2.14 2.14L9.86 12l-7.42 7.42a1.51 1.51 0 102.14 2.14L12 14.14l7.42 7.42a1.51 1.51 0 102.14-2.14L14.14 12l7.42-7.42c.57-.57.57-1.54 0-2.12z"></path></svg>
					</button>
				</div>
				<div class="add-a-pet__progress-header__progress-bar">
					<div aria-live="polite"
						class="kib-progress-bar kib-progress-bar--hide-value kib-progress-bar--small kib-progress-bar--accent"
						role="progressbar" aria-valuenow="11" aria-valuemin="0"
						aria-valuemax="100" aria-label="Add your pet workflow">
						<div class="kib-progress-bar__display">
							<div class="kib-progress-bar__progress" role="presentation">
								<div class="kib-progress-bar__indicator"
									style="transform: scaleX(0.11)"></div>
							</div>
						</div>
						<div class="kib-progress-bar__value">11</div>
					</div>
				</div>
			</section>
			<div class="add-a-pet__navigation-component ">
				<section data-options-loaded="true">
					<h1
						class="add-a-pet__heading add-a-pet__heading--center add-a-pet__heading--spaced">First
						things first, what type of pet do you have?</h1>
					<ul class="pet-avatar-layout pet-avatar-layout--large">
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_dog.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_dog.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Dog</span>
							</button></li>
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_cat.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_cat.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Cat</span>
							</button></li>
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_small_pet.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_small_pet.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Small Pet</span>
							</button></li>
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_bird.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_bird.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Bird</span>
							</button></li>
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_reptile.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_reptile.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Reptile</span>
							</button></li>
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_horse.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_horse.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Horse</span>
							</button></li>
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_fish.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_fish.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Fish</span>
							</button></li>
						<li
							class="pet-avatar-layout__column pet-avatar-layout__column--large pet-avatar-layout__tile"><button
								type="button" class="pet-avatar-button" data-testid=""
								data-selectedimage="https://cms-www.chewy.com/images/pet-profile/avatars/default_farm_animal.png"
								aria-pressed="false">
								<img
									src="https://cms-www.chewy.com/images/pet-profile/avatars/default_farm_animal.png"
									alt="pet avatar"
									class="pet-avatar pet-avatar--large pet-avatar-button__image"><span
									class="pet-avatar-button__text">Farm Animal</span>
							</button></li>
					</ul>
				</section>
			</div>
		</div>
	</main>


</body>
</html>