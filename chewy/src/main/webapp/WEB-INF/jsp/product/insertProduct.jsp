<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Product</title>
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<link rel="stylesheet" href="css/product/insertProduct.css" />
</head>
<body>
	<h1>chewy 상품등록</h1>
	
	<div class="container" >
<!-- 		<form action="insertProduct.do" method="post" enctype="multipart/form-data"> -->
		<form action="insertProduct.do" method="post" enctype="multipart/form-data">
				<div class="product_label"> 
					<label for="label">카테고리</label>
				<select id="bCategory" class="bCategory" name="bct_no">
					<option value="" selected="selected">대분류</option>
				</select>
				<select id="mCategory" class="mCategory" name="mct_no">
					<option value="" selected="selected">중분류</option>
				</select>
				
				<select id="sCategory" class="sCategory" name="sct_no">
					<option value="" selected="selected">소분류</option>
<%-- 					<c:forEach items="${cate }" var="i"> --%>
<%-- 						<option value="${i.sct_no }">${i.sct_name}</option> --%>
<%-- 					</c:forEach> --%>
				</select>
				</div>
<!-- 				<div class="product_label"> -->
<!-- 					<label for="label">대분류</label> -->
<!-- 					<input type="text" class="form-control" id="label" name="bct_no" > -->
<!-- 				</div> -->
<!-- 				<div class="product_label"> -->
<!-- 					<label for="label">중분류</label> -->
<!-- 					<input type="text" class="form-control" id="label" name="mct_no" > -->
<!-- 				</div> -->
<!-- 				<div class="product_label"> -->
<!-- 					<label for="label">소분류</label> -->
<!-- 					<input type="text" class="form-control" id="label" name="sct_no" > -->
<!-- 				</div> -->
				<div class="product_label">
					<label for="label">브랜드</label>
					<input type="text" class="form-control" id="label" name="b_no" >
				</div>
				<div class="product_label">
					<label for="label">상품이름</label>
					<input type="text" class="form-control" id="label" name="p_name" >
				</div>
<!-- 				<div class="product_label"> -->
<!-- 					<label for="label">상품이미지</label> -->
<!-- 					<input type="text" class="form-control" id="label" name="p_img" > -->
<!-- 				</div> -->
				<div class="product_label">
					<div class="form-control" id=label name="p_img" >
						<label for="label">상품이미지(파일경로)</label>
					</div>
					<div class="form_section_content">
						<input type="file" multiple="multiple" id="fileItem" name="uploadFile" style="height: 30px;">
						<div id="uploadResult"></div>
					</div>
				</div>
				<div class="product_label">
					<label for="label">상품가격</label>
					<input type="text" class="form-control" id="label" name="p_price" >
				</div>
				<div class="product_label">
					<label for="label">상품총수량</label>
					<input type="text" class="form-control" id="label" name="p_total" >
				</div>
				<div class="product_label">
					<label for="label">상품할인율</label>
					<input type="text" class="form-control" id="label" name="p_discount" >
				</div>
				<div class="product_label">
					<label for="label">상품별점</label>
					<input type="text" class="form-control" id="label" name="p_star" >
				</div>
				<div class="product_label">
					<label for="label">상품질문</label>
					<input type="text" class="form-control" id="label" name="p_question" >
				</div>
				<div class="product_label">
					<label for="label">상품답변</label>
					<input type="text" class="form-control" id="label" name="p_answer" >
			</div>
			<button>등록</button>
		</form>
	</div>
	
<script>
	//컨트롤러에서 데이터 받기
	var bCateJsonData = JSON.parse('${bcate}'); // 쌍다옴표 넣으면 에러생김
	var mCateJsonData = JSON.parse('${mcate}');
	var sCateJsonData = JSON.parse('${scate}');
	
	console.log("bCateJsonData : " , bCateJsonData);
	console.log("mCateJsonData : " , mCateJsonData);
	console.log("sCateJsonData : " , sCateJsonData);
	
	
	let bCateArray = new Array();
	let mCateArray = new Array();
	let sCateArray = new Array();
	let bCateObj = new Object();
	let mCateObj = new Object();
	let sCateObj = new Object();
	let bCateSelect = $(".bCategory");  // <select> 클래스명 
	let mCateSelect = $(".mCategory");
	let sCateSelect = $(".sCategory");
	
	//카테고리 배열 초기화 메서드 (대분류)
	function makeBCateArray(obj, array, bCateJsonData, bct_no) {
		for (let i = 0; i < bCateJsonData.length; i++) {
			if (bCateJsonData[i].bct_no == bct_no) {
				obj = new Object();
				obj.bct_no = bCateJsonData[i].bct_no;
				obj.bct_name = bCateJsonData[i].bct_name;
				
				array.push(obj);
			}
		}
	}

	// 중분류
	function makeMCateArray(obj, array, mCateJsonData, mct_no) {
		for (let i = 0; i < mCateJsonData.length; i++) {
			if (mCateJsonData[i].mct_no == mct_no) {
				obj = new Object();
				obj.bct_no = mCateJsonData[i].bct_no;
				obj.mct_no = mCateJsonData[i].mct_no;
				obj.mct_name = mCateJsonData[i].mct_name;
				obj.bct_overlap = mCateJsonData[i].bct_overlap;
				
				array.push(obj);
			}
		}
	}

	function makeSCateArray(obj, array, sCateJsonData, sct_no) {
		for (let i = 0; i < sCateJsonData.length; i++) {
			if (sCateJsonData[i].sct_no == sct_no) {
				obj = new Object();
				obj.mct_no = sCateJsonData[i].mct_no;
				obj.sct_no = sCateJsonData[i].sct_no;
				obj.sct_name = sCateJsonData[i].sct_name;
				
				array.push(obj);
			}
		}
	}

	// 배열 초기화
	// makeBCateArray(bCateObj, bCateArray, bCateJsonData, 1);
	// makeBCateArray(bCateObj, bCateArray, bCateJsonData, 2); ... ~ 10까지

	
	
	for (let i = 1; i <11; i++ ) {
		makeBCateArray(bCateObj, bCateArray, bCateJsonData, i);
	}

	// makeMCateArray(mCateObj, mCateArray, mCateJsonData, 1);
	// makeMCateArray(mCateObj, mCateArray, mCateJsonData, 2); ... ~ 15까지

	for (let i = 1; i <16; i++ ) {
		makeMCateArray(mCateObj, mCateArray, mCateJsonData, i);
	}

	for (let i = 1; i <51; i++ ) {
		makeSCateArray(sCateObj, sCateArray, sCateJsonData, i);
	}

		// 대분류 <option> 태그
		for (let i=0; i < bCateArray.length; i++) {
			bCateSelect.append("<option value='" + bCateArray[i].bct_no+"'>" + bCateArray[i].bct_name + "</option>");
		}

		
		// 중분류 <option> 태그
		
		$(bCateSelect).on("change", function(){
			
				let selectValB = $(this).find("option:selected").val();
// 				console.log("selectValB : ", selectValB);
// 				console.log("mCateArray : " , mCateArray);
				mCateSelect.children().remove();
				mCateSelect.append("<option value='none'>중분류</optoin>");
				
				for(let i=0; i < mCateArray.length; i++) {
					
		//	 		console.log("mCateArray[i].bct_overlap : " , mCateArray[i].bct_overlap);
					if(selectValB.indexOf(mCateArray.bct_overlap))  {
		//	 			console.log("mCateArray[i].bct_no : " , mCateArray[i].bct_no + ", mCateArray[i].bct_overlap : " , mCateArray[i].bct_overlap);
						mCateSelect.append("<option value='" + mCateArray[i].mct_no+"'>" + mCateArray[i].mct_name + "</option>");
					}
				}
		
		});
		
		$(mCateSelect).on("change", function(){
			let selectValM = $(this).find("option:selected").val();
			console.log("selectValM : ", selectValM);
			console.log("sCateArray : " , sCateArray);
			sCateSelect.children().remove();
			sCateSelect.append("<option value='none'>소분류</optoin>");
			
			for(let i=0; i < sCateArray.length; i++) {
//		 			if(selectValM == mCateArray[i].bct_no)  { 
						sCateSelect.append("<option value='" + sCateArray[i].sct_no+"'>" + sCateArray[i].sct_name + "</option>");
//		 			}
					
				}
			});
		
		
</script>
<script>		

		// // ------- 파일 업로드 --------
		
		
		$("input[type='file']").on("change", function(e) {
			
		 	// 이미지 존재시 삭제
		 	if($(".imgDeleteBtn").length > 0) {
		 		deleteFile();
		 	}
			
		 	
		 	alert ("동작");
			
		 	let formData = new FormData(); // FormData 객체에 데이터를 추가하는 방법은 FormData.append(key, value) 메서드를 사용
		 	// 파라미터 key의 경우 추가해줄 데이터의 변수를 작성한다고 생각하면 된다.
		 	// <input> name 과 Controller의 url 매핑메서드의 매개변수 이름과 동이하게 해주었듯이, key와 추후 추가할 url 매핑 메서드의 매개변수명 동일해야 한다,
		 	let fileInput = $('input[name="uploadFile"]');
		 	let fileList = fileInput[0].files;
		 	let fileObj = fileList[0];
		 	
		 	if (!fileCheck(fileObj.name, fileObj.size)) {
		 		return false;
		 	}
// 		 	alert("통과");
			
		 	console.log("fileList : " , fileList) // [object FileList]
		 	console.log("fileObj : " , fileObj);
		 	console.log("fileName : " + fileObj.name);
		 	console.log("fileSize : " + fileObj.size);
		 	console.log("fileType(MimeType) : " + fileObj.type);
			
// 		 	formData.append("uploadFile", fileObj); // 파일이 한개일 때
		 	console.log("formData : " , formData);
			
			for (let i=0; i<fileList.length; i++) {
				formData.append("uploadFile", fileList[i]); // 파일이 여러개 일떄	
			}
		
			
		 	$.ajax({
		 		url: "uploadAjaxAction.do", // 서버로 보낼 url
		 		processData : false, // processData랑 contentType false처리해야만 서버 전송
		 		contentType : false,
		 		data : formData,
		 		type : 'post',
		 		dataType : 'json',
		 		success : function(result) {
		 			console.log("result : " , result);
		 			console.log("result : " , result.result.body);
		 			showUploadImage(result.result.body);
// 		 			console.log("showUploadImage(result) : " , showUploadImage(result));
		 			alert("성공");
		 		},
		 		error : function(request,status,error) {
		 			console.log("이미지 파일이 아닙니다");
		 			console.log(" code : " + request.status + " message : " + request.responseText + " error : " + error);
	 	 			alert("code : " + request.status + " message : " + request.responseText + " error " + error);
		 		}
				
		 	});
			
		});
			
		
		let regex = new RegExp("(.*?)\.(jpg|png)$");
		let maxSize = 1048576; // 1MB
		
		function fileCheck(fileName, fileSize) {
			if(fileSize >= maxSize){
				alert("파일 사이즈 초과");
				return false;
			}
				  
			if(!regex.test(fileName)){
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			
			return true;		
		}	
		
			
		 	// 이미지 출력
		 	function showUploadImage(uploadResultArr) {
		 		
		 		// 전달받은 데이터 검증
		 		if (!uploadResultArr || uploadResultArr.length == 0) {
		 			return;
		 		}
		 		//let uploadResult = $("#uploadResult");
		 		let uploadResult = document.getElementById("uploadResult");
		 		console.log("uploadResult : " , uploadResult);
		 		console.log("uploadResultArr : " , uploadResultArr);
		 		console.log("uploadResultArr[0] : " , uploadResultArr[0]);
		 		console.log("uploadResultArr[1] : " , uploadResultArr[1]);
		 		console.log("uploadResultArr[2] : " , uploadResultArr[2]);
		 		console.log("uploadResultArr[3]: " , uploadResultArr[3]);
		 		
		 		let obj = uploadResultArr[0]; // 배열의 첫번재값 
		 		
// 		 		for (let i = 0; i < uploadResultArr.length; i++) {
// 		 			obj.append("uploadResultArr", uploadResultArr[i]) 
// 		 		}
		 		
		 		console.log("obj : " , obj);
// 				console.log(obj);
		 		
		 		// 데이터베이스 저장시 오리지널 경로로 저장
		 		let OriFileCallPath = obj.p_img;
// 		 		console.log("OriFileCallPath: "  + OriFileCallPath);
	
		 		
		 		let str = "";
				
		 		let fileCallPath = encodeURIComponent(obj.p_img);
// 		 		console.log("fileCallPath : " + fileCallPath);
				
		 		str += "<div id = result_card>";
		 		str += "<img src='display.do?fileName=" + fileCallPath +"'>";
		 		str += "<div class='imgDeleteBtn' data-file='"+ fileCallPath +"'>x</div>";
		 		str += "</div>";
		 		str += "<input type='hidden' name='p_img' value='"+OriFileCallPath+"'>";
				
		 		uploadResult.innerHTML = str;
			
		 	}

			
		 	function deleteFile() {
		 	let targetFile = $(".imgDeleteBtn").data("file");
		 	let targetDiv = $("#result_card");
			
		 	$.ajax({
		 		url: "deleteFile.do",
		 		data : {fileName : targetFile},
		 		dataType : 'text',
	 			type : 'POST',
		 		success : function(success) {
		 			console.log("success: " + success);
		 			console.log("success: " + success.body);
		 			alert("삭제성공");
					
		 			// x버튼 클릭시 imgDeleteBtn 부분을 없애고 파일 업로드 input 부분을 초기화한다.
		 			targetDiv.remove();
		 			$("input[type='file']").val("");
		 		},
		 		error : function(fail) {
		 			console.log(fail);
		 			alert("파일을 삭제하지 못했습니다.");
		 		}
				
		 		})
			
		 	}


		 	// 이미지 삭제 버츤 동작
		 	$("#uploadResult").on("click", ".imgDeleteBtn", function(e) {
		 		deleteFile();
			
		 	});
		
			
		
	
	
	

</script>	
	

	
</body>
</html>