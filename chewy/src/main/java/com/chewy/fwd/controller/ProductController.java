package com.chewy.fwd.controller;


import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.chewy.fwd.service.ProductService;
import com.chewy.fwd.vo.CategoryVO;
import com.chewy.fwd.vo.ProductVO;
import com.chewy.fwd.vo.Search;

import net.coobird.thumbnailator.Thumbnails;
import net.sf.json.JSONArray;

@Controller
@SessionAttributes("product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	// 전체상품조회(get)
//	@RequestMapping(value="/productList.do", method = RequestMethod.GET)
//	public String productListView(ProductVO productVO, Model model) throws Exception {
////		List<ProductVO> product =  productService.selectProductList(productVO);
////		System.out.println("product : " + product);
////		model.addAttribute("product", product);
//		
//		System.out.println("전체상품뷰");
//		return "product/productList";
//	}
	
	
//  글목록,페이징, 검색
	@RequestMapping(value ="productList.do")
	public String testListDo(Model model
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "p_name") String searchType
			, @RequestParam(required = false) String keyword
			, @ModelAttribute("search") Search search) throws Exception {
		
		// 검색
		model.addAttribute("search", search);
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		// 전체 개시글 갯수
		int listCnt = productService.getProductListCnt(search);
		
		// 검색 후 페이지
		search.pageInfo(page, range, listCnt);
		
		//페이징
		model.addAttribute("pagination", search);
		
		// 게시글 화면 출력
		model.addAttribute("list", productService.selectProductList(search));  // 
		
		System.out.println("model.addAttribute(\"list\", productService.selectProductList(search)); : " + model.addAttribute("list", productService.selectProductList(search)));
		return "product/productList";
	}
	
	
	// 상품등록화면조회(get)
	@RequestMapping(value="/insertProduct.do", method = RequestMethod.GET)
//	public String insertProductView(@ModelAttribute("product") ProductVO productVO) throws Exception {
	// @ModelAttribute("product")를 붙이니까 오류가 난다.
	public String insertProductView(Model model) throws Exception {
		System.out.println("상품등록뷰");
		
		List<CategoryVO> bcate = null;
		List<CategoryVO> mcate = null;
		List<CategoryVO> scate = null;
		
		bcate = productService.bCategoryList();
		mcate = productService.mCategoryList();
		scate = productService.sCategoryList();
		
		model.addAttribute("bcate", JSONArray.fromObject(bcate));	
		model.addAttribute("mcate", JSONArray.fromObject(mcate));
		model.addAttribute("scate", JSONArray.fromObject(scate));

		System.out.println("bcate : " + bcate + " mcate : " + mcate + " scate : " + scate);
		
		// vo값 들어왔는지 확인할 때 jsp 파일안 input태그에 name값이 입력되어있지않으면 매핑이 안된다.
		
//		productService.insertProduct(productVO);
//		System.out.println("productService: " + productService);
//		System.out.println("insertProduct(productVO) 값 설정 후");
		
		return "product/insertProduct";
	}
	
	// 상품등록(post)
	@RequestMapping(value="/insertProduct.do", method = RequestMethod.POST)
	public String insertProduct(ProductVO productVO) throws Exception {
		System.out.println("상품등록 post 성공");
		productService.insertProduct(productVO);
		System.out.println("productVO : " + productVO);
		
		
		System.out.println("상품등록성공");
		return "redirect:productList.do";
	}
	
//	----------------------------------------------------------------------------------
	
	// 상품상세조회뷰(get) 클라이언트 입장
	@RequestMapping(value="/product.do", method = RequestMethod.GET)
	public String productView(ProductVO productVO, Model model) throws Exception {
		System.out.println("상세상품뷰");
		System.out.println("상세상품 뷰 productVO : " + productVO); // <- vo에 null값 
		ProductVO pvo =  productService.selectProduct(productVO);
		System.out.println("상세상품 뷰 productVO : " + pvo); // <- vo에 값 저장
		
		model.addAttribute("product", pvo); // 모델 객체 사용 -> view로 전달
		return "product/product";
	}
	
	// 상품수정화면조회(get)
	@RequestMapping( value = "/updateProduct.do", method = RequestMethod.GET)
	public String updateProductView(ProductVO productVO, Model model) throws Exception {
		//public String updateProductView(@ModelAttribute("product") ProductVO productVO, Model model) throws Exception {
		System.out.println("상품수정뷰");
		return "product/updateProduct";
		
	}
	
	// 상품수정(post)
	@RequestMapping(value = "/updateProduct.do", method = RequestMethod.POST)
//	@ResponseBody
	public String updateProduct(@ModelAttribute("product") ProductVO productVO, Model model, SessionStatus status) throws Exception {
		System.out.println("-------productVO : " + productVO);
		productService.updateProduct(productVO);
		System.out.println("-------productVO : " + productVO);
		System.out.println("상품수정성공");
//		status.setComplete();
		return "redirect:product/productList.do";
		
	}
	
	// 상품 삭제
	@RequestMapping(value = "/deleteProduct.do", method = RequestMethod.GET)
	public String deleteProduct(@ModelAttribute("product") ProductVO productVO, Model model) throws Exception {
		System.out.println("상품삭제폼");
		System.out.println("~~~~~productVO : " + productVO.getP_no());
		productService.deleteProduct(productVO);
		System.out.println("~~~~~productVO : " + productVO);
		System.out.println("상푹삭제성공");
	
		return "redirect:product/productList.do";
	}
	
	
	//----------------------------------------------------------------------------------------------------
	// 카테고리별 상품 조회
	
	@RequestMapping(value = "categoryList.do", method = RequestMethod.GET)
	public String category (CategoryVO categoryVO, Model model) throws Exception {
		System.out.println("카테고리별 상품 조회");
		System.out.println("categoryVO : " + categoryVO);
		
//		List<CategoryVO> category =  productService.selectCategoryList(categoryVO);
//		System.out.println("category : " + category);
		
		return "productList.do";
	}
	
	
	//--------------------------------------------------------------------------------------
	// 파일 업로드 (멀티파트)
	
	@PostMapping(value = "/uploadAjaxAction.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//	@ResponseBody
//	public void uploadAjaxActionPOST(MultipartFile[] uploadFile) {
//	public ResponseEntity<List<ProductVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
	public ModelAndView uploadAjaxActionPOST(MultipartFile[] uploadFile, @ModelAttribute("productVO") ProductVO productVO) {
		
//		// 이미지 파일 체크
//		for (MultipartFile multipartFile : uploadFile) {
//			File checkfile = new File(multipartFile.getOriginalFilename());
//			String type = null;
//			
//			try {
//				type = Files.probeContentType(checkfile.toPath());
//				System.out.println("MIME TYPE : "  +type);
//				
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//			
//			if (!type.startsWith("image")) {
//				
//				//List<AttachImageVO> list = null;
//			}
//			
//			
//		}
		String uploadFolder = "c:\\upload";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);
		
		
		File uploadPath = new File(uploadFolder, datePath);
		
		
		// 폴더 생성  경로 -> c:upload:temp:년:월:일 , 해당 날짜의 파일이 존재하는지 확인하고 없으면 새로운 파일 생성
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		System.out.println("list : " + list);
		
		
		for (MultipartFile multipartFile : uploadFile ) {
			
			// 이미지 정보 객체
			ProductVO vo = new ProductVO();
			
			// 파일이름
			String uploadFileName = multipartFile.getOriginalFilename();
//			vo.setP_img(uploadFileName);
			

			// uuid 적용 파일 이름   /  uuid란 범용 고유 식별자
			String uuid = UUID.randomUUID().toString();
			
			uploadFileName = uuid + "_" + uploadFileName; // 그냥 파일 이름
			
			// 파일 위치, 파일 이름을 합친 File 객체
			File saveFile = new File(uploadPath, uploadFileName);
			 
			// 파일 저장
			try {
				multipartFile.transferTo(saveFile);
				
//				// 방법1
//				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName); // 파일 썸네일 이름
////				vo.setThumbnail(datePath.toString() + "s+" + uploadFileName);
////				vo.setPfile(datePath.toString() + "/s_" + uploadFileName);
//				vo.setP_img(datePath.toString() + "/s_" + uploadFileName);
//				BufferedImage bo_image = ImageIO.read(saveFile);  //buffered original image
//				
//				
//				// 비율 
//				double ratio = 3;
//				
//				// 넓이 , 높이
//				int width = (int)(bo_image.getWidth() / ratio); // 형변환
//				int height  = (int)(bo_image.getHeight() / ratio); // 형변환
//				
//				
//				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
//				Graphics2D graphic = bt_image.createGraphics();
//				graphic.drawImage(bo_image, 0, 0, width, height, null);
//				// 1. 그려놓고자 하는 이미지  2. x값  3. y값  4. 넓이 5. 높이 6. ImageObserver 객체(이미지 업데이트 시키는 역할  일반적으로 null)
//				
//				ImageIO.write(bt_image, "jpg", thumbnailFile);
				
				
				// 방법 2
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);  //buffered original image
				vo.setP_img(datePath.toString() + "/s_" + uploadFileName);
				
				
				// 비율
				double ratio = 3;
				
				// 넓이 , 높이
				int width = (int)(bo_image.getWidth() / ratio); // 형변환
				int height  = (int)(bo_image.getHeight() / ratio); // 형변환
				
				Thumbnails.of(saveFile)
				.size(160, 160)
				.toFile(thumbnailFile);
				
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			list.add(vo);
		} // for
		
		ResponseEntity<List<ProductVO>> result = new ResponseEntity<List<ProductVO>>(list, HttpStatus.OK);
		
		ModelAndView mv = new ModelAndView("jsonView");
		mv.addObject("result", result);

		System.out.println("mv : " + mv);
		return mv;
	}
	
	// 이미지 화면 출력
	@GetMapping("/display.do")
//	@ResponseBody
	public ResponseEntity<byte[]> getImage(String fileName) {
//	public ModelAndView getImage(String fileName) {
		
		System.out.println("getImage()...............");
		System.out.println(fileName);
		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			
			header.add("content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
//		ModelAndView mv = new ModelAndView("jsonView");		
//		mv.addObject("result", result);
		
		return result;
	}
	
	// 이미지 파일 삭제
		
	@PostMapping("/deleteFile.do")
//	@ResponseBody
//	public ResponseEntity<String> deleteFile(String fileName) {
	public ModelAndView deleteFile(String fileName) {
		File file = null;
		
		System.out.println("deleteFiledo 파일이름 : " + fileName);
		
		ResponseEntity<String> fail = new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
		ResponseEntity<String> success = new ResponseEntity<String>("success", HttpStatus.OK);
		ModelAndView mv = new ModelAndView("jsonView");	
		
		try {
			
			// 썸네일 파일 삭제
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();
			
			// 원본 파일 삭제
			String originFileName = file.getAbsolutePath().replace("s_", "");
			file = new File(originFileName);
			file.delete();
		
		} catch(Exception e) {
			e.printStackTrace();
			
			mv.addObject("fail", fail);
		}
		mv.addObject("success", success);
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
			
	
	
