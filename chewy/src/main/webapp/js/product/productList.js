	// 이전 버튼 이벤트
	// 5개의 인자값을 가지고 이동 testList.do
	// 무조건 이전페이지 범위의 가장 앞 페이지로 이동
	function fn_prev(page, range, rangeSize, listSize, searchType, keyword) {
		var page = ((range -2) * rangeSize) + 1;		
		var range = range - 1;
		
		var url = "/chewy/productList.do";
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&listSize=" + listSize;
			url += "&searchType=" + searchType;
			url += "&keyword=" + keyword;
			location.href = url;

	}

	// 페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, listSize, searchType, keyword) {
		
		var url = "/chewy/productList.do";
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&listSize=" + listSize;
			url += "&searchType=" + searchType;
			url += "&keyword=" + keyword;
			location.href = url;
	}

	// 다음 버튼 이벤트
	// 다음 페이지 범위의 가장 앞 페이지로 이동
	function fn_next(page, range, rangeSize, listSize, searchType, keyword) {
		
		var page = parseInt((range * rangeSize)) + 1
		var range = parseInt(range) + 1;
		
		
		var url = "/chewy/productList.do";
			url += "?page=" + page;
			url += "&range=" + range;
			url += "&listSize=" + listSize;
			url += "&searchType=" + searchType;
			url += "&keyword=" + keyword;
			location.href = url;
			
	}
	
	// 검색 이벤트
	$(document).on('click', '#btnSearch', function(e) {
		e.preventDefault();
		var url = "/chewy/productList.do";
		url += "?searchType=" + $('#searchType').val();
		url += "&keyword=" + $('#keyword').val();
		
		location.href = url;
		
		console.log(url);
	});
		
	/*한페이지당 게시물 */
	function page(pno){
	  var startPage = pno;
	  var listSize = $("#listSize option:selected").val();
		
	  if(listSize == 10){
		  var url="/chewy/productList.do?startPage="+startPage+"&listSize="+listSize
	  }else if(listSize == 15){
		  var url ="/chewy/productList.do?startPage="+startPage+"&listSize="+listSize
	  }else if(listSize == 20){
	      var url="/chewy/productList.do?startPage="+startPage+"&listSize="+listSize
	 
	  }
	  location.href = url;
	}	
		