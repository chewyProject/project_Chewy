function bCateNext() {
		var bno = document.getElementById('bCategory');
		var mno = document.getElementById('mCategory');
		var sno = document.getElementById('sCategory');
		
		var bnoOptions = bno.options[bno.selectedIndex].text;  // 옵션 text값 ex) dog, cat 등

		console.log("bnoOptions : " , bnoOptions);
		
		fetch('http://localhost:8080/chewy/mCateList.do?name=' + bnoOptions, {
		    method: 'get',
// 		    body: JSON.stringify({
// 		        name: bnoOptions
// 		    })
		  })
		.then((response) => response.json())
  		.then((data) => {  console.log("data.cate : ", data.cate);
  								$('#mCategory').html("<option value='' selected='selected'" + ">중분류</option>");
  						var cate = data.cate;		
  						$.each(cate, function(index,value2) {
	  							$('#mCategory').append("<option value='"+value2.mct_no +"'>" + value2.mct_name + "</option>");
  								})
  						})
	}
	
	
	function mCateNext() {
		var bno = document.getElementById('bCategory');
		var mno = document.getElementById('mCategory');
		var sno = document.getElementById('sCategory');
		
		var bnoOptions = bno.options[bno.selectedIndex].text;
		var mnoOptions = mno.options[mno.selectedIndex].text;
		
		console.log("bnoOptions222222 : " , bnoOptions);
		console.log("mnoOptions : " , mnoOptions);
		
		
		fetch('http://localhost:8080/chewy/sCateList.do?name=' + bnoOptions + '&mctName=' + encodeURIComponent(mnoOptions), {
		    method: 'get',
// 		    body: JSON.stringify({
// 		       name: bnoOptions
// 		    })
		  })
		.then((response) => response.json())
  		.then((data) => { 
  			console.log("data.cate : ", data.cate);
  								$('#sCategory').html("<option value='' selected='selected'" + ">소분류</option>");
  						var cate = data.cate;		
  						$.each(cate, function(index,value2) {
	  							$('#sCategory').append("<option value='"+value2.sct_no +"'>" + value2.sct_name + "</option>");
  								})
  						})
		
	}
	
	function success() {
		var sno = document.getElementById('sCategory');
		var snoOptions = sno.options[sno.selectedIndex].text;
		console.log("snoOptions : " ,snoOptions);
		
		if (snoOptions == '소분류') {
			alert("값이 비었습니다. 소분류 값을 지정해주세요");
			return false;
		}
		document.getElementById('frm').submit();
		
		
	}
	
	
  		
//   		console.log(data);
		
// 		fetch('https://api.google.com/user', {
// 		    method: 'post',
// 		    body: JSON.stringify({
// 		        name: "hyosikkim",
// 		        batch: 1
// 		    })
// 		  })
		
// 		fetch("https://jsonplaceholder.typicode.com/posts/1%22)
//   		.then((response) => response.json())
//   		.then((data) => console.log(data));
		
// 		console.log("bno.options[bno.selectedIndex].text : ", bno.options[bno.selectedIndex].text);
// 		location.href ="insertProduct.do?ct="+bno;
	
	
	
	
//	//컨트롤러에서 데이터 받기
// 	let bCateList = JSON.parse('${bcate}'); // 쌍다옴표 넣으면 에러생김
// 	let mCateList = JSON.parse('${mcate}');
// 	let sCateList = JSON.parse('${scate}');

// 	console.log("bCateList : " , bCateList);
// 	console.log("mCateList : " , mCateList);
// 	console.log("sCateList : " , sCateList);

// 	console.log("bCateJsonData : " , bCateJsonData);
// 	console.log("mCateJsonData : " , mCateJsonData);
// 	console.log("sCateJsonData : " , sCateJsonData);
	
// 	let bCateArray =new Array();
// 	let mCateArray = new Array();
// 	let sCateArray = new Array();
// 	let bCateObj = new Object();
// 	let mCateObj = new Object();
// 	let sCateObj = new Object();
	
// 	let bCateSelect = $(".bCategory");
// 	let mCateSelect = $(".mCategory");
// 	let sCateSelect = $(".sCategory");
	
// 	for(let i=0; i< bCateList.length; i++) {
// 		if(bCateList[i].bct_no === 1) {
// 			bCateObj = new Object();
			
// 			bCateObj.bct_name = bCateList[i].bct_name;
			
// 			bCateArray.push(bCateObj);
// 		}
// 	}
	
	
	
// 	function makeCateArry(obj,array,cateList,no) {
// 		for (let i=0; i< bCateList.length; i++) {
// 			if(bCateList[i].bct_no = bct_no) {
// 				obj = new Object();
				
// 				obj.bct_name = bCateList[i].bct_name;
				
// 				array.push(obj);
// 			}			
// 		}
// 	}
	
	
	
	
// 	$(document).ready(function(){
// 		console.log(bCateArray);
// 	});
	
		
// 	function makeCateArray(obj, array, CateList, bct_no) {
// 		if(bCateList[i].bct_no === 1) {
// 			obj = new Object();
			
// 			obj.bct_no = bCatList[i].bct_no;
// 			obj.bct_name = bCatList[i].bct_no;
			
// 			array.push(obj);
// 		}
// 	}
	
// 	makeCateArray(bCateObj,bCateArray,bCateList, bct_no);
	
// 	$(document).ready(function(){
// 		console.log(bCateArray);
// 	});
	
	
	
	
// 	$(".bCategory").on("change", function(){
// 		let bSelectVal =$(this).find("option:selected").val();
// 		console.log("bSelectVal : " + bSelectVal);
		
// 		$(".mCategory").children().remove();
// 		$(".mCategory").append("<option value='none'>중분류</option>");
		
// 		for (let i=0; i < mCateJsonData.length; i++) {
			
// 			if(bSelectVal == mCateJsonData[i] )
			
// 			console.log("mCateJsonData[i].cat : " ,  mCateJsonData[i].cat);
// 			$('.mCategory').append("<option value='" + mCateJsonData[i].mct_no+"'>" + mCateJsonData[i].mct_name + "</option>");
// 		}
		
// 	});
	
	

		// // ------- 파일 업로드 --------
		
		
// 		$("input[type='file']").on("change", function(e) {
			
// 		 	// 이미지 존재시 삭제
// 		 	if($(".imgDeleteBtn").length > 0) {
// 		 		deleteFile();
// 		 	}
			
		 	
// 		 	alert ("동작");
			
// 		 	let formData = new FormData(); // FormData 객체에 데이터를 추가하는 방법은 FormData.append(key, value) 메서드를 사용
// 		 	// 파라미터 key의 경우 추가해줄 데이터의 변수를 작성한다고 생각하면 된다.
// 		 	// <input> name 과 Controller의 url 매핑메서드의 매개변수 이름과 동이하게 해주었듯이, key와 추후 추가할 url 매핑 메서드의 매개변수명 동일해야 한다,
// 		 	let fileInput = $('input[name="uploadFile"]');
// 		 	let fileList = fileInput[0].files;
// 		 	let fileObj = fileList[0];
		 	
// 		 	if (!fileCheck(fileObj.name, fileObj.size)) {
// 		 		return false;
// 		 	}
// // 		 	alert("통과");
			
// 		 	console.log("fileList : " , fileList) // [object FileList]
// 		 	console.log("fileObj : " , fileObj);
// 		 	console.log("fileName : " + fileObj.name);
// 		 	console.log("fileSize : " + fileObj.size);
// 		 	console.log("fileType(MimeType) : " + fileObj.type);
			
// 		 	formData.append("uploadFile", fileObj); // 파일이 한개일 때
// 		 	console.log("formData : " , formData);
			
// // 			for (let i=0; i<fileList.length; i++) {
// // 				formData.append("uploadFile", fileList[i]); // 파일이 여러개 일떄	
// // 			}
		
			
// 		 	$.ajax({
// 		 		url: "uploadAjaxAction.do", // 서버로 보낼 url
// 		 		processData : false, // processData랑 contentType false처리해야만 서버 전송
// 		 		contentType : false,
// 		 		data : formData,
// 		 		type : 'post',
// 		 		dataType : 'json',
// 		 		success : function(result) {
// 		 			console.log("result : " , result);
// 		 			console.log("result : " , result.result.body);
// 		 			showUploadImage(result.result.body);
// // 		 			console.log("showUploadImage(result) : " , showUploadImage(result));
// 		 			alert("성공");
// 		 		},
// 		 		error : function(request,status,error) {
// 		 			console.log("이미지 파일이 아닙니다");
// 		 			console.log(" code : " + request.status + " message : " + request.responseText + " error : " + error);
// 	 	 			alert("code : " + request.status + " message : " + request.responseText + " error " + error);
// 		 		}
				
// 		 	});
			
// 		});
			
		
// 		let regex = new RegExp("(.*?)\.(jpg|png)$");
// 		let maxSize = 1048576; // 1MB
		
// 		function fileCheck(fileName, fileSize) {
// 			if(fileSize >= maxSize){
// 				alert("파일 사이즈 초과");
// 				return false;
// 			}
				  
// 			if(!regex.test(fileName)){
// 				alert("해당 종류의 파일은 업로드할 수 없습니다.");
// 				return false;
// 			}
			
// 			return true;		
// 		}	
		
// 		 	//이미지 출력
// 		 	function showUploadImage(uploadResultArr) {
		 		
// 		 		// 전달받은 데이터 검증
// 		 		if (!uploadResultArr || uploadResultArr.length == 0) {
// 		 			return;
// 		 		}
// 		 		//let uploadResult = $("#uploadResult");
// 		 		let uploadResult = document.getElementById("uploadResult");
// 		 		console.log("uploadResult : " , uploadResult);
// 		 		console.log("uploadResultArr : " , uploadResultArr);
// // 		 		console.log("uploadResultArr.p_img : " , uploadResultArr.p_img);
// 		 		let obj = uploadResultArr[0]; // 배열의 첫번재값 
		 		
// 		 		console.log("obj : " , obj);
// 		 		console.log("obj.p_img : " , obj.p_img);
		 		
// 		 		let str = "";

// 		 		// 데이터베이스 저장시 오리지널 경로로 저장
// 		 		let OriFileCallPath = obj.p_img;
// 		 		console.log("OriFileCallPath: "  + OriFileCallPath);

// 		 		let fileCallPath = encodeURIComponent(obj.p_img);
// // 		 		console.log("fileCallPath : " + fileCallPath);
				
// 		 		str += "<div id = result_card>";
// 		 		str += "<img src='display.do?fileName=" + fileCallPath +"'>";
// 		 		str += "<div class='imgDeleteBtn' data-file='"+ fileCallPath +"'>x</div>";
// 		 		str += "</div>";
// 		 		str += "<input type='hidden' name='p_img' value='"+OriFileCallPath+"'>";
				
// 		 		uploadResult.innerHTML = str;
				
// 		 		console.log("fileCallPath : " , fileCallPath);
// 		 	}

			
// 		 	function deleteFile() {
// 		 	let targetFile = $(".imgDeleteBtn").data("file");
// 		 	let targetDiv = $("#result_card");
			
// 		 	$.ajax({
// 		 		url: "deleteFile.do",
// 		 		data : {fileName : targetFile},
// 		 		dataType : 'text',
// 	 			type : 'POST',
// 		 		success : function(success) {
// 		 			console.log("success: " + success);
// 		 			console.log("success: " + success.body);
// 		 			alert("삭제성공");
					
// 		 			// x버튼 클릭시 imgDeleteBtn 부분을 없애고 파일 업로드 input 부분을 초기화한다.
// 		 			targetDiv.remove();
// 		 			$("input[type='file']").val("");
// 		 		},
// 		 		error : function(fail) {
// 		 			console.log(fail);
// 		 			alert("파일을 삭제하지 못했습니다.");
// 		 		}
				
// 		 		})
			
// 		 	}


// 		 	// 이미지 삭제 버츤 동작
// 		 	$("#uploadResult").on("click", ".imgDeleteBtn", function(e) {
// 		 		deleteFile();
			
// 		 	});
		

