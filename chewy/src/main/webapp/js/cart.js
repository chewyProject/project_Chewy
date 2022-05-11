$(function() {
	
	var value = document.getElementById('size').value;
	
	console.log(value);
	
	if(value > 0) {
		$(".container_wrap").css("display", "none");
		$(".cart_container").css("align-items", "baseline");
	} else {
		$(".account_signin").css("display", "block");
		$(".cartlist").css("display", "none");
	}
	
});