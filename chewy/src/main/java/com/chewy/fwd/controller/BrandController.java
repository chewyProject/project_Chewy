package com.chewy.fwd.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.chewy.fwd.service.BrandService;
import com.chewy.fwd.vo.CategoryVo;

@Controller
public class BrandController {
	
	@Autowired
	private BrandService brandService;
	
	// 브랜드 리스트
	@RequestMapping(value="popularBrand.do", method = RequestMethod.GET)
	public String popularBrand(Model model, HttpServletRequest req) {
		
		int ct = Integer.parseInt(req.getParameter("ct"));
		
		try {
			
			for(int i='a'; i<='z'; i++) {
				
				String alpha = Character.toString(i);
				
				model.addAttribute(alpha, brandService.alphabet(alpha, ct));
				
			}
			
			model.addAttribute("title", brandService.bigct(ct));
			model.addAttribute("popular", brandService.popular(ct));
			
			return "/brand/popularBrand";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "/brand/popularBrand";
	}
	
	// header shop dropdown brand & AD
	@ResponseBody
	@RequestMapping(value="brandList.do", method = RequestMethod.POST)
	public ModelAndView test2(HttpServletRequest req) throws Exception{
		
		int cate = Integer.parseInt(req.getParameter("ct"));
		
		CategoryVo categoryVo = new CategoryVo();
		
		ModelAndView mv = new ModelAndView();
		
		try {
			categoryVo.setBct_no(cate);
			categoryVo.setBct_name(brandService.bctName(cate));
			
			mv.setViewName("jsonView");
			
			if( (cate >= 1 && cate <4) || (cate == 10) ) {
				mv.addObject("food",brandService.foodSelect(categoryVo));
				mv.addObject("treats", brandService.treatsSelect(categoryVo));
				mv.addObject("supplies", brandService.supSelect(categoryVo));
			} else if (cate == 4 || cate == 6) {
				mv.addObject("shopall", brandService.foodSelect(categoryVo));
				mv.addObject("supplies", brandService.supSelect(categoryVo));
				
			} else if (cate == 5 || cate == 8) {
				mv.addObject("first", brandService.shopS(categoryVo));
				mv.addObject("second", brandService.foodSelect(categoryVo));
				mv.addObject("supplies", brandService.supSelect(categoryVo));
			} else if (cate == 7 || cate == 9) {
				mv.addObject("shopall", brandService.shopall(categoryVo));
			}
			
			
			
			mv.addObject("ad", brandService.bctAd(cate));
			mv.addObject("brand", brandService.popular(cate));
			
			return mv;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mv;
	}
}
