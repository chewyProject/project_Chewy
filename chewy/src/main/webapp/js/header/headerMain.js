$(function() {
	
	var value = document.getElementById('value').value;
	
	console.log(value);
	
	if(value == 1) {
		$(".account_signin").css("display", "none");
		$(".account_drop_wrap").css("grid-template-rows", "1fr");
		$(".logout_wrap").css("display", "block");
	} else {
		$(".account_signin").css("display", "grid");
	}
	
});

function popular() {
	
	var ct = 1;
	
	location.href = "popularBrand.do?ct=" + ct;
	
};