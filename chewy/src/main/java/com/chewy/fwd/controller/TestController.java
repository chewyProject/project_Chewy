package com.chewy.fwd.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.chewy.fwd.service.TestService;
import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.TestVo;

@Controller
public class TestController {
	
	private static final String SAVE_PATH = "C:\\project-chewy\\chewy\\src\\main\\webapp\\images\\brand";
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value="test.do", method = RequestMethod.GET)
	public String test(TestVo testVo, Model model) throws Exception{
		
		System.out.println("컨트롤러 확인");
		
		List<TestVo> test =  testService.test();
		model.addAttribute("test", test);
		
		System.out.println("test : " + test);
		return "test";
		
//		 commit test
	}
	
	
	@RequestMapping(value="brand.do", method = RequestMethod.GET)
	public String addBrand(){
		
		return "addBrand";
	}	
	
	// 브랜드 이름 및 이미지 파일 저장
	@RequestMapping(value="brand.do", method = RequestMethod.POST)
	public String addBranD(BrandVo brandVo, MultipartFile file) {

		String title = null;
		
		try {
			
			if(!file.isEmpty()) {
				title = file.getOriginalFilename();
				
				brandVo.setB_logo("../../images/brand/" + title);
				
				file.transferTo(new File(SAVE_PATH + "\\" + title));
			} else {
				brandVo.setB_logo(null);
			}
			
			testService.addBrand(brandVo);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "addBrand";
	}
	
}
