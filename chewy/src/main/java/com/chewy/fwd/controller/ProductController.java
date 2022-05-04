package com.chewy.fwd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chewy.fwd.service.ProductService;
import com.chewy.fwd.vo.ProductVo;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="product.do", method = RequestMethod.GET)
	public String product() {
		return "product/product";
	}
	
	@RequestMapping(value="detail.do", method = RequestMethod.GET)
	public String detailProduct(ProductVo productVo, Model model) throws Exception{
		List<ProductVo> product = productService.productInfo(productVo);
		
		product.get(0).setImg(productService.productImg(product.get(0).getP_no()));
		
		model.addAttribute("productInfo", product);
		
		return "/product/detail";
	}

}
