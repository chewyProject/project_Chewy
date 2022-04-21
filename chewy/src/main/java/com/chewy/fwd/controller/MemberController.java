package com.chewy.fwd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chewy.fwd.service.MemberService;
import com.chewy.fwd.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 이메일 확인
	@RequestMapping(value="email.do", method = RequestMethod.GET)
	public String PwEmail() {
		return "/changePw/email";
	}
	
	@RequestMapping(value="email.do", method = RequestMethod.POST)
	public String PwEmail(MemberVo memberVo, RedirectAttributes rttr) throws Exception{
		
		List<MemberVo> member = memberService.selectEmail(memberVo);
		int memberNo = memberService.selectNo(memberVo);
		
		try {
			if(member.size() > 0) {
				rttr.addFlashAttribute("no", memberNo);
				
				return "redirect:password.do";
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		 
		return "/changePw/email";
	}
	
	// 비밀번호 변경
	@RequestMapping(value="password.do", method = RequestMethod.GET)
	public String Pwchange() {
		return "/changePw/password";
	}
	
	@RequestMapping(value="password.do", method = RequestMethod.POST)
	public String Pwchange(MemberVo memberVo) throws Exception {
		
		int status = memberService.changePw(memberVo);
		
		try {
			if(status == 200)
			return "redirect:login.do";
						
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return "/changePw/password";
	}
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
}
