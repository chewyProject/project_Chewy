package com.chewy.fwd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chewy.fwd.service.CartService;
import com.chewy.fwd.vo.CartVo;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="cart.do", method = RequestMethod.GET)
	public String cartList(CartVo cartVo, HttpServletRequest req, Model model) throws Exception {
		List<CartVo> cartList = null;
		
		HttpSession session = req.getSession();
		int number = (int) session.getAttribute("m_no");
		cartVo.setM_no(number);	// cartVo 회원 번호에 세션이 있는 값을 저장
		
		try {
			// 로그인 확인
			if(cartService.memberCheck(cartVo) == 200 ) {
				
				cartList = cartService.saveMemeberInfo(cartVo); // 카트 Vo 정보 담기
				
				for(int i=0; i<cartList.size(); i++) {
					cartList.get(i).setProductVo(cartService.selectCartList(cartList.get(i).getP_no()));
					
					System.out.println(cartList.get(i).getProductVo().get(0).getP_name());
				}
				
				model.addAttribute("list", cartList);
				
//				for(int i=0; i<cartList.size(); i++) {
//					cartList.get(i).setProductVo(cartService.selectCartList(cartList.get(i).getProductVo()));
//				}
				
//				model.addAttribute("cartList", productVo);  // 카트 상품 목록 저장
//				model.addAttribute("total", cartVo);
				return "/cart/cart";
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "/cart/cart";
	}
	
}
