package com.chewy.fwd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chewy.fwd.service.RegisterService;
import com.chewy.fwd.vo.MemberVo;

@Controller
public class Registercontroller {

	@Autowired
	private RegisterService registerService;
	
	// 회원 가입 페이지
	@RequestMapping(value="register.do", method = RequestMethod.GET)
	public String registerPage() {
		System.out.println("회원가입 페이지");
		
		return "register";
	}
	
	// 회원 가입 인서트
	@RequestMapping(value="register2.do", method = RequestMethod.POST)
	public String insertRegister(MemberVo memberVo, Model model) throws Exception{
		System.out.println(memberVo.getM_name());
		System.out.println(memberVo);
		
		registerService.insertRegister(memberVo);
		System.out.println(memberVo.getM_password());
		
		return "redirect:test.do";
	}
	
}
