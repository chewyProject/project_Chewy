<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/mypage/profile.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
                            <div class="cw-account-wrapper">
            <div id="breadcrumbs">
    <a href="/app/account">Account</a> ›
    <span>Profile</span>
</div>

<div class="account">
    <div class="account__profile">
        <h1>Profile</h1>
        
<div>
            <ul class="accordion profile-accordion cw-card-list">
                <li class="accordion-item " data-autoheight="true">
                    <div class="accordion-trigger js-tracked-profile" data-ga-action="clicked edit" data-ga-label="name">
                        <div class="profile-field">
                            <h2 class="profile-field__name">Name</h2>
                            <div class="profile-field__value" data-hj-suppress="">sanghoeefef</div>
                            <div class="profile-field__action">
                                <button class="action__edit" aria-label="edit-full-name">Edit</button>
                                <span class="action__icon cw-btn cw-btn--close"></span>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-content" aria-hidden="true">
                        <div class="form-wrapper">
                            <form method="post" action="/app/account/profile" id="account-profile-form--name" onsubmit="disableUsernameSubmitButton()" novalidate="novalidate"><div class="field field--content">
                                    <label class="input-label" for="fullName">Full Name</label>
                                    <div class="field__wrapper" data-hj-suppress="">
                                        <input size="40" maxlength="35" name="fullName" disabled="disabled" id="fullName" type="text" class="field__input field__input--name" value="sanghoeefef"></div>
                                </div>
                                <div class="field">
                                    <label class="input-label" for="currentPassword--name">Current Password</label>
                                    <div class="field__wrapper" data-hj-suppress="">
                                        <input size="25" maxlength="35" name="currentPassword" disabled="disabled" id="currentPassword--name" type="password" class="field__input no-label"></div>
                                </div>
                                <div class="buttons">
                                    <input name="updateFullName" disabled="disabled" id="account-profile-form--name-submit" type="submit" data-ga-action="clicked save" class="cw-btn cw-btn--action js-tracked-profile" data-ga-label="edit name" value="Save"><input name="cancel" disabled="disabled" type="button" data-ga-action="clicked cancel" class="cw-btn cw-btn--default accordion-trigger js-tracked-profile" data-ga-label="edit name" value="Cancel"></div>
                            <div style="display: none;"><input type="hidden" name="_sourcePage" value="hImxokJU-sLy0e7XXI_vuEWVwUIeWn_vUYEi4UfUGy_FqMR_clEpFOxz-mxMUZTAJvddHUJaFXNvXxsz-q3NoKuavrUyUWmWExqwC3r3GOwMsJg8zY860g=="><input type="hidden" name="__fp" value="79MQShDZwnyk2XE_gPOBsI7oSpCTDAb-El9jj7jFXlGnDZpvrubRm7droZqAWIUB"></div></form><script type="text/javascript">
                                function disableUsernameSubmitButton() {
                                    var submitButton = document.getElementById('account-profile-form--name-submit');
                                    setTimeout(function() {
                                        submitButton.setAttribute('disabled', true);
                                    });
                                    return true;
                                }
                                window.addEventListener('pageshow', function(event) {
                                    if (event.persisted) {
                                        document.getElementById('account-profile-form--name-submit').removeAttribute('disabled');
                                    }
                                });
                            </script>
                        </div>
                    </div>
                </li>
                <li class="accordion-item " data-autoheight="true">
                    <div class="accordion-trigger js-tracked-profile" data-ga-action="clicked edit" data-ga-label="email">
                        <div class="profile-field">
                            <h2 class="profile-field__name">Email</h2>
                            <div class="profile-field__value" data-hj-suppress="">siren0416@gmail.com</div>
                            <div class="profile-field__action">
                                <button class="action__edit" aria-label="edit-email">Edit</button>
                                <span class="action__icon cw-btn cw-btn--close"></span>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-content" aria-hidden="true">
                        <div class="form-wrapper">
                            <form method="post" action="/app/account/profile" id="account-profile-form--email" novalidate="novalidate"><div class="field field--content">
                                    <label class="input-label" for="email">Email</label>
                                    <div class="field__wrapper" data-hj-suppress="">
                                        <input size="40" maxlength="50" name="email" disabled="disabled" id="email" type="text" class="field__input field__input--email" value="siren0416@gmail.com"></div>
                                </div>
                                <div class="field">
                                    <label class="input-label" for="currentPassword--email">Current Password</label>
                                    <div class="field__wrapper" data-hj-suppress="">
                                        <input size="25" maxlength="35" name="currentPassword" disabled="disabled" id="currentPassword--email" type="password" class="field__input no-label"></div>
                                </div>
                                <div class="sfw-account-profile"><!----></div>
                                <div class="buttons">
                                    <input name="updateEmail" disabled="disabled" type="submit" data-ga-action="clicked save" class="cw-btn cw-btn--action js-tracked-profile" data-ga-label="edit email" value="Save"><input name="cancel" disabled="disabled" type="button" data-ga-action="clicked cancel" class="cw-btn cw-btn--default accordion-trigger js-tracked-profile" data-ga-label="edit email" value="Cancel"></div>
                            <div style="display: none;"><input type="hidden" name="_sourcePage" value="dCJmGtl58vl1G_OSw1-RvvFowdARdl2fRG8ZB6P8WTwrdlWO284oIlZTUhPLj-nQaZ_EHIu7N_-kU71ocfKuuw2ZtGFOrtL_cGhrHUx8_ehfnDPF3bzXqg=="><input type="hidden" name="__fp" value="2AUR5_GdJfh2XaSm3zIXz7H7WHPwFcDA7d-oZAb80dd5due0byASiyzJeXot03-_"></div></form></div>
                    </div>
                </li>
                <li class="accordion-item " data-autoheight="true">
                    <div class="accordion-trigger js-tracked-profile" data-ga-action="clicked edit" data-ga-label="password">
                        <div class="profile-field">
                            <h2 class="profile-field__name">Password</h2>
                            <div class="profile-field__value">
                                
                                    *******
                                </div>
                            <div class="profile-field__action">
                                <button class="action__edit" aria-label="edit-password">Edit</button>
                                <span class="action__icon cw-btn cw-btn--close"></span>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-content" aria-hidden="true">
                        <div class="form-wrapper">
                            <form method="post" action="/app/account/profile" id="account-profile-form--password" onsubmit="disablePasswordSubmitButton()" novalidate="novalidate"><div class="field">
                                    <label class="input-label" for="currentPassword--password">Current Password</label>
                                    <div class="field__wrapper" data-hj-suppress="">
                                        <input size="40" maxlength="35" name="currentPassword" disabled="disabled" id="currentPassword--password" type="password" class="field__input"></div>
                                </div>
                                <div class="divider"></div>
                                <div class="field">
                                    <label class="input-label" for="password">New Password</label>
                                    <div class="field__wrapper" data-hj-suppress="">
                                        <input size="25" maxlength="35" name="password" disabled="disabled" id="password" type="password" class="field__input field__input--pw"></div>
                                </div>
                                <div class="field">
                                    <label class="input-label" for="passwordVerify">Re-enter New Password</label>
                                    <div class="field__wrapper" data-hj-suppress="">
                                        <input size="25" maxlength="35" name="passwordVerify" disabled="disabled" id="passwordVerify" type="password" class="field__input"></div>
                                </div>

                                <div class="buttons">
                                    <input name="updatePassword" disabled="disabled" id="account-profile-form--password-submit" type="submit" data-ga-action="clicked save" class="cw-btn cw-btn--action js-tracked-profile" data-ga-label="edit password" value="Save"><input name="cancel" disabled="disabled" type="button" data-ga-action="clicked cancel" class="cw-btn cw-btn--default accordion-trigger js-tracked-profile" data-ga-label="edit password" value="Cancel"></div>
                            <div style="display: none;"><input type="hidden" name="_sourcePage" value="tEfyMmBecnmL_v08S72ukoSIVsuWI2rcxwruMy9E17A4zwF8q-bl-nXgea--tUo_2GMKH_za5v3A5y_RfpTp6ZMcgIRJ03OSFLK0FdbrB_NawuzH3mJgLA=="><input type="hidden" name="__fp" value="bAn4o7HUDoUiYBwcDJBS1sCcjbEw6VRJFTCae3740otxvwCY3zLT-cdBofMps_xT"></div></form><script type="text/javascript">
                                function disablePasswordSubmitButton() {
                                    var submitButton = document.getElementById('account-profile-form--password-submit');
                                    setTimeout(function() {
                                        submitButton.setAttribute('disabled', true);
                                    });
                                    return true;
                                }
                                window.addEventListener('pageshow', function(event) {
                                    if (event.persisted) {
                                        document.getElementById('account-profile-form--password-submit').removeAttribute('disabled');
                                    }
                                });
                            </script>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>
    <section class="account__content">
                                <div class="account__content__inner">
                                </div>
                            </section>
                        </div>

<!-- 	<h1>프로필 업데이트 / 수정</h1> -->
<!-- 	<div> -->
<!-- 		<form action="nameupdate.do" method="POST"> -->
<%-- 			<input name="m_no" type="hidden" value="${info[0].m_no }"> --%>
<%-- 			<p>이름 : ${info[0].m_name }</p> --%>
<!-- 			<input name="m_name" type="text" placeholder="new Full name"> -->
<!-- 			<input name="m_password" type="text" placeholder="password">			 -->
<!-- 			<input type="submit" value="수정"> -->
<!-- 		</form> -->
<!-- 	</div> -->
<!-- 	<div> -->
<!-- 		<form action="emailupdate.do" method="POST"> -->
<%-- 			<input name="m_no" type="hidden" value="${info[0].m_no }"> --%>
<%-- 			<p>이메일 : ${info[0].m_email }</p> --%>
<!-- 			<input name="m_email" type="text" placeholder="new email"> -->
<!-- 			<input name="m_password" type="text" placeholder="password">	 -->
<!-- 			<input type="submit" value="수정"> -->
<!-- 		</form> -->
<!-- 	</div> -->
<!-- 		<div> -->
<!-- 		<form action="pwupdate.do" method="POST"> -->
<%-- <%-- 			<input name="m_no" type="hidden" value="${info[0].m_no }"> --%>
<%-- <%-- 			<input id="pw1" name="m_password" type="hidden" value="${info[0].m_password }"> --%>
			
<!-- <!-- 			<input id="pw2" name="m_pw" type="text" placeholder="기존 비밀번호"> -->
<!-- <!-- 			<input id="newpw" name="m_newpw" type="text" placeholder="새 비밀번호"> -->
<!-- <!-- 			<input id="conpw" name="m_conpw" type="text" placeholder="비밀번호 확인"> -->
<!-- <!-- 			<input type="button" onclick="pwcon()" value="수정"> -->

<!-- 			<input id="pw2" name="m_password" type="text" placeholder="기존 비밀번호"> -->
<!--  			<input id="newpw" name="m_newpw" type="text" placeholder="새 비밀번호"> -->
<!--  			<input id="conpw" name="m_confirmpw" type="text" placeholder="비밀번호 확인"> -->
<!--  			<input type="submit" value="수정"> -->
<!-- 		</form> -->
<!-- 	</div> -->
<%-- 	<p>이메일 : ${info[0].m_email }</p> --%>
<%-- 	<p>패스워드 : ${info[0].m_password }</p> --%>

<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">
	

</script>

















</body>
</html>