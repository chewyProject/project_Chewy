$(".shop_listbtn").on("click", function productlist() {
	var btnvalue = $(this).val();
	
	location.href = "shop.do?bno=" + btnvalue;
});

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

$("button.shop_listbtn").hover(function() {
	$(this).css("background-color", "#fff");
	
	var ct = $(this).val();
	
	var brandhref = "popularBrand.do?ct=" + ct;

	$("#popularDog").attr("href", brandhref);
	
}, function() {
	$(this).css("background-color","#f9f9f9");
});

$(".shop_listbtn").mouseenter(function() {
	
	var value = $(this).val();
	
	$.ajax({
		url: 'http://localhost:8080/brandList.do',
		type: 'POST',
		data: {"ct": value},
		dataType: 'json',
		success: function(data) {
			if( (value >= 1 && value <4) || (value == 10)) {
				
				$(".center_detail_center").css("visibility", "visible");
				$(".center_detail_center").css("display", "block");
				$(".center_detail_right").css("visibility", "visible");
				$(".farm").css("display", "none");
				$(".smallpet").css("display", "block");
				$(".reptile").css("display", "block");
				$(".horse").css("display", "block");
				
				if(value == 10) {
					$(".center_detail_left h2 a").text("personalized gifts");
					$(".center_detail_center h2 a").text("home goods");
					$(".center_detail_right h2 a").text("explore more");
					$(".petP").css("display", "none");
				} else {
					$(".center_detail_left h2 a").text("food");
					$(".center_detail_right h2 a").text("supplies");
					$(".petP").css("display", "block");
				}
				
				if(value == 1) {
					$(".center_detail_center h2 a").text("treats");
				} else if (value == 2) {
					$(".center_detail_center h2 a").text("Litter & Accessories");
				} else if (value == 3) {
					$(".center_detail_center h2 a").text("water care");
				}
			
				for(var count=0; count<data.food.length; count++) {
				
					var sctNo = '#?b=' + data.food[count].bct_no + '&m=' + data.food[count].mct_no + '&s=' + data.food[count].sct_no;
					
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).text(data.food[count].sct_name);
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).attr("href", sctNo);
					
				}
				
				for(var count=0; count<data.treats.length; count++) {
					
					var sctNo = '#?b=' + data.treats[count].bct_no + '&m=' + data.treats[count].mct_no + '&s=' + data.treats[count].sct_no;
					
					$(".treatsUl:nth-child(n) .treatsLi:nth-child(n) .treats" + count).text(data.treats[count].sct_name);
					$(".treatsUl:nth-child(n) .treatsLi:nth-child(n) .treats" + count).attr("href", sctNo);
				}
				
				for(var count=0; count<data.supplies.length; count++) {
					
					var mctNo = '#?b=' + data.supplies[count].bct_no + '&m=' + data.supplies[count].mct_no;
					
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).text(data.supplies[count].mct_name);
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).attr("href", mctNo);
				}
				
			} else if(value == 4 || value == 6) {
				
				if(value ==4) {
					$(".center_detail_left h2 a").text("shop by bird");
				} else {
					$(".center_detail_left h2 a").text("shop by reptile");
					$(".reptile").css("display", "none");
				}
				
				$(".center_detail_right h2 a").text("supplies");
				$(".center_detail_center").css("display", "none");
				$(".center_detail_right").css("visibility", "visible");
				$(".horse").css("display", "block");
				
				
				console.log(data);
				
				for(var count=0; count<data.shopall.length; count++) {
				
					var sctNo = '#?b=' + data.shopall[count].bct_no + '&m=' + data.shopall[count].mct_no + '&s=' + data.shopall[count].sct_no;
					
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).text(data.shopall[count].sct_name);
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).attr("href", sctNo);
					
				}
				
				for(var count=0; count<data.supplies.length; count++) {
					
					var mctNo = '#?b=' + data.supplies[count].bct_no + '&m=' + data.supplies[count].mct_no;
					
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).text(data.supplies[count].mct_name);
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).attr("href", mctNo);
				}
			
			} else if (value == 5) {
				
				$(".center_detail_left h2 a").text("shop by small pet");
				$(".center_detail_center h2 a").text("food");
				$(".center_detail_right h2 a").text("supplies");
				$(".center_detail_center").css("visibility", "visible");
				$(".center_detail_center").css("display", "block");
				$(".center_detail_right").css("visibility", "visible");
				$(".farm").css("display", "none");
				$(".smallpet").css("display", "none");
				$(".reptile").css("display", "block");
				$(".horse").css("display", "block");
				
				for(var count=0; count<data.first.length; count++) {
				
					var sctNo = '#?b=' + data.first[count].bct_no + '&m=' + data.first[count].mct_no + '&s=' + data.first[count].sct_no;
					
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).text(data.first[count].sct_name);
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).attr("href", sctNo);
					
				}
				
				for(var count=0; count<data.second.length; count++) {
					
					var sctNo = '#?b=' + data.second[count].bct_no + '&m=' + data.second[count].mct_no + '&s=' + data.second[count].sct_no;
					
					$(".treatsUl:nth-child(n) .treatsLi:nth-child(n) .treats" + count).text(data.second[count].sct_name);
					$(".treatsUl:nth-child(n) .treatsLi:nth-child(n) .treats" + count).attr("href", sctNo);
				}
				
				for(var count=0; count<data.supplies.length; count++) {
					
					var mctNo = '#?b=' + data.supplies[count].bct_no + '&m=' + data.supplies[count].mct_no;
					
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).text(data.supplies[count].mct_name);
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).attr("href", mctNo);
				}
				
			} else if (value == 7 || value == 9) {
				
				$(".center_detail_center").css("visibility", "hidden");
				$(".center_detail_right").css("visibility", "hidden");
				$(".horse").css("display", "block");
				
				if(value == 7) {
					$(".center_detail_left h2 a").text("shop by farm animal");
					$(".farm").css("display", "block");
				} else if(value == 9) {
					$(".center_detail_left h2 a").text("shop all");
					$(".farm").css("display", "none");
				}
				
				for(var count=0; count<data.shopall.length; count++) {
				
					var mctNo = '#?b=' + data.shopall[count].bct_no + '&m=' + data.shopall[count].mct_no;
				
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).text(data.shopall[count].mct_name);
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).attr("href", mctNo);
				}
			} else if (value == 8) {
				
				$(".center_detail_left h2 a").text("feed & treats");
				$(".center_detail_center h2 a").text("health & wellness");
				$(".center_detail_right h2 a").text("supplies");
				$(".center_detail_center").css("visibility", "visible");
				$(".center_detail_center").css("display", "block");
				$(".center_detail_right").css("visibility", "visible");
				$(".horse").css("display", "none");
				$(".smallpet").css("display", "block");
				$(".petP").css("display", "block");
				$(".reptile").css("display", "none");
				
				for(var count=0; count<data.first.length; count++) {
				
					var sctNo = '#?b=' + data.first[count].bct_no + '&m=' + data.first[count].mct_no + '&s=' + data.first[count].sct_no;
					
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).text(data.first[count].sct_name);
					$(".foodUl:nth-child(n) .foodLi:nth-child(n) .food" + count).attr("href", sctNo);
					
				}
				
				for(var count=0; count<data.second.length; count++) {
					
					var sctNo = '#?b=' + data.second[count].bct_no + '&m=' + data.second[count].mct_no + '&s=' + data.second[count].sct_no;
					
					$(".treatsUl:nth-child(n) .treatsLi:nth-child(n) .treats" + count).text(data.second[count].sct_name);
					$(".treatsUl:nth-child(n) .treatsLi:nth-child(n) .treats" + count).attr("href", sctNo);
				}
				
				for(var count=0; count<data.supplies.length; count++) {
					
					var mctNo = '#?b=' + data.supplies[count].bct_no + '&m=' + data.supplies[count].mct_no;
					
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).text(data.supplies[count].mct_name);
					$(".suppliesUl:nth-child(n) .suppliesLi:nth-child(n) .supplies" + count).attr("href", mctNo);
				}
				
			}
				
			for(var count=0; count<6; count++) {
			
				$(".brand_img_wrap:nth-child(n) .brand_img" + count + " img").attr("src", data.brand[count].b_logo);
			}
			
			$(".shop_down_right .shop_down_ad").attr("src", data.ad);
		},
		error: function (error) {
			alert("error");
		}
	});
	
});